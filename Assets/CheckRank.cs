using UnityEngine;
using System.Collections;

public class CheckRank : MonoBehaviour {
	public GameObject[] players;
	public Transform[] points;
	float[] disArray = new float[players.Length];
	int index = 0;
	int PLAYERSIZE = 0;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {

	}

	IEnumerator checkSIZE(){
		while(PLAYERSIZE == 0){
			PLAYERSIZE = players.Length;
		}
		yield return new WaitForSeconds(0.5f);
	}
	void IncrementIndex(){
		index = (index+1)%points.Length;
	}

	int CheckRank(float dis){
		int size = players.Length;
		for(int i=0;i<size;i++){
			
		}
	}

	void setRank(){
		int size = players.Length;
		for(int i=0; i<size; i++){
			disArray[i] = Vector3.Distance(players[i].transform.position,points[index].position);
		}

	}

}
