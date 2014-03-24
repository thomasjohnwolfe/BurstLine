using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnItemOverNetwork : MonoBehaviour {
	public GameObject itemPickupPrefab;
	public Transform[] location;
	public List<GameObject> itemPickUpList = new List<GameObject>();
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	}
	public void DestroyItems(){
		foreach(GameObject g in itemPickUpList){
			if(g == null){
				itemPickUpList.Remove(g);
			}
			else{
				itemPickUpList.Remove(g);
				Network.Destroy(g.GetComponent<NetworkView>().viewID);
			}
		}
	}

	public void RecreateItem(){
		foreach(Transform t in location){
			//Debug.Log("Items: "+g.name);
			if(t.childCount==0){
				GameObject g = Network.Instantiate(itemPickupPrefab,t.position,t.rotation,0) as GameObject;	
				g.transform.parent = t;
			}
		}
	}

	public void CreateItem(){
		foreach (Transform t in location) {
			//NetworkViewID viewID = Network.AllocateViewID();
			//networkView.RPC ("SpawnItem",RPCMode.All,viewID,t.position,t.rotation);
			GameObject g = Network.Instantiate(itemPickupPrefab,t.position,t.rotation,0) as GameObject;		
			g.transform.parent = t;
			//Network.Instantiate(itemPickupPrefab,t.position,t.rotation,0)
		}
	}
	/*
	[RPC]
	void SpawnItem(NetworkViewID viewID,Vector3 location, Quaternion rotation){
		GameObject clone;
		clone = Instantiate(itemPickupPrefab,location,rotation) as GameObject;
		clone.transform.parent = this.transform;
		itemPickUpList.Add(clone);
		NetworkView view;
		view = clone.GetComponent<NetworkView>();
		view.viewID = viewID;
	}
	*/
}
