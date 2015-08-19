using UnityEngine;
using System.Collections;

public class VehicleControl : MonoBehaviour {

	public Rigidbody p1body;
	public Rigidbody p2body;
	public float moveStrength = 300;
	public bool twoCharacters = false;

	public ParticleSystem icePar1;
	public ParticleSystem icePar2;
	public AudioSource icing;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.W))
		{
			p1body.AddForce(transform.forward * moveStrength);
			icing.Play();
		}
		if (Input.GetKeyDown(KeyCode.S))
		{
			p1body.AddForce(-transform.forward * moveStrength);
			icing.Play();
		}
		if (Input.GetKeyDown(KeyCode.A))
		{
			p1body.AddForce(-transform.right * moveStrength);
			icing.Play();
		}
		if (Input.GetKeyDown(KeyCode.D))
		{
			p1body.AddForce(transform.right * moveStrength);
			icing.Play();
			icePar1.Play();
		}
		if (twoCharacters)
		{
			if (Input.GetKeyDown(KeyCode.I))
			{
				p2body.AddForce(transform.forward * moveStrength);
				icing.Play();
			}
			if (Input.GetKeyDown(KeyCode.K))
			{
				p2body.AddForce(-transform.forward * moveStrength);
				icing.Play();
			}
			if (Input.GetKeyDown(KeyCode.J))
			{
				p2body.AddForce(-transform.right * moveStrength);
				icing.Play();
			}
			if (Input.GetKeyDown(KeyCode.L))
			{
				p2body.AddForce(transform.right * moveStrength);
				icing.Play();
				icePar2.Play();
			}
		}
	}
}
