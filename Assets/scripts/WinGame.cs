using UnityEngine;
using UnityEngine.UI;
using System.Collections;

//assign this on the goal trigger object
public class WinGame : MonoBehaviour {


	public Text winText; //assign the win text to winText in the Inspector (find the winText in Canvas-EndPanel)
	public GameObject winScrn; // assign the win screen which is a panel in the main Canvas (EndPanel)

	string winner = "";

	void SomeoneWinTheGame () {
		 
		winScrn.SetActive(true);
		winText.text = winner + " Wins!";
		Time.timeScale = 0f;	
	}
	

	void OnTriggerEnter (Collider c) {

		// now the colliders are finding name, (P1, P2)
		// if we are going to change avatars' name, change here as well
		// or we can use tags 
		//Debug.Log(c.transform.name);
		if ( c.transform.name == "P1" ) {
			winner = "P1";
			SomeoneWinTheGame();
		} else if ( c.transform.name == "P2" ) {
			winner = "P2";
			SomeoneWinTheGame();
		}


	}

}
