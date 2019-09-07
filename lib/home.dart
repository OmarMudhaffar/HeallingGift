import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dashboard.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  TextEditingController emaillogin = TextEditingController();
  TextEditingController passlogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Spacer(flex: 3,),

                  Container(
                    alignment: Alignment.center,
                    child: Text("Healing Gift", style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontSize: 33.0,
                        fontFamily: "Omar"),),
                  ),

                  SizedBox(height: 70.0,),

                  TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    controller: emaillogin,
                    decoration: InputDecoration(
                      hintText: 'E-maill',
                      hintStyle: TextStyle(fontSize: 16),
                      prefixIcon: Icon(Icons.email, color: Colors.blueGrey,),
                      contentPadding: EdgeInsets.all(16),

                    ),
                  ),

                  SizedBox(height: 15.0),

                  TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    controller: passlogin,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 16),
                      prefixIcon: Icon(Icons.vpn_key, color: Colors.blueGrey,),
                      contentPadding: EdgeInsets.all(16),

                    ),
                  ),


          SizedBox(height: 30.0,),

          FlatButton(onPressed: (){
            var route = MaterialPageRoute(builder: (context)=> Dashboard());
            Navigator.of(context).push(route);
          },
              color: Colors.teal,
              child: Container(
                padding: EdgeInsets.all(15.0),
            child: Text("Login",style: TextStyle(color: Colors.white),),
            alignment: Alignment.center,
          )),

                  SizedBox(height: 30.0,),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(child: Divider(color: Colors.black38,)),
                        Expanded(child: Container(
                          child: Text(
                              "OR", style: TextStyle(fontSize: 17.0)),
                          alignment: Alignment.center,
                        )),
                        Expanded(child: Divider(color: Colors.black38,))
                      ],
                    ),
                    alignment: Alignment.center,
                  ),

                  SizedBox(height: 30.0,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(child: Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () async {

                            },
                            child: SvgPicture.asset(
                              "assets/facebook.svg", width: 50.0,
                              height: 50.0,),
                          )
                      )),
                      Expanded(child: Container(

                          child: InkWell(
                            onTap: () async {

                            },
                            child: SvgPicture.asset(
                              "assets/google-plus.svg", width: 50.0, height: 50.0,),
                          )
                      )),
                      Expanded(child: Container(

                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () async {

                            },
                            child: SvgPicture.asset(
                              "assets/twitter.svg", width: 50.0, height: 50.0,),
                          )
                      ))


                    ],
                  ),

Spacer(flex: 2,),

                  Row(
                    children: <Widget>[

                      Expanded(child: InkWell(

                        onTap: () {
                          Navigator.of(context).pop();
                        },

                        child: Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          alignment: Alignment.center,
                          child: Text("Create new account?",style: TextStyle(color: Colors.teal,fontSize: 14.0)),
                        ),
                      )),


                    ],
                  ),


                ]
            )

        )

    );
  }
}