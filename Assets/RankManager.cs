using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class RankManager : MonoBehaviour {
	public static CarRally[] players = new CarRally[0];
	public Transform[] points;
	List<float> distanceList;
	int index = 0;
	int PLAYERSIZE = 0;
	bool loadAllPlayer = false;
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		if(players.Length != 0 && !loadAllPlayer){
			PLAYERSIZE = players.Length;
			loadAllPlayer = true;
		}
		if(PLAYERSIZE !=0){
			setRank();
		}
	}
	
	void IncrementIndex(){
		index = (index+1)%points.Length;
	}

	int CheckRank(){
		int[] tempRank = new int[PLAYERSIZE];

		if(allHaveSameNodeNumber()){
		
		}
		else{
			
		}


		return 0;
	}

	int carIndexHasMostNode(){
		int carIndex = 0;
		for(int i=0;i<PLAYERSIZE-1;i++){
			if(players[i].rankNode < players[i+1].rankNode){
				carIndex = i+1;
			}
		}
		return carIndex;
	}

	bool allHaveSameNodeNumber(){
		for(int i=0;i<PLAYERSIZE-1;i++){
			if(players[i].rankNode != players[i+1].rankNode){
				return false;
			}
		}
		return true;
	}

	int CheckDistance(){

		return 0;
	}

	void setRank(){
		Debug.Log ("running : "+ PLAYERSIZE);
		for(int i=0; i<PLAYERSIZE; i++){
			distanceList.Add(Vector3.Distance(players[i].gameObject.transform.position,points[index].position));
		}
		for(int i=0; i<PLAYERSIZE; i++){
			Debug.Log(players[i].gameObject.name+" has distance: "+distanceList[i]+" has position " + players[i].gameObject.transform.position);
		}
	}

}
