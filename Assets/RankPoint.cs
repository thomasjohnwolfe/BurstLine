using UnityEngine;
using System.Collections;

public class RankPoint : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "Player" || c.gameObject.tag == "OtherPlayer"){
			if(c.gameObject.GetComponent<CarRally>().rank == 1){
				RankManager.index = (RankManager.index+1)%RankManager.POINTLENGTH;
				//Debug.Log("Increase Index in RankManager! New Index Value: "+ RankManager.index);
			}
		}
	}
}
