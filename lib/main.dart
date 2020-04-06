import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() => runApp(
  XylophoneApp());

class XylophoneApp extends StatelessWidget {

void playSound(int soundNumber){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildXylophone({Color color,int soundNumber}){
  return Expanded(
    child: FlatButton(
    color: color,
    onPressed: (){
      playSound(soundNumber);
    },),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               buildXylophone(color:Colors.red,soundNumber:1),
               buildXylophone(color:Colors.orange,soundNumber:2),
               buildXylophone(color:Colors.yellow,soundNumber:3),
               buildXylophone(color:Colors.green,soundNumber:4),
               buildXylophone(color:Colors.teal,soundNumber:5),
               buildXylophone(color:Colors.blue,soundNumber:6),
               buildXylophone(color:Colors.indigo,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
