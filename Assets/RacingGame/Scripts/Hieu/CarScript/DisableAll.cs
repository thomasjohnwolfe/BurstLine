using UnityEngine;
using System.Collections;

public class DisableAll : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void Disable(){
		//this.rigidbody.isKinematic = true;
		//this.rigidbody.useGravity = false;
		this.GetComponent<CarController> ().enabled = false;
		this.GetComponent<CarUserControl> ().enabled = false;
		this.GetComponent<CarSelfRighting> ().enabled = false;
		this.GetComponent<CarRally> ().enabled = false;
	}
	public void Enable(){
		Debug.Log ("Enable script");
		//this.rigidbody.isKinematic = false;
		//this.rigidbody.useGravity = true;
		this.GetComponent<CarController> ().enabled = true;
		this.GetComponent<CarUserControl> ().enabled = true;
		this.GetComponent<CarSelfRighting> ().enabled = true;
		this.GetComponent<CarRally> ().enabled = true;
	}
}
