using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class wayPointManager : MonoBehaviour {

	private List<GameObject> points;
	
	public int winner = 0;
	private int winnerNode = 0;
	
	public Dictionary<int,float> cars;//<player,points>
	public List<int> ranks;
	
	private int ID = 0;
	
	// Use this for initialization
	void Start () {
		points = new List<GameObject> ();
		foreach (GameObject i in GameObject.FindGameObjectsWithTag("CheckPoint")) {
			points.Add(i);
		}
		for(int i=0; i<points.Count; i++) {
			for(int j=0; j<points.Count-1; j++) {
				if(points[j].GetComponent<checkPointNode>().checkPoint >  points[j+1].GetComponent<checkPointNode>().checkPoint){
					GameObject t = points[j];
					points.RemoveAt(j);
					points.Insert(j+1,t);
				}
			}
		}
		
		for(int i=0; i<points.Count-1; i++) {
			points[i].GetComponent<checkPointNode>().next = points[i+1];
		}
		points[points.Count-1].GetComponent<checkPointNode>().next = points[0];
		
	}
	
	void GameStart(int _ID){
		cars = new Dictionary<int, float>();
		cars.Add(GameObject.FindGameObjectWithTag("Player").GetComponent<playerID>().ID,0);
		GameObject[] oCars = GameObject.FindGameObjectsWithTag("OtherPlayer");
		foreach(GameObject i in oCars){
			cars.Add(i.GetComponent<playerID>().ID,0);
		}
		ID = _ID;
	}
	
	
	void Update(){
		if (ID > 0){
			updateRanks();
		}
		
	}
	
	void updateRanks(){
		ranks.Clear();
		//Debug.Log("Now Sorting");
		foreach(KeyValuePair<int,float> i in cars){
			if(ranks.Count > 0){
				//Debug.Log("testing "+i.Key.ToString()+" with value of "+i.Value.ToString());
				int insert = -1;
				for(int j=0;j<ranks.Count;j++){
					//Debug.Log("Testing against entry "+j.ToString()+" with a value of "+cars[ranks[j]].ToString());
					if(i.Value > cars[ranks[j]]){
						insert = j;
						break;
					}
				}
				if (insert >= 0){ 
					//Debug.Log("Larger, inserting at "+insert.ToString());
					ranks.Insert(insert,i.Key);
				}
				else{
					//Debug.Log("smallest, inserting at end");
					ranks.Add(i.Key);
				}
			}
			else{
				//Debug.Log("No enties; adding "+i.Key.ToString());
				ranks.Add(i.Key);
			}
		}
		
		int place = 0;
		foreach(int i in ranks){
			place++;
			if (i == ID){
				UIManager_Game.RANK = place.ToString();
			}
		}
		
	}
	
	void addPlace(int _ID){
		foreach(KeyValuePair<int,float> i in cars){
			if (i.Key == _ID){
				cars[i.Key] += 1;
				Debug.Log("UPDATED");
			}
		}
	}
	void subPlace(int _ID){
		foreach(KeyValuePair<int,float> i in cars){
			if (i.Key == _ID){
				cars[i.Key] += 1;
				Debug.Log("UPDATED");
			}
		}
	}
	
	
}










