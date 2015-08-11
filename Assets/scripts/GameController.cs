using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameController : MonoBehaviour {

	public Text timer;
	private float time = 60f;
	private int roundTime;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		time -= Time.deltaTime;
		roundTime = (int)time;
		timer.text = "Time: " + roundTime;
	}
}
