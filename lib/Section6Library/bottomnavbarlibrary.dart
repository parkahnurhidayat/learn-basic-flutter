import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBarLibrary extends StatefulWidget {
  const BottomNavBarLibrary({super.key});

  @override
  State<BottomNavBarLibrary> createState() => _BottomNavBarLibraryState();
}

class _BottomNavBarLibraryState extends State<BottomNavBarLibrary> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(faker.image.image(random: true)),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(faker.internet.email()),
        ),
      ),
      const Center(child: Text('Favorite')),
      const Center(child: Text('Search')),
      const Center(child: Text('Profile')),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title: const Text('Faker'),
        centerTitle: true,
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: GNav(
        selectedIndex: 0,
        onTabChange: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        tabMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        color: Colors.blueGrey,
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.transparent),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        tabBorderRadius: 25,

        gap: 10,
        duration: const Duration(milliseconds: 500),
        // rippleColor: Colors.greenAccent,
        // hoverColor: Colors.greenAccent,
        tabBackgroundGradient: const LinearGradient(
          colors: [Colors.greenAccent, Colors.lightGreenAccent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),

        curve: Curves.easeInOut,
        haptic: true,
        tabs: const [
          GButton(icon: Icons.home_outlined, text: 'Home'),
          GButton(icon: Icons.favorite_outline, text: 'Favorite'),
          GButton(icon: Icons.search_outlined, text: 'Search'),
          GButton(icon: Icons.person_outline, text: 'Profile'),
        ],
      ),
    );
  }
}
