using UnityEngine;
using System.Collections;

public abstract class NguiSprite
{
	protected UISprite sprite;

	protected NguiSprite(string gobName,string spriteName)
	{
		this.sprite = GameObject.Find(gobName).GetComponent<UISprite>();
		this.sprite.spriteName = spriteName;

	}

}

