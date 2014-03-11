using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class FindComponent : MonoBehaviour {

	public bool find;
	// Use this for initialization
	void Start () 
	{
		
	}
	
	// Update is called once per frame
	void Update () {

		if(find)
		{
			AudioListener[] obs = GameObject.FindObjectsOfType(typeof(AudioListener)) as AudioListener[];
			foreach (AudioListener o in obs)
			{
				if(o.enabled)
				print (o.gameObject.name);
				//
			}
			find = false;
		}
	

	}
}
