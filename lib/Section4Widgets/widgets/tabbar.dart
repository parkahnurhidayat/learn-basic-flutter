import 'package:flutter/material.dart';

class ShowTabBar extends StatelessWidget {
  const ShowTabBar({
    super.key,
    required this.tabC,
  });

  final TabController tabC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Whatsapp',
          style: TextStyle(color: Colors.white),
        ),
        bottom: TabBar(
          controller: tabC,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: const EdgeInsets.only(bottom: 10),
          unselectedLabelStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 41, 183, 46),
          ),
          tabs: const [
            Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            Text(
              "Chats",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Status",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Calls",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabC,
        children: const [
          Center(
            child: Text("Camera"),
          ),
          Center(
            child: Text("Chats"),
          ),
          Center(
            child: Text("Status"),
          ),
          Center(
            child: Text("Calls"),
          ),
        ],
      ),
    );
  }
}
