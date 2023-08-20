import 'package:flutter/material.dart';
import 'package:ui_whatsapp/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Navigation Drawer"),
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xff746abb),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff746abb)),
              currentAccountPicture:
                  // ignore: prefer_const_constructors
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                "https://cdn.pixabay.com/photo/2021/09/22/13/51/woman-6646904_640.jpg",
              )),
              accountName: Text("Amara Akber"),
              accountEmail: Text("amaraakber@gmail.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Page 1"),
            onTap: () {
              Navigator.pushNamed(context, ScreenTwo.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text("Page 2"),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.login_outlined),
            title: Text("Page 3"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Page 4"),
            onTap: () {},
          ),
        ]),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  // ignore: prefer_const_constructors
                  Navigator.pushNamed(context, ScreenTwo.id);
                  // Navigator.push(
                  //     context,
                  //     // ignore: prefer_const_constructors
                  //     MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                // ignore: prefer_const_constructors
                child: Text("Screen 1"),
              ),
            ),
          ]),
    );
  }
}
