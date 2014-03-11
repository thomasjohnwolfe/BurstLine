using UnityEngine;
using System.Collections;

public class SpawnItemOverNetwork : MonoBehaviour {
	public GameObject itemPickup;
	public Transform[] location;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void CreateItem(){
		foreach (Transform t in location) {
			Network.Instantiate(itemPickup,t.position,t.rotation,0);		
		}
	}
}
