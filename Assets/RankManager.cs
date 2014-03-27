using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class RankManager : MonoBehaviour {
	public static CarRally[] players ;
	public static int POINTLENGTH = 11;
	public Transform[] points = new Transform[POINTLENGTH];
	List<CarRally> temp;
	List<float> distanceList;
	public static int index = 0;
	int PLAYERSIZE = 0;
	bool loadAllPlayer = false;
	// Use this for initialization
	void Start () {

		temp = new List<CarRally>();
		distanceList = new List<float>();
		//StartCoroutine("getPlayerSize");
	}
	
	// Update is called once per frame
	void Update () {

		if(PLAYERSIZE == 0 && !loadAllPlayer){
			if(players !=null){
				PLAYERSIZE = players.Length;
				loadAllPlayer = true;
			}
		}

		CopyToTemp();
		if(players != null){
			setRank();
			CheckRankBaseOnDistanceOnly();
		}
	}
	//this is super important when dealing with static variable.
	//When the level is loaded again, the static variable still reference to the old address
	//need to reset them and set to null,or subtract in case of delagate.
	void OnDestroy(){
		players = null;
	}
	/*
	IEnumerator getPlayerSize(){
		if(players !=null){
			PLAYERSIZE = players.Length;
		}
		yield return new WaitForEndOfFrame();
		if(PLAYERSIZE !=0){
			StopCoroutine("getPlayerSize");
		}
	}
	*/
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
		//Debug.Log(temp.Count);
		/*
		if( ((GameObject)temp[0].gameObject) == null){
			Debug.Log("reset");
			temp.Clear();
			RankManager.players = GameObject.FindObjectsOfType(typeof(CarRally)) as CarRally[];
			CopyToTemp();
		}
		*/
		//Debug.Log(players[0].gameObject.name);
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
