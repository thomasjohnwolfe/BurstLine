using UnityEngine;
using System.Collections;

public class Boost_UI : NguiSprite
{
	public Boost_UI(string gobName, string spriteName): base(gobName,spriteName)
	{
		;
	}

	public void Active(bool setting)
	{
		base.sprite.alpha = setting? 1f:0;
	}
		
}

