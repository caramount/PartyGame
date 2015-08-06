using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class worldControl : MonoBehaviour {
	public GameObject box;
	private Rigidbody boxPhys;
	public float tiltForce;
	public float returnForce;
	
	void Start () {
		boxPhys = box.GetComponent<Rigidbody>();
	}
	void Update () {
		Debug.Log (transform.eulerAngles.x);
	}

	void FixedUpdate () {
		if (transform.eulerAngles.x < 1f || transform.eulerAngles.x > 359f){
			if (Input.GetKeyDown (KeyCode.W)){
				boxPhys.AddTorque (tiltForce,0f,0f);
			}
			if(Input.GetKeyDown (KeyCode.S)){
				boxPhys.AddTorque (-tiltForce,0f,0f);
			}
		}

		//CLAMPING
		float xRotation = transform.eulerAngles.x;
		bool tiltedRight = false;
		if (xRotation > 180) {
			tiltedRight = true;
			xRotation = 360 - xRotation;
		}
		xRotation = Mathf.Clamp(xRotation, 0, 10);
		if (tiltedRight) 
			xRotation = 360 - xRotation;
		transform.rotation = Quaternion.Euler (new Vector3(xRotation,0f,0f)); 

		//return tilt to 0
		if (transform.eulerAngles.x > 1f && transform.eulerAngles.x < 180f)
			boxPhys.AddTorque (-returnForce,0f,0f);
		if(transform.eulerAngles.x < 359f && transform.eulerAngles.x > 180f)
			boxPhys.AddTorque (returnForce,0f,0f);
	}
}
