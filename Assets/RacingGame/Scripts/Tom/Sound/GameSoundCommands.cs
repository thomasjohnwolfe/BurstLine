using UnityEngine;
using System.Collections;

public class GameSoundCommands : MonoBehaviour {
	public 			float				musicVolume =1f;
	public static 	GameSoundCommands 	instance;
	public 			AudioClip 			StartMusic,StartSound,BoostStart,BoostStop,BoostRun,
										Shoot,bulletHit, bladeHit,bladeSheathe,bladeUnsheathe,
										RushSound,RushHit;
					AudioSource			BoostEngine;

					string				lastServerState;
	void Awake	(){instance=this;}

	void Start () {
		SoundManager.instance.PlayMusic(StartMusic, musicVolume);
	}
	

	void Update () {
		if(Input.GetKeyDown(KeyCode.Return))PlayStartSound();
	}

	public void PlayStartSound(){SoundManager.instance.PlaySFX(StartSound);print ("playing start sound");}
	public void PlayBoostStart(){SoundManager.instance.PlaySFX(BoostStart);print ("playing booststart sound");}
	public void PlayBoostStop(){SoundManager.instance.PlaySFX(BoostStop);print ("playing booststop sound");}
	public void PlayBoostEngine(float time){BoostEngine = SoundManager.instance.AddAudioLoopingSource(BoostRun,time);print ("adding EngineLoop");}
	public void StopBoostEngine(){SoundManager.instance.PlaySFX(StartSound);print ("playing boostStop sound");}
	public void PlayShoot(){SoundManager.instance.PlaySFX(Shoot);print("playing SHOOT sound");}
	public void PlayBladeHit(){SoundManager.instance.PlaySFX(bladeHit);print("playing blade hit sound");}
	public void PlayBladeUnSheathe(){SoundManager.instance.PlaySFX(bladeUnsheathe);print("playing blade sheath sound");}
	public void PlayBladeSheathe(){SoundManager.instance.PlaySFX(bladeSheathe);print("playing blade unsheate sound");}
	public void PlayRushStart(){SoundManager.instance.PlaySFX(RushSound);print("playing rush start sound");}
	public void PlayRushHit(){SoundManager.instance.PlaySFX(RushHit);print("playing rush hit sound");}
	public void PlayShootHit(float volume){SoundManager.instance.PlaySFX(bulletHit,volume);print("playing bulletHit");}

	void ListenToNetWorkManager(){
		print (networkManager._instance.state);
		switch (networkManager._instance.state) {
		case ("serverWait"):
			if(lastServerState=="waiting")
				PlayStartSound();
			break;
		default:
			break;
		}
		lastServerState = networkManager._instance.state;
	}

}
