import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddHub extends StatefulWidget {
  @override
  _AddHubState createState() => _AddHubState();
}

class _AddHubState extends State<AddHub> {
  AnimationController controller;
  String hubName;
  String wifiName;
  String wifiPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white10,
        body: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  icon: Icon(Icons.cancel_rounded),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () => Navigator.pop(context)),
            ],
          ),
          SizedBox(
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        color: Colors.black38,
                        blurRadius: 20)
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40, left: 20, right: 20, bottom: 15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                color: Colors.black38,
                                blurRadius: 20)
                          ]),
                      child: TextField(
                        onChanged: (value) {
                          hubName = value;
                        },
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontFamily: "ub",
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          hintText: 'Hub Name',
                          hintStyle: TextStyle(
                            fontFamily: "ub",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          filled: true,
                          fillColor: Colors.white30,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                color: Colors.black38,
                                blurRadius: 20)
                          ]),
                      child: TextField(
                        onChanged: (value) {
                          wifiName = value;
                        },
                        obscureText: true,
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontFamily: "ub",
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          hintText: ' Hub WiFi Name',
                          hintStyle: TextStyle(
                              fontFamily: "ub",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          filled: true,
                          fillColor: Colors.white30,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.shade300,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                color: Colors.black38,
                                blurRadius: 20)
                          ]),
                      child: TextField(
                        onChanged: (value) {
                          wifiPassword = value;
                        },
                        obscureText: true,
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontFamily: "ub",
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          hintText: 'Hub WiFi Password',
                          hintStyle: TextStyle(
                              fontFamily: "ub",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black38),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 20.0),
                          filled: true,
                          fillColor: Colors.white30,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 40),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                color: Colors.black38,
                                blurRadius: 20)
                          ]),
                      child: MaterialButton(
                        splashColor: Colors.amber,
                        focusColor: Colors.amber,
                        child: Text(
                          'Add',
                          style: TextStyle(
                            fontFamily: "ub",
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () async {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
