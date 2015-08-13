using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CameraMovement : MonoBehaviour {

	public Transform player1, player2; // assign 2 players here 
	public float forwardX; // adjust how far the camera can look forward (go ahead) in front of the 2 players
	public float camMoveSpeed;

	Vector3 camAng;

	void Start () {
		camAng = transform.forward;
	}

	void Update () {
		float xDis = Vector3.Distance (player1.position, player2.position); 
		float midX = ( player1.position.x + player2.position.x )  * 0.5f;
		if ( xDis >= 15f ){
			//transform.position = Vector3.Lerp( transform.localPosition, new Vector3 (midX, transform.position.y, transform.position.z), camMoveSpeed);
			transform.position = Vector3.Lerp ( transform.localPosition,  new Vector3 (midX, 0f, 0f) + ( - camAng * xDis * 0.8f ), camMoveSpeed);
		} else {
			transform.position = Vector3.Lerp( transform.localPosition, new Vector3 (midX, transform.position.y, transform.position.z), camMoveSpeed);
		}


	}

	// assign this function to "restart" button
	public void ResetGame () {
		Application.LoadLevel (Application.loadedLevel);
		Time.timeScale = 1f;
	}

}
