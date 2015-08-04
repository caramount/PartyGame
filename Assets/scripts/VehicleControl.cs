using UnityEngine;
using System.Collections;

public class VehicleControl : MonoBehaviour {

	public Rigidbody rbody;
	public float moveStrength;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Q))
		{
			rbody.AddForce(transform.forward * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.P))
		{
			rbody.AddTorque(transform.right * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.LeftShift))
		{
			rbody.AddTorque(transform.forward * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.RightShift))
		{
			rbody.AddForce(-transform.forward * moveStrength);
		}
	}
}
