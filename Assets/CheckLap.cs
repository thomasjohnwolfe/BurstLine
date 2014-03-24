using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CheckLap : MonoBehaviour {
	GameObject[] spawnLocation;
	public static CarRally[] Players;
	float sphereRadius = 15;
	bool checkCar= true;
	const int beginLap = 1;
	const int endLap = 4;
	public int Lap = 1;
	
	void Start () {
		spawnLocation= GameObject.FindGameObjectsWithTag ("SpawnItem");

	}
	
	// Update is called once per frame
	void FixedUpdate () {
		if(isFirstCarPass()){
			ReCreateItems();
		}
	}

	bool isFirstCarPass(){
		foreach(CarRally c in Players){
			if(c.lap > Lap){
				Lap++;
				networkView.RPC ("broadcastCheckLap",RPCMode.All,this.networkView.viewID,Lap);
				return true;
			}
		}
		return false;
	}

	[RPC]
	void broadcastCheckLap(NetworkViewID id,int _lap){
		NetworkView.Find(id).GetComponent<CheckLap>().Lap = _lap;
	}

	bool isLastCarPass(){
		foreach(CarRally c in Players){
			if(c.lap < Lap){
				return false;
			}
		}
		return true;
	}


	void OnTriggerEnter(Collider c){
		if(c.GetComponent<CarRally>()){
			Debug.Log("lap increase");
			c.GetComponent<CarRally>().addLap();
			if(c.GetComponent<CarRally>().boost<3){
				UIManager_Game.instance.AddBoost();
			}
		}
	}

	void ReCreateItems(){
		foreach(GameObject g in spawnLocation){
			g.GetComponent<SpawnItemOverNetwork>().RecreateItem();
		}
	}
	void DeleteItems(){
		foreach(GameObject g in spawnLocation){
			g.GetComponent<SpawnItemOverNetwork>().DestroyItems();
		}
	}
	void CreateItem(){
		foreach(GameObject g in spawnLocation){
			g.GetComponent<SpawnItemOverNetwork>().CreateItem();
		}
	}

}
