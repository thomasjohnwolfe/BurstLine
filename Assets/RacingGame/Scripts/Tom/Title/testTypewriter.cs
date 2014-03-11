using UnityEngine;
using System.Collections;

public class testTypewriter : MonoBehaviour {

	// Use this for initialization
	void Start ()
	{
		GameObject.Find("txtVehicleDesc").AddComponent<TypewriterEffect>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
