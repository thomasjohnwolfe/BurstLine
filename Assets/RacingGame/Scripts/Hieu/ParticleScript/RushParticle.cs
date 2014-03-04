using UnityEngine;
using System.Collections;

public class RushParticle : MonoBehaviour {
	public GameObject innerCore;
	public GameObject outerCore;
	public GameObject smoke;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	public void Enable(bool b){
		innerCore.particleEmitter.emit = b;
		outerCore.particleEmitter.emit = b;
		smoke.particleEmitter.emit = b;
	}
}
