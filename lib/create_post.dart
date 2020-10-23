import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class createPost extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(
              "Create Post",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.redAccent,
          leading: IconButton(icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            ),
            onPressed: (){
            Navigator.pop(context, false);
            },
          ),
        ),
        body: Form(
            child: Container(
            margin: EdgeInsets.fromLTRB(10, 80, 10, 90),
                  child: ListView(
                      children: <Widget> [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Row(
                            children: <Widget> [
                              IconButton(
                                icon: Icon(Icons.account_circle, size: 60,),
                               ),
                              Container(
                                margin: EdgeInsets.only(left: 35, top: 20),
                                child: Text(
                                  "Anselmo Oduca",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50, left: 10, right: 10),
                          child: TextField(

                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 25,
                            ),
                            decoration: new InputDecoration(
                              hintText: "What's on your mind?",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(240, 25, 30, 0),
                          child: RaisedButton(
                            padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.redAccent,
                            child: Text(
                              "POST",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: (){

                            },
                          ),
                        )
                      ],
                  ),


          decoration: BoxDecoration(
                 border: Border.all(color: Colors.black)
             ),
            ),
        ),
      );

  }
}