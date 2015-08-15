using UnityEngine;
using System.Collections;

public class VehicleControl : MonoBehaviour {

	public Rigidbody p1body;
	public Rigidbody p2body;
	public float moveStrength = 300;
	public bool twoCharacters = false;


	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.W))
		{
			p1body.AddForce(transform.forward * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.S))
		{
			p1body.AddForce(-transform.forward * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.A))
		{
			p1body.AddForce(-transform.right * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.D))
		{
			p1body.AddForce(transform.right * moveStrength);
		}
		if (twoCharacters)
		{
			if (Input.GetKeyDown(KeyCode.I))
			{
				p2body.AddForce(transform.forward * moveStrength);
			}
			if (Input.GetKeyDown(KeyCode.K))
			{
				p2body.AddForce(-transform.forward * moveStrength);
			}
			if (Input.GetKeyDown(KeyCode.J))
			{
				p2body.AddForce(-transform.right * moveStrength);
			}
			if (Input.GetKeyDown(KeyCode.L))
			{
				p2body.AddForce(transform.right * moveStrength);
			}
		}
	}
}
