import 'package:alordnjnah/wiget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class screen3 extends StatelessWidget {
  const screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("welcome to jordan"),
          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.location_on)),
              IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Trips To Amman",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Divider(
                height: 20,
                color: Colors.black,
                thickness: 5,
              ),
              Image(
                  image: NetworkImage(
                      "https://www.jannah.jo/images/hotel-img2.png")),
              URlClass(
                myfunction: amman_function,
                myplatformIcon: Icons.location_city,
                myplatformSubTitle: "welcome to amman",
                myplatformTitle: "Amman",
                myimageurl: "https://upload.wikimedia.org/wikipedia/ar/2/29/Amman_100.PNG",
              ),
              Divider(
                height: 20,
                color: Colors.black,
                thickness: 5,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Trips To Petra",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Image(
                  image: NetworkImage(
                      "https://www.jannah.jo/images/slide-img1.jpg")),
              URlClass(
                myfunction: petra_function,
                myplatformIcon: Icons.location_city,
                myplatformSubTitle: "welcome to Petra",
                myplatformTitle: "Petra",
                myimageurl: "https://www.uop.edu.jo/_Layouts/UOP_SP/EN/Images/newPetraLogo.png",
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.brown.shade300, Colors.brown])),
            child: ListView(children: [
                
              Container(
                child: URlClass(
                  myfunction: about_function,
                  myplatformIcon: Icons.location_city,
                  myplatformSubTitle: "",
                  myplatformTitle: "",
                  myimageurl: "https://www.jannah.jo/images/logo.png",
                ),
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.jannah.jo/photos/db545df4-9656-4bdd-a0f7-cb271a103b8a.png"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "Learn about the features of the national program Our Jordan is a Paradise, through the unique experience designed in tourism throughout Jordan and for all luck, with support exceeding 50%, choose your destination or read the full contact under each experience or details and destination, from one of the tourism offices accreditation in the program",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
          Column(
            children: [
              URlClass(
                myfunction: Facebook_Function,
                myplatformIcon: Icons.facebook,
                myplatformSubTitle: "join our facebook page",
                myplatformTitle: "Facebook",
                myimageurl: "https://scontent.famm2-3.fna.fbcdn.net/v/t39.30808-6/306086170_157936780190166_8476213739755271465_n.png?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OS08gK4BU0sAX-w4IIb&tn=LrvjNkbU4yKSeKoX&_nc_ht=scontent.famm2-3.fna&oh=00_AT-wKEQCtjFnLDjFNZgpMZIqVg5feOW7swcATJiCun6wiA&oe=6331AB96",
              ),
              URlClass(
                myfunction: instagram_function,
                myplatformIcon: Ionicons.logo_instagram,
                myplatformSubTitle: "join our instagram page",
                myplatformTitle: "Instagram",
                myimageurl: "https://almrfanews.com/wp-content/uploads/2021/08/EC02neNXoAAMyCl.jpg",
              ),  URlClass(
                myfunction: twitter_function,
                myplatformIcon: Ionicons.logo_twitter,
                myplatformSubTitle: "join our twitter page",
                myplatformTitle: "twitter",
                myimageurl: "https://pbs.twimg.com/profile_banners/1134613465396645888/1655716955/1080x360",
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
