using UnityEngine;
using System.Collections;

public class ResetPos : MonoBehaviour {
	public GameObject startPos;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Escape)|| Input.GetKeyDown(KeyCode.Joystick1Button6))
		{
			GameObject.FindGameObjectWithTag("Player").transform.position = startPos.transform.position;;
			GameObject.FindGameObjectWithTag("Player").transform.rotation = startPos.transform.rotation;
			GameObject.FindGameObjectWithTag("Player").rigidbody.velocity = Vector3.zero;
			GameObject.FindGameObjectWithTag("Player").rigidbody.angularVelocity = Vector3.zero;
			
			GameObject.FindGameObjectWithTag("CheckPointManager").SendMessage("subPlace",GameObject.FindGameObjectWithTag("Player").GetComponent<playerID>().ID);
		}

		if(Input.GetKeyDown(KeyCode.Backspace))
		{
			Application.LoadLevel(Application.loadedLevel);
		}

	}


}
