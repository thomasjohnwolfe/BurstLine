using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class RankManager : MonoBehaviour {
	public static CarRally[] players = new CarRally[0];
	public static int POINTLENGTH = 11;
	public Transform[] points = new Transform[POINTLENGTH];
	List<CarRally> temp = new List<CarRally>();
	List<float> distanceList = new List<float>();
	public static int index = 0;
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
		CopyToTemp();
		if(PLAYERSIZE !=0){
			setRank();
			CheckRankBaseOnDistanceOnly();
		}
	}

	void CopyToTemp(){
		if(temp.Count == 0 && players!=null){
			foreach(CarRally c in players){
				temp.Add(c);
			}
		}
	}
	
	public void IncrementIndex(){
		index = (index+1)%points.Length;
	}

	void CheckRank(){
		//int[] tempRank = new int[PLAYERSIZE];

		if(allHaveSameNodeNumber()){
			CheckRankBaseOnDistanceOnly();
		}
		else{
			
		}
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

	void CheckRankBaseOnNode(){
		
	}

	void CheckRankBaseOnDistanceOnly(){
		float nodeValue = 10000f;
		int rank = 1;
		while(distanceList.Count != 0){
			float closestDistance = distanceList[0] - temp[0].rankNode*nodeValue;
			int indexCarClosest = 0;
			for(int i=1;i<distanceList.Count;i++){
				float dis = distanceList[i] - temp[i].rankNode*nodeValue;
				if(dis < closestDistance){
					closestDistance = dis;
					indexCarClosest = i;
				}
			}
			//Debug.Log("Car index closet to check point: "+indexCarClosest);
			temp[indexCarClosest].setRank(rank);
			distanceList.RemoveAt(indexCarClosest);
			temp.RemoveAt(indexCarClosest);
			rank++;
		}


	}



	void setRank(){
		//Debug.Log ("running : "+ PLAYERSIZE);
		for(int i=0; i<PLAYERSIZE; i++){
			distanceList.Add(Vector3.Distance(temp[i].gameObject.transform.position,points[index].position));
		}
		/*
		for(int i=0; i<PLAYERSIZE; i++){
			Debug.Log(players[i].gameObject.name+" has distance: "+distanceList[i]+" has position " + players[i].gameObject.transform.position);
		}
		*/
	}

}
