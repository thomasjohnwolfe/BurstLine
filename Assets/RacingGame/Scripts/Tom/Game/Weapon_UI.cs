using UnityEngine;
using System.Collections;

public class Weapon_UI:NguiSprite
{
	public Weapon_UI(string gobName,string spriteName) : base(gobName,spriteName)
	{

	}

	public void Active(bool setting)
	{
		base.sprite.alpha = setting? 1f:0.2f;
	}
}
