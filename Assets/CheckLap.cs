using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CheckLap : MonoBehaviour {
	GameObject[] spawnLocation;
	public static List<CarRally> Players= new List<CarRally>();
	float sphereRadius = 15;
	bool checkCar= true;
	const int beginLap = 0;
	const int endLap = 4;
	public static int Lap = beginLap;
	
	void Start () {
		spawnLocation = networkManager._instance.spawnItemLocation;
		StartCoroutine(CheckCarCross());
	}
	
	// Update is called once per frame
	void Update () {

	}

	IEnumerator CheckCarCross(){
		while(true){
			if(isFirstCarPass()){
				DeleteItems();
				CreateItem();
			}
			yield return new WaitForSeconds(1);
		}
	}

	bool isFirstCarPass(){
		foreach(CarRally c in Players){
			if(c.lap > Lap){
				Lap++;
				return true;
			}
		}
		return false;
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
			c.GetComponent<CarRally>().addLap();
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
