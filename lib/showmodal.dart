import 'package:flutter/material.dart';

class Showmodal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Showmodal> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image.network(
          //   "",
          //   fit: BoxFit.cover,
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
          Positioned(
            top: 20,
            left: 0,
            child: Center(
              child: floatAction("", Icon(Icons.keyboard_arrow_left),
                  Colors.black, Colors.white),
            ),
          ),
        ],
      ),

      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////

      backgroundColor: Colors.blue,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          floatAction_1("", Icon(Icons.add), Colors.black, Colors.white),
      /////////////////////////////////

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (_currentIndex) {
              case 0:
                Navigator.pushNamed(context, '/AppBar');
                break;
              case 1:
                break;
              case 2:
                break;
              case 3:
                Navigator.pushNamed(context, '/Showmodal');
                break;
              default:
                print("Default action");
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: ""),
        ],
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  //////////////////////////
  Widget floatAction(String text, Icon icon, Color col, Color colIcon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              switch (text) {
                case '':
                  Navigator.pushNamed(context, '/AppBar');
                  break;
                case 'Add':
                  // Your action for "Add"
                  print("Add button pressed");
                  break;
                default:
                  print("Default action");
              }
            },
            backgroundColor: col,
            foregroundColor: colIcon,
            child: icon,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        SizedBox(height: 6),
      ],
    );
  }

  ////////////////////////////////////////////////////
  Widget listTilefun({required String text, required Icon icon}) {
    return ListTile(
      title: Text(text),
      leading: icon,
    );
  }

  ////////////////////////////////////////////////////
  Widget floatAction_1(String text, Icon icon, Color col, Color colIcon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Column(
                  children: [
                    listTilefun(text: "Option 1", icon: Icon(Icons.vaccines)),
                    listTilefun(
                        text: "Option 2", icon: Icon(Icons.accessibility)),
                    listTilefun(
                        text: "Option 3", icon: Icon(Icons.access_alarm)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            backgroundColor: col,
            foregroundColor: colIcon,
            child: icon,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        SizedBox(height: 6),
      ],
    );
  }
}
