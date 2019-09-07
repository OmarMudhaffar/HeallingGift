import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

import 'dashboard.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Donate extends StatefulWidget {
  @override
  _DonateState createState() => _DonateState();
}

var currentPage = 2;

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 40.0),
              Container(
                child: SvgPicture.asset("assets/donate.svg", width: 200.0),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Credit card number",
                  hintText: "xxx-xxx-xxxx",
                  prefixIcon: Icon(Icons.credit_card,color: Colors.green,),
                  enabled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Month",
                        hintText: "Abril",
                        enabled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Year",
                        hintText: "2019",
                        enabled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "CVC",
                        hintText: "xxx",
                        prefixIcon: Icon(Icons.apps),
                        enabled: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Expanded(child: Container())
                ],
              ),
              SizedBox(height: 15.0),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Donate",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.teal,
                padding: EdgeInsets.all(19.0),
              )
            ],
          ),
        ));
  }
}
