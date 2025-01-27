import 'dart:async';
import 'dart:math';
import 'package:bonfire_flutter_game/MainGame.dart';
import 'package:bonfire_flutter_game/Screens/settingScreen.dart';
import 'package:bonfire_flutter_game/constant/Buttons.dart';
import 'package:bonfire_flutter_game/constant/Hero_Dialog.dart';
import 'package:bonfire_flutter_game/constant/constant.dart';
import 'package:bonfire_flutter_game/constant/onBoarding.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/services.dart';

import '../SharedPreferences/Cash_Save.dart';
import '../constant/NameOfMaps.dart';
import '../constant/Sounds/background.dart';

class Start_Screen extends StatefulWidget {
  const Start_Screen({Key? key}) : super(key: key);

  @override
  State<Start_Screen> createState() => _Start_ScreenState();

}

List<String> background = ['assets/images/image_Interface/BG.gif','assets/images/image_Interface/Coffee_in_rain.gif'] ;

class _Start_ScreenState extends State<Start_Screen> {
  @override

  void initState() {

    setState(() {
      backgroundMusic == true ? Sounds.playBackground_Rain_Noise(): Sounds.stop_Rain_Noise() ;
    });

    isPressed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
          children:
          [
          Image(image: AssetImage(background[Random().nextInt(2)]) ,width: double.infinity,fit: BoxFit.fill),
            ClipPath(
              clipper:Tringle() ,
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.7)),
                width: 350,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ListView(
                    children: [Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[

                        Button(width: 100,height: 100,isboxShadow: true,border: true,radius: 50, ColorOfButton: Colors.red, text: 'start', Function: () async{
                          FlameAudio.bgm.stop();
                          setState(() {
                            isPressed=!isPressed;
                          });
                          await Future.delayed(Duration(milliseconds: 300));
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Just_Like_YouGame(),), (route) => false);
                          setState(() {
                            isPressed=!isPressed;
                          });
                        }),
                        const SizedBox(height: 40,),
                        Button(width: Width_Button,height: Height_Button,isboxShadow: false,border: false,radius: 10, ColorOfButton: Colors.blueGrey, text: 'Settings',
                            Function: () async {

                              await  Navigator.of(context).push(
                                  HeroDialogRoute(builder: (context) {
                                    return SettingPopupCard();
                                  }
                                  )
                              );
                            }
                        ),
                        const SizedBox(height: 15,),
                        Button(width: Width_Button+30,height: Height_Button,isboxShadow: false,border: false,radius: 10, ColorOfButton: Colors.blueGrey, text: 'About Us', Function: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding(Story: boarding),)) ;
                        }),
                        const SizedBox(height: 15,),
                        Button(width: Width_Button+60,height: Height_Button,isboxShadow: false,border: false,radius: 10, ColorOfButton: Colors.blueGrey, text: 'Exit', Function: (){
                          SystemNavigator.pop();
                        }),








                      ],
                    ),]
                  ),
                ),
              ),

            ),
          ]
        ),
    );
  }
}


