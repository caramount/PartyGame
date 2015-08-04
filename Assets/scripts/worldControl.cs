using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class worldControl : MonoBehaviour {
	public GameObject box;
	private Rigidbody boxPhys;
	public float vertSpeed = 10f;
	public float horizSpeed = 10f;
	public float rotSpeed = 10f;

	// Use this for initialization
	void Start () {
		boxPhys = box.GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		if (Input.GetKey(KeyCode.W)){
			boxPhys.AddRelativeForce(0f,vertSpeed,0f);
		}
		if (Input.GetKey(KeyCode.S)){
			boxPhys.AddRelativeForce(0f,-vertSpeed,0f);
		}
		if(Input.GetKey (KeyCode.A)){
			boxPhys.AddRelativeForce(-horizSpeed,0,0f);
		}
		if(Input.GetKey (KeyCode.D)){
			boxPhys.AddRelativeForce(horizSpeed,0f,0f);
		}
		if(Input.GetKey (KeyCode.Q)){
			boxPhys.AddRelativeTorque(0f,0f,rotSpeed);
		}
		if(Input.GetKey (KeyCode.E)){
			boxPhys.AddRelativeTorque(0f,0f,-rotSpeed);
		}
	}
}
