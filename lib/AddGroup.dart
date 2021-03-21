import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pixel/GLOBALS.dart';
import 'package:google_fonts/google_fonts.dart';
/////////////Firebase//////////////////////////////////////////

FirebaseDatabase database = new FirebaseDatabase();
DatabaseReference db = database.reference();

///////////////////////////////////////////////////////////////
List allSwitches = [];
Map alls = {};
List selected = [];

class AddGroup extends StatefulWidget {
  @override
  _AddGroupState createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  String groupName;


  void generateList() {
    selected = [];
    alls.clear();
    allSwitches.clear();
    mainGroups.forEach((group) {
      final Map<String, dynamic> data = Map.from(ss[group]);
      data.keys.forEach((key) {
        allSwitches.add(key);
        alls['$key'] = false;
      });
    });
  }

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
                height: 200,
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
                              groupName = value;
                            },
                            cursorColor: Colors.black,
                            cursorWidth: 2,
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              hintText: 'Group Name',
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
                              'Click to add switches',
                              style: TextStyle(
                                fontFamily: "ub",
                                color: Colors.black38,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                              generateList();
                              showDialog(
                                context: context,
                                builder: (context) => new AlertDialog(
                                  title: new Text('At least one'),
                                  content: Container(
                                    width: 300,
                                    height: 500,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: BouncingScrollPhysics(),
                                      itemCount: allSwitches.length,
                                      itemBuilder: (context, index) {
                                        String name = allSwitches[index];
                                        return ListTile(
                                          leading: Text('$name'),
                                          trailing: Checkbox(
                                            value: alls[name],
                                            onChanged: (bool value) {
                                              setState(() {
                                                alls[name] = value;
                                              });
                                              if (alls[name] == true &&
                                                  !selected.contains(num)) {
                                                selected.add(allSwitches[index]);
                                              } else {
                                                if (selected.contains(name)) {
                                                  selected.remove(name);
                                                }
                                              }
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
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
                              if (selected.length > 0) {
                                for (var i = 0; i < selected.length; i++) {
                                  bool state = false;
                                  db
                                      .child('users/$userName/Groups/$groupName/')
                                      .update({'$i': 'false'});
                                }
                                print(
                                    'Success!! Added  ${selected.length} switches to group: $groupName');
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (context) => new AlertDialog(
                                    title: new Text('Oops!'),
                                    content: Text(
                                        'Add at least one switch to the group!'),
                                    actions: <Widget>[
                                      new FlatButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: new Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                                print(' Zero Switches Added to the Group!');
                              }
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
