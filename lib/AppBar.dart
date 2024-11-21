import 'package:flutter/material.dart';
import 'main.dart';
import 'showmodal.dart';

class Appbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Appbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Hi Antenio!"),
        ),
        actions: [
          Iconbtn(text: "", icon: Icon(Icons.search)),
        ],
        bottom: PreferredSize(
            preferredSize: Size(0, 170),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(
                  width: 20,
                ),
                floatAction(
                    "HOTELS", Icon(Icons.home), Colors.cyan[100]!, Colors.cyan),
                SizedBox(
                  width: 10,
                ),
                floatAction("FLIGHTS", Icon(Icons.flight),
                    Colors.deepOrange[100]!, Colors.deepOrange[400]!),
                SizedBox(
                  width: 10,
                ),
                floatAction("FOODS", Icon(Icons.fastfood_rounded),
                    Colors.orange[100]!, Colors.orange),
                SizedBox(
                  width: 10,
                ),
                floatAction("EVENTS", Icon(Icons.event_note),
                    Colors.purple[100]!, Colors.pink),
                SizedBox(
                  width: 10,
                ),
              ]),
            )),
        backgroundColor: Colors.white,
      ),
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////

      drawer: DrawerOf(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Best Destination",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SEE ALL",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  imageUrl(
                      "https://i.pinimg.com/236x/75/5b/89/755b89c29c7a3e93a70f6f7251ad0b1b.jpg"),
                  imageUrl(
                      "https://i.pinimg.com/236x/7b/93/1f/7b931f45e256a81e6b3cf89e6fe696a6.jpg"),
                  imageUrl(
                      "https://i.pinimg.com/236x/6c/66/ca/6c66cab3e7ccbb914721c122603e2e9f.jpg"),
                  imageUrl(
                      "https://i.pinimg.com/236x/e3/16/d3/e316d39ca8c673c7666b7e2ecd84ade4.jpg"),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  imageUrl(
                      "https://i.pinimg.com/236x/43/37/59/4337599df371d6a2658aabc7225eaaab.jpg"),
                  imageUrl(
                      "https://i.pinimg.com/236x/52/73/d1/5273d1ba6c6ae69c1bbb7f3a5275a032.jpg"),
                  imageUrl(
                      "https://i.pinimg.com/474x/bd/7a/ef/bd7aef38e27030b28f7a6ceac3298c02.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////
      //////////////////////////

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
            onPressed: () {},
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

  Widget Iconbtn({required String text, required Icon icon}) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("waiting...."),
          ),
        );
      },
      icon: icon,
      focusColor: Colors.black,
    );
  }
}

////////////////////////////////////////////////////
Widget listTilefun({required String text, required Icon icon}) {
  return ListTile(
    title: Text(text),
    leading: icon,
  );
}

Widget DrawerOf() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 100),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              "https://cdn-icons-png.flaticon.com/128/3237/3237472.png",
            ),
          ),
          Center(child: Text("Name :")),
          SizedBox(height: 30),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
          listTilefun(
            text: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    ),
  );
}

Widget imageUrl(String img) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    color: Colors.white24,
    elevation: 10,
    margin: EdgeInsets.all(10),
    child: Container(
      width: 200,
      height: 200,
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          img,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
