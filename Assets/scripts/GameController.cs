using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameController : MonoBehaviour {

	public Text timer;
	private float time = 60f;
	private int roundTime;

	public Text winText; //assign the win text to winText in the Inspector (find the winText in Canvas-EndPanel)
	public GameObject winScrn; // assign the win screen which is a panel in the main Canvas (EndPanel)

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		time -= Time.deltaTime;
		roundTime = (int)time;
		timer.text = "Time: " + roundTime;
		if (roundTime < 1)
		{
			winScrn.SetActive(true);
			winText.text = "Terrain Player Wins!";
			Time.timeScale = 0f;
		}
	}

	public void ReturnToMenu()
	{
		Application.LoadLevel("testStartMenu");
	}
}
