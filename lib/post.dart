import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[

            SizedBox(height: 10.0),
            
            Container(
              alignment: Alignment.center,
          child: Text("New case.",style: TextStyle(color: Colors.teal,fontFamily: "omar",fontSize: 30.0),),
        ),
            
            SizedBox(
              height: 26.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Pathology name",
                enabled: true,
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 16.0,
            ),

            Row(
              children: <Widget>[
                Expanded(child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Blood pressure.",
                    enabled: true,
                    border: OutlineInputBorder(),
                  ),
                )),

                SizedBox(width: 10.0),

                Expanded(child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Age",
                    enabled: true,
                    border: OutlineInputBorder(),
                  ),
                )),

              ],
            ),

            SizedBox(
              height: 16.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Phone Number",
                prefixIcon: Icon(Icons.phone,color: Colors.orange,),
                enabled: true,
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 16.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Address",
                enabled: true,
                prefixIcon: Icon(Icons.map,color: Colors.green,),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 16.0,
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "About the case",
                enabled: true,
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15.0),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Post",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.teal,
              padding: EdgeInsets.all(19.0),
            ),

            SizedBox(
              height: 26.0,
            ),

          ],
        ),
      ),
    );
  }
}
