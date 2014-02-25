using UnityEngine;
using System.Collections;

public class uppyDowny : MonoBehaviour {
	
	public float moveness = 1;
	public float speed = 1;
	
	private Vector3 initLoc;
	
	// Use this for initialization
	void Start () {
		initLoc = this.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		this.transform.position = initLoc + new Vector3(0,Mathf.Sin(Time.time*speed)*moveness,0);
	}
}
