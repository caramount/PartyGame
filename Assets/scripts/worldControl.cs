﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class worldControl : MonoBehaviour {
	public GameObject box;
	public Transform snowball;
	public Transform stage; //terrain of the level
	private Rigidbody boxPhys;
	public float pushForce;
	private int pushDelayCount = 0;
	private bool tilted = false;
	private Vector3 snowballDest;
	public float snowballSpeed;
	public int pushDelayTime = 200;
	public float tiltForce;
	public float returnForce;

	private GameObject snowballX;
	private GameObject snowballZ;
	public float ballSpawnOffsetX;
	public float ballSpawnOffsetZ;


	void Start () {
		boxPhys = box.GetComponent<Rigidbody>();
	}

	void Update(){
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit rayHit = new RaycastHit();
		if(Physics.Raycast (ray, out rayHit, 1000f) && Input.GetMouseButtonDown(0)){
			snowballDest = rayHit.point;
			if(snowballX == null && snowballZ == null){
				snowballX = Instantiate (snowball,new Vector3(stage.position.x - ballSpawnOffsetX,
				                                              stage.position.y + 1f,
				                                              snowballDest.z),
				                         Quaternion.identity);
				snowballZ = Instantiate (snowball,new Vector3(snowballDest.x,
				                                              stage.position.y + 1f,
				                                              stage.position.z + ballSpawnOffsetZ),
				                         Quaternion.identity);
			}
		}
		if(snowballX != null){
			if(snowballX.transform.position.x > (stage.position.x + ballSpawnOffsetX)){
				Destroy (snowballX.gameObject)
			}
			if(snowballZ.transform.position.z > (stage.position.z - ballSpawnOffsetZ)){
				Destroy (snowballZ.gameObject)
			}
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
