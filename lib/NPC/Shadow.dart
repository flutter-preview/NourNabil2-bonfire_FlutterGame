import 'package:bonfire/bonfire.dart';
import 'package:bonfire_flutter_game/constant/constant.dart';
import 'package:bonfire_flutter_game/decorations/Items.dart';
import 'package:bonfire_flutter_game/player/Main_Player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../MainGame.dart';
import '../constant/NameOfMaps.dart';

TextPaint textPaint = TextPaint(style: TextStyle(color: CupertinoColors.white , fontSize: 10 ) );
bool isobserve = false ;
bool close = false ;
class Shadow extends SimpleNpc with Lighting,ObjectCollision , AutomaticRandomMovement ,TapGesture{

  Shadow(Vector2 position)
      : super(

    position: position,
    size: Vector2(tiledSize,tiledSize),
    animation: PlayerSpriteSheet.simpleDirectionAnimation,
    speed: 100,
    initDirection: Direction.down,
  ){
    setupLighting(
      LightingConfig(
        radius: width/2 ,
        blurBorder: width,
        color: Colors.white.withOpacity(0.1),
      ),
    );
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(18, 20),
          align: Vector2(18, 20),
        ),
      ]),
    );
  }
  @override
    Future<void> update(double dt) async {
    if(close)
      {

        super.animation?.runRight = await PlayerSpriteSheet.DeathRight;
        moveRight(2);

      }


    seePlayer(
        observed: (p0) {
          if(!isobserve)
          {
            isobserve = true ;
            close ? removeFromParent() : null ;
          }
        },
        notObserved: () {
          {
            isobserve = false ;
          }
        },
        radiusVision:80

    );
        super.update(dt);
  }

  @override
  void onTap()  {
    ShowDialogTalk();
  }
  ShowDialogTalk()
    {
    gameRef.camera.moveToTargetAnimated(this,zoom: 2 , finish: () {
      TalkDialog.show(gameRef.context, [
        speak(text: 'Who are you, and where am I, why don\'t I suffocate, am I dead?! Are you death?!! ', isPlayer: true),
        speak(text: 'Don\'t ask where you are or who I am, this didn\'t and won\'t matter in your situation right now.', isPlayer: false),
        speak(text: 'The only death is you', isPlayer: false),
        speak(text: 'Me?!', isPlayer: true),
        speak(text: 'Please take me back to my life', isPlayer: true),
        speak(text: 'I am your destructive mind, which you are the cause of, and I live in it until I control you. Unfortunately, there is nothing you can do but surrender', isPlayer: false),
        speak(text: 'Listen to the darkness, or is it your heart?', isPlayer: false),
        speak(text: 'What do you say and where are you going?!!!!', isPlayer: true),
      ],logicalKeyboardKeysToNext:[LogicalKeyboardKey.space],
        //onChangeTalk: (value) => gameRef.camera.shake(intensity: 2 ) ,
        onClose: () {
          gameRef.camera.moveToPlayerAnimated(zoom: 1.5);

           close = true ;

        },
      //  onFinish: () => selectMap(MapId.two),
      );
    },);
  }

  Say speak({required String text , required bool isPlayer ,})=> Say(
    text: [TextSpan(text: text),],
    person: SizedBox(height: 100,width: 100,child: isPlayer ? PlayerSpriteSheet2.idleRight.asWidget() : PlayerSpriteSheet.idleRight.asWidget() ,),
    personSayDirection: isPlayer ? PersonSayDirection.LEFT :PersonSayDirection.RIGHT ,
  );



}



class PlayerSpriteSheet {

  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    "NPC/partner/idle left.png",
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.2,
      textureSize: Vector2(100, 100),
    ),
  );
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    "NPC/partner/idle left.png",
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.2,
      textureSize: Vector2(100, 100),
    ),
  );

  static Future<SpriteAnimation> get DeathLeft => SpriteAnimation.load(
    "NPC/partner/death_time_Left.png",
    SpriteAnimationData.sequenced(
      amount: 18,
      stepTime: 0.2,
      textureSize: Vector2(100, 100),
    ),
  );
  static Future<SpriteAnimation> get DeathRight => SpriteAnimation.load(
    "NPC/partner/death_time_Left.png",
    SpriteAnimationData.sequenced(
      amount: 18,
      stepTime: 0.2,
      loop: false,
      textureSize: Vector2(100, 100),
    ),
  );


  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
         idleRight: idleRight , runRight: idleRight, idleLeft: idleLeft ,runLeft: idleLeft
      );

}