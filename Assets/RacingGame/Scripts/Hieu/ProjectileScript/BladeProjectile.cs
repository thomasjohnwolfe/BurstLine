using UnityEngine;
using System.Collections;

public class BladeProjectile : ProjectileScript {
	static GameObject particle1,particle2;
	public string particle1name = "BladeParticle1";
	public string particle2name = "BladeParticle2";

	void Start () {
		particle1 = particle1==null? GameObject.Find(particle1name):particle1;
		particle2 = particle2==null? GameObject.Find(particle2name):particle2;
		particle1.SetActive(false);
		particle2.SetActive(false);
	}
	

	void Update () {
	}

	void OnTriggerEnter(Collider c){
		if(c.gameObject.tag == "OtherPlayer"){
			StartCoroutine(ActivateParticle(GetFreeParticle()));
			c.gameObject.GetComponent<CarRally>().dealDamage(damage);
			//Debug.Log(this.owner+" deal "+damage+" to "+c.gameObject.name);
		}
	}

	GameObject GetFreeParticle(){
		return particle1.activeSelf ? particle2 : particle1;
	}

	IEnumerator ActivateParticle(GameObject particle){
		particle.SetActive(true);
		GameSoundCommands.instance.PlayShoot();
		particle.transform.position = transform.position;
		particle.transform.rotation = transform.rotation;
		yield return new WaitForSeconds(2f);
		particle.SetActive(false);
	}

}
