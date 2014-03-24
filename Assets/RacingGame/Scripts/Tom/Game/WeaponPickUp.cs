using UnityEngine;
using System.Collections;

public class WeaponPickUp : MonoBehaviour
{
	public GameObject destroyParticle;

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "Player" || c.gameObject.tag == "OtherPlayer"){
			Network.Destroy(this.gameObject.GetComponent<NetworkView>().viewID);
		}
	}

	void OnDestroy(){
		GameSoundCommands.instance.PlayPickUpSound();
		GameObject.Instantiate(destroyParticle,transform.position,transform.rotation);
	}	
}

