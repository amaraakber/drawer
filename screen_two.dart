import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = "screen_two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Navigation Drawer"),
        // ignore: prefer_const_constructors
        backgroundColor: Color(0xff746abb),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2021/09/22/13/51/woman-6646904_640.jpg",
                      )),
                      title: Text("Amara Akber"),
                      onTap: () {
                        Navigator.pushNamed(context, ScreenTwo.id);
                      },
                    );
                  })),
            )
          ]),
    );
  }
}
