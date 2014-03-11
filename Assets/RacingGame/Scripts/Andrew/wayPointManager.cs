using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class wayPointManager : MonoBehaviour {

	private List<GameObject> points;
	
	public int winner = 0;
	private int winnerNode = 0;
	
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
	
	void updatePlace(int _ID, int _point){
		if (_point > winnerNode || _point == 0){
			winner = _ID;
			winnerNode = _point;
		}
	}
	
	
}