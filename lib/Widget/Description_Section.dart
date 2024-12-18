import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Text("Your Android knowledge and skill set are highly valuable when building with Flutter, because Flutter relies on the mobile operating system for numerous capabilities and configurations. Flutter is a new way to build UIs for mobile, but it has a plugin system to communicate with Android (and iOS) for non-UI tasks. If you're an expert with Android, you don't have to relearn everything to use Flutter.",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(.7),),textAlign: TextAlign.justify,),
        SizedBox(height: 20,),
        Row(
          children: [
            Text("Course Length : ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),

            Icon(Icons.timer,color: Color(0xFF674AEF),),
            SizedBox(width: 5,),
            Text("26 hours",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Text("Ratting : ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
            Icon(Icons.star,color: Colors.amber,),
            SizedBox(width: 5,),
            Text("4.5",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
          ],
        )
      ],
    ),
    );
  }
}
