using UnityEngine;
using System.Collections;

public class playerID : MonoBehaviour {
	public int ID = 0;
	
	void OnGUI(){
		if(this.networkView.isMine){
			GUI.Label(new Rect(20,Screen.height-50,200,32),"Player "+ID.ToString());
		}
	}
	
}
