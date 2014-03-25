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
	public GameObject[] route;
	void Start () {
		spawnLocation= GameObject.FindGameObjectsWithTag ("SpawnItem");
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		CheckFinishLap();
		if(isFirstCarPass()){
			ReCreateItems();
		}
	}

	void CheckFinishLap(){
		if(Players!=null)
		{
			foreach(CarRally c in Players){
				if(c.lap == endLap){
					c.finishLap = true;
				}
			}
		}
	}

	bool isFirstCarPass(){
		if(Players!=null)
		{
			foreach(CarRally c in Players){
				if(c.lap > Lap && c.lap <=endLap){

					UIManager_Game.instance.DisplayLapMsg(5f,Lap);
					GameSoundCommands.instance.PlayStartSound();
					Lap++;
					UIManager_Game.instance.ResetLapTime();
					networkView.RPC ("broadcastCheckLap",RPCMode.All,this.networkView.viewID,Lap);
					return true;
				}
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
		if(c.GetComponent<CarRally>() && CheckFinishLap(c.GetComponent<CarRally>())){
			c.GetComponent<CarRally>().addLap();

				UIManager_Game.instance.AddBoost();

		}
	}

	bool CheckFinishLap(CarRally carScript){
		if(this.route.Length == carScript.route.Count){
			for(int i=0;i<this.route.Length;i++){
				for(int j=i;j<carScript.route.Count;){
					if(this.route[i] != carScript.route[j]){
						//print ("false");
						//print (this.route[i]);
						//print (carScript.route[j]);
						return false;
					}
					break;
				}
			}
			//print ("true");
			carScript.route.Clear();
			return true;
		}
		//print (this.route.Length);
		//print (carScript.route.Count);
		return false;
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
