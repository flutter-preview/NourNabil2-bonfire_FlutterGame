
import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../GreenNinjaGame.dart';
bool isobserve = false ;
double life = 100 ;
class DarkNinja extends SimpleEnemy with ObjectCollision , AutomaticRandomMovement ,UseBarLife{

  DarkNinja(Vector2 position )
      : super(
    position: position,
    size: Vector2(tiledSize,tiledSize),
    animation:PlayerSpriteSheet2.simpleDirectionAnimation ,
    life: life,
    speed: 50,
    initDirection: Direction.down,
  )
  {
    setupBarLife(
        barLifePosition: BarLifePorition.top,
        showLifeText: false,
        borderRadius: BorderRadius.circular(2),
        borderWidth: 2,

    );
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(16, 16),
          align: Vector2(16, 16),
        ),
      ]),
    );

  }
  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    if (attacker == AttackFromEnum.ENEMY) {
     // FlameAudio.play(Globals.explosionSound);
      showDamage(
        damage,
        config: TextStyle(fontSize: width / 3, color: Colors.red),
      );
    }
    super.receiveDamage(attacker, damage, identify);
  }
  @override
  void die() {
    gameRef.camera.shake(intensity: 4);
    removeFromParent();

    // bool dropPickup = Random().nextBool();
    // if (dropPickup) {
    //   gameRef.add(Medipack(position: position));
    // }

    super.die();
  }

  @override
  void render(Canvas canvas)
  {
    super.render(canvas);


    if (isobserve)
    {

    }

  }

  void update(double dt) {
    super.update(dt);
    seeAndMoveToPlayer(
        observed: () {
          if(!isobserve)
          {


            isobserve = true ;
          }
        },
        notObserved: () {
          {
            isobserve = false ;

            runRandomMovement(dt,maxDistance: 80 ,minDistance: 20 ,);
          }
        },
        radiusVision:80,
        closePlayer: (Player ) {

        },

    );
  }

}



class PlayerSpriteSheet2 {

  static Future<SpriteAnimation> get runDown => SpriteAnimation.load(
      "dark_ninja.png",
      SpriteAnimationData.variable(amountPerRow: 1,amount: 4 , stepTimes: [0.1 , 0.1 , 0.1 ,0.1 ], textureSize: Vector2(16, 16))
  );
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    "dark_ninja.png",
      SpriteAnimationData.range(amountPerRow: 4 ,amount: 4 , stepTimes: [0.1 , 0.1 , 0.1 ,0.1 ], textureSize: Vector2(16, 16), start: 3, end: 3)
  );
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    "dark_ninja.png",
      SpriteAnimationData.range(amountPerRow: 3 ,amount: 3, stepTimes: [0.1 , 0.1 , 0.1 ,0.1 ], textureSize: Vector2(16, 16), start: 2, end: 2)
  );
  static Future<SpriteAnimation> get idleUp => SpriteAnimation.load(
    "dark_ninja.png",
    SpriteAnimationData([
      SpriteAnimationFrameData(srcPosition: Vector2(16, 0), srcSize: Vector2(16, 16), stepTime: 0.1),
    ]),
  );
  static Future<SpriteAnimation> get idleDown => SpriteAnimation.load(
    "dark_ninja.png",
    SpriteAnimationData([
      SpriteAnimationFrameData(srcPosition: Vector2(0, 0), srcSize: Vector2(16, 16), stepTime: 0.1),
    ]),
  );
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
    "dark_ninja.png",
      SpriteAnimationData([
        SpriteAnimationFrameData(srcPosition: Vector2(48, 0), srcSize: Vector2(16, 16), stepTime: 0.1),
        SpriteAnimationFrameData(srcPosition: Vector2(48, 16), srcSize: Vector2(16, 16), stepTime: 0.1),
        SpriteAnimationFrameData(srcPosition: Vector2(48, 32), srcSize: Vector2(16, 16), stepTime: 0.1),
        SpriteAnimationFrameData(srcPosition: Vector2(48, 48), srcSize: Vector2(16, 16), stepTime: 0.1),
      ]),

  );
  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
    "dark_ninja.png",
    SpriteAnimationData([
      SpriteAnimationFrameData(srcPosition: Vector2(32, 0), srcSize: Vector2(16, 16), stepTime: 0.1),
      SpriteAnimationFrameData(srcPosition: Vector2(32, 16), srcSize: Vector2(16, 16), stepTime: 0.1),
      SpriteAnimationFrameData(srcPosition: Vector2(32, 32), srcSize: Vector2(16, 16), stepTime: 0.1),
      SpriteAnimationFrameData(srcPosition: Vector2(32, 48), srcSize: Vector2(16, 16), stepTime: 0.1),
    ]),
  );
  static Future<SpriteAnimation> get runUp => SpriteAnimation.load(
    "dark_ninja.png",
    SpriteAnimationData([
      SpriteAnimationFrameData(srcPosition: Vector2(16, 0), srcSize: Vector2(16, 16), stepTime: 0.1),
      SpriteAnimationFrameData(srcPosition: Vector2(16, 16), srcSize: Vector2(16, 16), stepTime: 0.1),
      SpriteAnimationFrameData(srcPosition: Vector2(16, 32), srcSize: Vector2(16, 16), stepTime: 0.1),
      SpriteAnimationFrameData(srcPosition: Vector2(16, 48), srcSize: Vector2(16, 16), stepTime: 0.1),
    ]),
  );
  //////////////////////////////////////
  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
        idleRight: idleRight,
        idleLeft: idleLeft,
        idleDown: idleDown,
        idleUp: idleUp,
        runRight: runRight,
        runLeft: runLeft,
        runDown: runDown,
        runUp: runUp,
      );
}