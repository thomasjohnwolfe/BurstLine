using UnityEngine;
using System.Collections;

public class Weapon_UI:NguiSprite
{
	public Weapon_UI(string gobName,string spriteName) : base(gobName,spriteName)
	{

	}

	public void Active(bool setting)
	{

		if(setting) Start();
		else Stop();
		base.sprite.alpha = setting? 1f:0.2f;
	}

	public void Start(){
		TomTweenScale t = base.sprite.gameObject.GetComponent<TomTweenScale>();
		t.Play();
	}

	public void Stop(){
		TomTweenScale t = base.sprite.gameObject.GetComponent<TomTweenScale>();
		t.Reverse();
	}
}
