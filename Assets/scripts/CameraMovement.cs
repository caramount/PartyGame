using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CameraMovement : MonoBehaviour {

	public Transform player1, player2; // assign 2 players here 
	public float forwardX; // adjust how far the camera can look forward (go ahead) in front of the 2 players
	public float camMoveSpeed;

	Vector3 destination;

	void Update () {
		float xDis = player1.position.x + player2.position.x ; 
		float midX = xDis * 0.5f + forwardX;
		if (xDis <= 10f ){
			//Debug.Log( "local x,y,z:" + transform.localPosition.x + "," + transform.localPosition.y + "," + transform.localPosition.z);
			transform.position = Vector3.Lerp( transform.localPosition, new Vector3 (midX, transform.position.y, transform.position.z), camMoveSpeed);
		} else {

		}


	}

	// assign this function to "restart" button
	public void ResetGame () {
		Application.LoadLevel (Application.loadedLevel);
		Time.timeScale = 1f;
		Debug.Log("DICKS");
	}

}
