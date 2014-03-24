using UnityEngine;
using System.Collections;

public class WeaponPickUp : MonoBehaviour
{
	public GameObject destroyParticle;
	void OnDestroy(){
		GameSoundCommands.instance.PlayPickUpSound();
		GameObject.Instantiate(destroyParticle,transform.position,transform.rotation);
	}	
}

