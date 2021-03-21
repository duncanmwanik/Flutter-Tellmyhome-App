import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pixel/GLOBALS.dart';


/////////////Firebase//////////////////////////////////////////

FirebaseDatabase database = new FirebaseDatabase();
DatabaseReference db = database.reference();

///////////////////////////////////////////////////////////////


class AddSwitch extends StatefulWidget {
  @override
  _AddSwitchState createState() => _AddSwitchState();
}

class _AddSwitchState extends State<AddSwitch> {
  String hubName;
  String switchNameHub;
  String wifiNameHub;
  String wifiPasswordHub;
  String switchNameNone;
  String wifiNameNone;
  String wifiPasswordNone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
          backgroundColor: Colors.white10,
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
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
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.shade300),
                          child: Center(
                            child: Text('Connect to hub',
                              style: TextStyle(fontFamily: "ub",
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38),),
                          )
                        ),
                      ),

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
                              switchNameHub = value;
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
                              hintText: 'Switch Name',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              wifiNameHub = value;
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              wifiPasswordHub = value;
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                            onPressed: () async {
                              db.child('users/$userName/$hub').update({
                                '$switchNameHub' : 'false'
                              });
                              print('$userName');
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 80,
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
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade300),
                            child: Center(
                              child: Text('No hub', style: TextStyle(fontFamily: "ub",
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),),
                            )
                        ),
                      ),
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
                              switchNameNone = value;
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
                              hintText: 'Switch Name',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              wifiNameNone = value;
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
                              hintText: 'WiFi Name',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              wifiPasswordNone = value;
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
                              hintText: 'WiFi Password',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                            onPressed: () async {
                              db.child('users/$userName/Switches').update({
                                '$switchNameHub' : false
                              });
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 200),
            ],
          )),
    );
  }
}
