using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class worldControl : MonoBehaviour {
	public GameObject box;
	public Transform stage; //terrain of the level
	public Camera playerCam;
	private Rigidbody boxPhys;
	public float pushForce;
	private int pushDelayCount = 0;
	private bool tilted = false;
	public int pushDelayTime = 200;
	public float tiltForce;
	public float returnForce;
	public GameObject snowball;
	private GameObject snowballX;
	private GameObject snowballZ;
	public float ballSpawnOffsetX;
	public float ballSpawnOffsetZ;
	private Vector3 snowballDest;
	public float snowballSpeed;
	public Transform player;


	void Start () {
		boxPhys = box.GetComponent<Rigidbody>();
	}

	void OnDrawGizmos(){
		Gizmos.color = Color.white;
		Ray ray = playerCam.ScreenPointToRay(Input.mousePosition);
		ray.direction *= 1000f;
		Gizmos.DrawRay(ray);
	}

	void Update(){
		Ray ray = playerCam.ScreenPointToRay(Input.mousePosition);
		RaycastHit rayHit = new RaycastHit();
		if(Physics.Raycast (ray, out rayHit, 1000f) && Input.GetKeyDown (KeyCode.Space)){
			snowballDest = rayHit.point;
			Vector3 snowballSpawnX = new Vector3(-120f, 19f, snowballDest.z);
			Vector3 snowballSpawnZ = new Vector3(snowballDest.x, 19f, 50f);
			Debug.DrawLine (playerCam.transform.position,snowballSpawnX,Color.yellow,1f);
			if(snowballX == null || snowballZ == null){
				//separate X and Z
				snowballX = (GameObject) 
					GameObject.Instantiate (snowball, snowballSpawnX, Quaternion.identity);
				snowballZ = (GameObject) 
					GameObject.Instantiate (snowball, snowballSpawnZ, Quaternion.identity);
			}
		}
		if(snowballX != null){
			//check x or z position, if above a certain number, Destroy
			if(snowballX.transform.position.x > 150f){
				Destroy (snowballX.gameObject);
			}
			snowballX.transform.position += Vector3.right * snowballSpeed;
		}

		if(snowballZ != null){
			if(snowballZ.transform.position.z < -100f){
				Destroy (snowballZ.gameObject);
			}
			snowballZ.transform.position += Vector3.back * snowballSpeed;
		}

		//move player
		if(Input.GetKey (KeyCode.RightArrow)){
			player.position += Vector3.right;
		}
		if(Input.GetKey (KeyCode.LeftArrow)){
			player.position += Vector3.left;
		}
		if(Input.GetKey (KeyCode.DownArrow)){
			player.position += Vector3.back;
		}
		if(Input.GetKey (KeyCode.UpArrow)){
			player.position += Vector3.forward;
		}

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
			}
			if(Input.GetAxis ("Mouse ScrollWheel") < 0){
				boxPhys.AddTorque (tiltForce,0f,0f,ForceMode.VelocityChange);
			}
		}

		//clamp tilt
		float xRotation = transform.eulerAngles.x;
		bool tiltedRight = false;
		if (xRotation > 180) {
			tiltedRight = true;
			xRotation = 360 - xRotation;
		}
		xRotation = Mathf.Clamp(xRotation, 0f, 10f);
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
