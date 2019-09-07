import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:healing_gift/post.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'donate.dart';

List news = [
  {
    "newsBody": "dsc",
    "newsImage":
        "https://images.pexels.com/photos/263399/pexels-photo-263399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "newsTitle":
        "City Hospital is offering a 50% reduction today for medical screening, a week-long reduction.",
    "url": "c",
    "date": "2019-3-4"
  },

  {
    "newsBody": "dsc",
    "newsImage":
    "https://images.pexels.com/photos/325682/pexels-photo-325682.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "newsTitle":
    "Dr. Al-Laayoune Omar Muzaffer announces the opening of a new eye-testing facility in Mosul province.",
    "url": "c",
    "date": "2019-3-4"
  },

  {
    "newsBody": "dsc",
    "newsImage":
    "https://images.pexels.com/photos/263399/pexels-photo-263399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "newsTitle":
    "City Hospital is offering a 50% reduction today for medical screening, a week-long reduction.",
    "url": "c",
    "date": "2019-3-4"
  },


];


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}


class _DashboardState extends State<Dashboard> {


  var currentPage = 0;

  Widget callPage(int pos){
    switch(pos){
      case 2 : return Donate();
      case 1 : return Post();
      break;
      default: return FirstPage();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(currentPage),
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 0,
//          activeIconColor: Colors.teal,
        circleColor: Colors.teal,
        inactiveIconColor: Colors.teal,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.add, title: "Post"),
          TabData(iconData: Icons.monetization_on, title: "Donation")
        ],
        onTabChangedListener: (position) {


          setState(() {
            currentPage = position;
          });

        },
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: <Widget>[

              SizedBox(height: 80.0),

              Container(
               child: SvgPicture.asset("assets/healling.svg", width: 120.0),
              ),
              
              SizedBox(height: 25.0,),
              Container(
            child: Text("Healling Gift",style: TextStyle(color: Colors.teal,fontFamily: "omar",fontSize: 24.0),),
        )
            ],
          ),
        )
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Healing Gift"),
      ),
    );
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 245,245,245),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(20.0),
            child: Text("Recommended",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
          ),


      RecomentList(),

          Container(
            margin: EdgeInsets.only(bottom:10.0,left: 10.0,right: 10.0),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  hintText: "Search for agent",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey,
                  ),
                  hintStyle: TextStyle(color: Colors.blueGrey)),
            ),
          ),
          CardListview(),
          Wrap(
            children: <Widget>[
              MyCard(
                  title:
                  "I have kidney failure, I need an operation, I don't have the full amount, I need help, I've seen a lot of doctors, but it costs a lot of money.",
                  name: "Nora Mudhaffar",
                  img:
                  "https://images.pexels.com/photos/2050994/pexels-photo-2050994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                  age: "21"),
              MyCard(
                title:
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using",
                name: "Omar Mudhaffar",
                img:
                "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",age: "19",),

            ],
          ),

          SizedBox(height: 20.0,)
        ],
      ),
    );
  }
}


class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 200.0,
      padding: EdgeInsets.all(5.0),
      child: Text(
        "omar",
        style: TextStyle(color: Colors.white),
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(color: Colors.teal)),
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final String img;
  final String name;
  final String age;

  MyCard({Key key, this.img, this.title, this.name,this.age}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10.0,left: 10.0,right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2),
          ]),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      image: DecorationImage(
                        image: NetworkImage(img),
                        fit: BoxFit.cover,
                      )),
                  height: 70.0,
                  width: 70.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(right: 15.0),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    FontAwesomeIcons.ellipsisV,
                    size: 18.0,
                  ),
                )),
              ],
            ),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.grey),
            )),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Age : ",
                      style: TextStyle(fontSize: 15.0, color: Colors.teal),
                    ),
                    Text(age,
                        style: TextStyle(
                            color: Color.fromARGB(255, 188, 128, 46))),
                  ],
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Abril 2019,5",
                    style: TextStyle(color: Colors.black54, fontSize: 12.0),
                  ),
                )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
            alignment: Alignment.centerLeft,
            child: Text(title,
                style: TextStyle(color: Colors.blueGrey),
                textAlign: TextAlign.justify),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "# ",
                  style: TextStyle(color: Colors.teal),
                ),
                Text("Address"),
              ],
            ),
            subtitle: Container(
                alignment: Alignment.centerLeft,
                child: Text("Baghdad-Dora, 60 street")),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "# ",
                      style: TextStyle(color: Colors.teal),
                    ),
                    Text("Disease"),
                  ],
                ),
                subtitle: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Kidney failure.")),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: FlatButton(
                    onPressed: () {},
                    child: Text("More Details",
                        style: TextStyle(color: Colors.blueGrey))),
              )),
              Expanded(
                  child: Container(
                child: Icon(
                  Icons.chat_bubble,
                  color: Colors.deepOrangeAccent,
                ),
              )),
              Expanded(
                  child: Container(
                child: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
              ))
            ],
          ),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }
}

class CardListview extends StatelessWidget {
  const CardListview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 190.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: news.length,
          itemBuilder: (BuildContext context, int pos) {
            return ItemCard(
                newsBody: news[pos]["newsBody"],
                newsImage:news[pos]["newsImage"],
                newsTitle:news[pos]["newsTitle"],
                url: news[pos]["url"],
                date: news[pos]["date"]);
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String newsTitle;
  final String newsBody;
  final String newsImage;
  final String url;
  final String date;

  const ItemCard(
      {Key key,
      this.newsTitle,
      this.newsBody,
      this.newsImage,
      this.url,
      this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 0.0),
      child: Container(
          height: 190.0,
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              // boxShadow: [
              //   BoxShadow(blurRadius: 1.0,spreadRadius: 1.0,color: Colors.black)
              // ],
              image: DecorationImage(
                  image: NetworkImage(newsImage), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 190.0,
                width: 300.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        newsTitle,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(14.0),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.white,
                  size: 16.0,
                ),
              ),
              InkWell(
                child: Container(
                  height: 190.0,
                  width: 300.0,
                ),
              )
            ],
          )),
    );
  }
}


class RecomentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 110.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Recomended("https://image.freepik.com/free-photo/male-doctor_101945-639.jpg",Icon(Icons.remove_red_eye,size: 17.0,)),
          Recomended("https://image.freepik.com/free-photo/beautiful-young-doctor-white-medical-gown_85574-6555.jpg",Icon(FontAwesomeIcons.heartbeat,size: 17.0,)),
          Recomended("https://image.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7781.jpg",Icon(FontAwesomeIcons.bone,size: 17.0,)),
          Recomended("https://image.freepik.com/free-photo/friendly-doctor-with-notebook_23-2147796565.jpg",Icon(FontAwesomeIcons.brain,size: 17.0,)),
          Recomended("https://images.pexels.com/photos/2050994/pexels-photo-2050994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",Icon(FontAwesomeIcons.xRay,size: 17.0,)),
        ],
      ),
    );
  }
}


class Recomended extends StatelessWidget {

  final String img;
  final Icon icon;

  Recomended(this.img,this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:0.0,left: 10.0,right: 10.0),
      child: Column(
        
        children: <Widget>[
          

          
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(500.0),

             border: Border.all(color: Colors.teal,width: 3.0,style: BorderStyle.solid),
             image: DecorationImage(image: NetworkImage(img),fit: BoxFit.cover)
           ),
           width: 65.0,
           height: 65.0,
         ),

          SizedBox(height:10.0),

          Container(
            child: icon,
          )
        ],
      ),

    );
  }
}
