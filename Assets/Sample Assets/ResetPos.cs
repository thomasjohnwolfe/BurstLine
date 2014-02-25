using UnityEngine;
using System.Collections;

public class ResetPos : MonoBehaviour {
	public GameObject startPos;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	if(Input.GetKeyDown(KeyCode.Escape))
		{
			GameObject.FindGameObjectWithTag("Player").transform.position = startPos.transform.position;;
			GameObject.FindGameObjectWithTag("Player").transform.rotation = startPos.transform.rotation;
			GameObject.FindGameObjectWithTag("Player").rigidbody.velocity = Vector3.zero;
		}
	}
}
