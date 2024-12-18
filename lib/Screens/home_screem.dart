import 'package:education/Screens/Course_Screen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  List catNames = [
    "Category",
    "Classes",
    "Free Courses",
    "book Stores",
    "Live Course",
    "LeaderBoard",
  ];
  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7C7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];

  List<Icon> catIcons =[
Icon(Icons.category,color: Colors.white,size:30 ,),
    Icon(Icons.video_library,color: Colors.white,size:30 ,),
    Icon(Icons.assignment,color: Colors.white,size:30 ,),
    Icon(Icons.store,color: Colors.white,size:30 ,),
    Icon(Icons.play_circle_fill,color: Colors.white,size:30 ,),
    Icon(Icons.emoji_events,color: Colors.white,size:30 ,),
  ];
  List imgList = [
    "Flutter",
    "React Native",
    "Python",
    "C#",
  ];

   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children: [Container(padding: EdgeInsets.only(top: 15,left:15,right: 15,bottom: 10 ),
  decoration: BoxDecoration(color: Color(0xFF674AEF),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
  
  ),
    child: Column(
    //  crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.dashboard,size: 30,color: Colors.white,),
            Icon(Icons.notifications,size: 30,color: Colors.white,)],
        ),
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.only(left: 3,bottom: 15),
        child: Text("Hi Proggrammer",style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,color: Colors.white
        ),),
        ),
        Container(
          margin: EdgeInsets.only(top: 5,bottom: 20),
          width: MediaQuery.of(context).size.width,
          height: 55,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search here....",hintStyle: TextStyle(color: Colors.black.withOpacity(.5),
            
            ),
              prefixIcon: Icon(Icons.search,size: 25,)
            ),
          ),
        )
      ],),
    
  ),
  Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),child: Column(
    children: [
      GridView.builder(
        itemCount: catNames.length,
        shrinkWrap:true,
          physics:NeverScrollableScrollPhysics() ,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1.1),
        itemBuilder: (context,index){
          return Column(
            children: [Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: catColors[index],
              shape: BoxShape.circle,),
              child: Center(
                child: catIcons[index],
              ),
            ),
            SizedBox(height: 10,),
              Text(catNames[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(.7)
              ),)
            ],
          );
        },
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Courses",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
          Text("See All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xFF674AFE),),)
        ],),SizedBox(height:10),
      GridView.builder(
        itemCount: imgList.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: (MediaQuery.of(context).size.height - 50 -25)  /  (4.5 * 240),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,

      ),
        itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CourseScreen(img :imgList[index])));

            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
            color: Color(0xFFF5F3FF)
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: Image.asset("images/${imgList[index]}.png",height: 80,width: 100,),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(imgList[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(.6)),),
SizedBox(height: 10,),
                  Text("55 Videos",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.5)),)
                  
                ],
              ),
            ),
          );
        }

      ) ],
  ),)
  ],
),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
          iconSize: 32,
          selectedItemColor: Color(0xFF674AEF),
          selectedFontSize: 18,
          unselectedItemColor: Colors.grey,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.assignment),label:"Courses"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label:"Wishlist"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Account")

      ]),
    );
  }
}
