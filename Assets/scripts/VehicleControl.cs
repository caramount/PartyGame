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
		if (Input.GetKeyDown(KeyCode.Q))
		{
			p1body.AddForce(transform.forward * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.A))
		{
			p1body.AddForce(-transform.forward * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.O))
		{
			p1body.AddForce(-transform.right * moveStrength);
		}
		if (Input.GetKeyDown(KeyCode.P))
		{
			p1body.AddForce(transform.right * moveStrength);
		}
		if (twoCharacters)
		{
			if (Input.GetKeyDown(KeyCode.F))
			{
				p2body.AddForce(transform.forward * moveStrength);
			}
			if (Input.GetKeyDown(KeyCode.V))
			{
				p2body.AddForce(-transform.forward * moveStrength);
			}
			if (Input.GetKeyDown(KeyCode.N))
			{
				p2body.AddForce(-transform.right * moveStrength);
			}
			if (Input.GetKeyDown(KeyCode.M))
			{
				p2body.AddForce(transform.right * moveStrength);
			}
		}
	}
}
