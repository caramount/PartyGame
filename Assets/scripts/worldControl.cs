using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class worldControl : MonoBehaviour {
	public GameObject box; //the parent object that holds all the parts of the terrain
	public Transform stage; //SAME OBJECT as "box"
	//public Transform player; //the player gameobject
	public Camera playerCam; //the camera that follows the player around
	private Rigidbody boxPhys;

	public float pushForce; //the force that pushes players when you left-click
	private int pushDelayCount = 0;

	public int pushDelayTime = 200; //how long terrain player has to wait before he can push again
	public float tiltForce; //force with which terrain tilts
	public float returnForce; //controls how slowly terrain returns to flat
	private bool tilted = false;

	public GameObject snowball; //snowball prefab
	private GameObject snowballX; //horizontal snowball
	private GameObject snowballZ; //vertical snowball
	public float ballSpawnZ; //z at which ball spawns, used for snowballZ ONLY
	public float ballSpawnY; //y at which both balls spawn
	public float ballDestroyZ; //z at which ball self-destructs, used for snowballZ ONLY
	public float snowballSpeed; //speed at which snowballs travel
	private Vector3 snowballDest;


	public AudioSource scrollUpAudio;
	public AudioSource scrollDownAudio;
	public AudioSource snowBallAudio;

	void Start () {
		boxPhys = box.GetComponent<Rigidbody>();
	}

//	void OnDrawGizmos(){
//		Gizmos.color = Color.white;
//		Ray ray = playerCam.ScreenPointToRay(Input.mousePosition);
//		ray.direction *= 1000f;
//		Gizmos.DrawRay(ray);
//	}

	void Update(){
		Ray ray = playerCam.ScreenPointToRay(Input.mousePosition);
		RaycastHit rayHit = new RaycastHit();
		if(Physics.Raycast (ray, out rayHit, 1000f) && Input.GetKeyDown (KeyCode.Mouse1)){
			snowballDest = rayHit.point;
			//Vector3 snowballSpawnX = new Vector3(0f, 0.5f, Vector3.Distance(playerCam.transform.position,
			//                                                                snowballDest));	
			//snowballSpawnX = playerCam.ViewportToWorldPoint(snowballSpawnX);
			//snowballSpawnX.z = snowballDest.z;
			//snowballSpawnX.y = ballSpawnY;
			Vector3 snowballSpawnZ = new Vector3(snowballDest.x,ballSpawnY,ballSpawnZ);
			//if(snowballX == null){
			//	snowballX = (GameObject) 
			//		GameObject.Instantiate (snowball, snowballSpawnX, Quaternion.identity);
			//}
			if(snowballZ == null){
				snowballZ = (GameObject) 
					GameObject.Instantiate (snowball, snowballSpawnZ, Quaternion.identity);
					snowBallAudio.Play ();
			}
		}
		//if(snowballX != null){
		//	//Destroy is x position is at right edge of camera
		//	Vector3 snowballDestroyPointX = 
		//		new Vector3(1f,0.5f, Vector3.Distance(playerCam.transform.position,snowballDest));
		//	if(snowballX.transform.position.x > playerCam.ViewportToWorldPoint(snowballDestroyPointX).x){
		//		Destroy (snowballX.gameObject, 5f);
		//	}
		//	snowballX.transform.position += Vector3.right * snowballSpeed;
		//}

		if(snowballZ != null){
			//Destroy if z position is past stage
			if(snowballZ.transform.position.z < ballDestroyZ){
				Destroy (snowballZ.gameObject, 5f);
			}
			snowballZ.transform.position += Vector3.back * snowballSpeed;

		}

		//move player, for testing only
		//if(Input.GetKey (KeyCode.RightArrow)){
		//	player.position += Vector3.right;
		//}
		//if(Input.GetKey (KeyCode.LeftArrow)){
		//	player.position += Vector3.left;
		//}
		//if(Input.GetKey (KeyCode.DownArrow)){
		//	player.position += Vector3.back;
		//}
		//if(Input.GetKey (KeyCode.UpArrow)){
		//	player.position += Vector3.forward;
		//}

	}

	void FixedUpdate () {
		//terrain shift
		if(pushDelayCount > 0)
			pushDelayCount++;
		if(pushDelayCount == pushDelayTime)
			pushDelayCount = 0;
		if (Input.GetKeyDown(KeyCode.Mouse0)){
			if(pushDelayCount == 0){
				boxPhys.AddForce(-pushForce,0f,0f);
				pushDelayCount++;
			}
		}	

		//tilt if near-flat
		if (transform.eulerAngles.x < .1f || transform.eulerAngles.x > 359.9f){
			if (tilted){
				transform.rotation = Quaternion.identity;
				boxPhys.angularVelocity = Vector3.zero;
				tilted = false;
			}
			if (Input.GetAxis ("Mouse ScrollWheel") > 0){
				boxPhys.AddTorque (-tiltForce,0f,0f,ForceMode.VelocityChange);
				scrollUpAudio.Play ();
			}
			if(Input.GetAxis ("Mouse ScrollWheel") < 0){
				boxPhys.AddTorque (tiltForce,0f,0f,ForceMode.VelocityChange);
				scrollDownAudio.Play ();
			}
		}

		//clamp tilt
		float xRotation = transform.eulerAngles.x;
		bool tiltedRight = false;
		if (xRotation > 180) {
			tiltedRight = true;
			xRotation = 360 - xRotation;
		}
		xRotation = Mathf.Clamp(xRotation, 0f, 15f);
		if (tiltedRight) 
			xRotation = 360 - xRotation;
		transform.rotation = Quaternion.Euler (new Vector3(xRotation,0f,0f)); 

		//return tilt to 0
		if (transform.eulerAngles.x > .1f && transform.eulerAngles.x < 180f){
			boxPhys.AddTorque (-returnForce,0f,0f);
			tilted = true;
		}
		if(transform.eulerAngles.x < 359.9f && transform.eulerAngles.x > 180f){
			boxPhys.AddTorque (returnForce,0f,0f);
			tilted = true;
		}
	}
}
