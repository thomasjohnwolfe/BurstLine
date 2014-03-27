using UnityEngine;
using System.Collections;

public class DetectNetwork : MonoBehaviour {
	CarUserControl carusercontrol;
	CarController carcontroller;
	CarSelfRighting carselfrighting;
	ObjectResetter objectresetter;
	//CarRally script;
	// Use this for initialization
	void Start () {
		carusercontrol = GetComponent<CarUserControl> ();
		carcontroller = GetComponent<CarController> ();
		carselfrighting = GetComponent<CarSelfRighting> ();
		objectresetter = GetComponent<ObjectResetter> ();
		//script = GetComponent<CarRally> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (!networkView.isMine) {
			carusercontrol.enabled = false;
			carcontroller.enabled = false;
			carselfrighting.enabled = false;
			objectresetter.enabled = false;
			//script.enabled = false;
		}
	}
}
