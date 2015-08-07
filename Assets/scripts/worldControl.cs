using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class worldControl : MonoBehaviour {
	public GameObject box;
	private Rigidbody boxPhys;
	public float pushForce;
	private int pushDelayCount = 0;
	private bool tilted = false;
	private Vector3 snowballDest;
	public int pushDelayTime = 200;
	public float tiltForce;
	public float returnForce;
	
	void Start () {
		boxPhys = box.GetComponent<Rigidbody>();
	}

	void Update(){
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit rayHit = new RaycastHit();
		if(Physics.Raycast (ray, out rayHit, 1000f) && Input.GetMouseButtonDown(0)){
			snowballDest = rayHit.point;
			//check x or z position, if above a certain number, Destroy
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
