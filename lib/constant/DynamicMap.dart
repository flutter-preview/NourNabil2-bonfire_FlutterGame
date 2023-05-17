import 'dart:core';
import 'package:bonfire/bonfire.dart';
import 'package:bonfire/widgets/bonfire_widget.dart';
import 'package:bonfire/widgets/mini_map/mini_map.dart';
import 'package:bonfire_flutter_game/Screens/LoseScreen.dart';
import 'package:bonfire_flutter_game/Screens/WinScreen.dart';
import 'package:bonfire_flutter_game/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget MainMap (
{
  required double tiledSize ,
  required GameMap map ,
  required Player Player ,

}
    )=>BonfireWidget(
  key: Key(DateTime.now().toIso8601String()),
  overlayBuilderMap: {
    GameOverScreen.id: (context, game) => const GameOverScreen(),
    LevelWonScreen.id: (context, game) => const LevelWonScreen(),
    'mini_map': (context, game) =>
        MiniMap(
          game: game,
          zoom: 0.6,
          size: Vector2.all(100),
          margin: const EdgeInsets.all(20),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
          ),
        )
  },
  initialActiveOverlays: const <String>['mini_map'],
  lightingColorGame: Colors.black54,
  cameraConfig: CameraConfig(zoom: 1.2),
  map: map,
  joystick: Joystick(
    directional: JoystickDirectional(
        size: 100,
        isFixed: false
    ),

    keyboardConfig: KeyboardConfig(
      acceptedKeys: [
        LogicalKeyboardKey.space,
        LogicalKeyboardKey.controlLeft
      ],
    ),
    actions: [

      JoystickAction(actionId: AttackType.melee,
          size: 80,
          margin: const EdgeInsets.only(bottom: 50, right: 50),
          align: JoystickActionAlign.BOTTOM_RIGHT,
          sprite: Sprite.load('sword.png')),
      JoystickAction(actionId: AttackType.range,
          size: 50,
          margin: const EdgeInsets.only(bottom: 50, right: 200),
          align: JoystickActionAlign.BOTTOM_RIGHT,
          sprite: Sprite.load('shuriken_single.png')),
    ],
  ),
  player: Player


);
