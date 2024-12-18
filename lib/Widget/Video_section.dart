import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {

  List VideoList=[
    "Introduction to Flutter"
    "Installing Flutter on WIndow",
    "Setup Emulator on Windowos",
    "Creating our FIrst App"

  ];
   VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: VideoList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context,index){
      return ListTile(
        leading: Container(
          padding: EdgeInsets.all(5),
          decoration:BoxDecoration(
            color: index == 0 ? Color(0xFF674AEF) : Color(0xFF674AEF).withOpacity(.6),
            shape: BoxShape.circle
          ) ,
          child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 30,),
        ),
        title: Text(VideoList[index]),
        subtitle: Text("20 Min 50 Sec"),
      );
    });
  }
}
