using UnityEngine;
using System.Collections;

public class IceCollision : MonoBehaviour {

	public GameObject P1Ice;
	public GameObject P2Ice;

	public GameObject P1;
	public GameObject P2;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter (Collider c) 
	{

		// now the colliders are finding name, (P1, P2)
		// if we are going to change avatars' name, change here as well
		// or we can use tags 
		//Debug.Log(c.transform.name);

		StartCoroutine(FreezePlayer(c));
		

	}

	IEnumerator FreezePlayer(Collider c)
	{
		GameObject ice;

		// Make Ice Active
		if ( c.transform.name == "P1" ) 
		{
			P1Ice.SetActive(true);
			//ice = (GameObject)Instantiate(P1Ice, P1.transform.position, Quaternion.identity);
		} 
		else //if ( c.transform.name == "P2" ) 
		{
			P2Ice.SetActive(true);
			//ice = (GameObject)Instantiate(P2Ice, P2.transform.position, Quaternion.identity);
		}

		Rigidbody rbody = c.attachedRigidbody;
		// Freeze position
		rbody.constraints = RigidbodyConstraints.FreezePositionX | 
							RigidbodyConstraints.FreezePositionZ | 
							RigidbodyConstraints.FreezePositionY |
							RigidbodyConstraints.FreezeRotationX |
							RigidbodyConstraints.FreezeRotationY;
		//Debug.Log("about to wait!");
		yield return new WaitForSeconds(2f);
		//Debug.Log("I'm done waiting!");
		// Reset constraints to what they were before
		rbody.constraints = RigidbodyConstraints.None;
		rbody.constraints = RigidbodyConstraints.FreezeRotationX | 
							RigidbodyConstraints.FreezeRotationY;

		// Remove Ice
		if (P1Ice.activeInHierarchy) {P1Ice.SetActive(false);}
		else {P2Ice.SetActive(false);}
		//Debug.Log("I should destroy iCE!");
		//Destroy(ice);
	}
}
