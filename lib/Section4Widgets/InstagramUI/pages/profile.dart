import 'package:basic_flutter/Section4Widgets/InstagramUI/widgets/profile_picture.dart';
import 'package:basic_flutter/Section4Widgets/InstagramUI/widgets/stats_profile.dart';
import 'package:basic_flutter/Section4Widgets/InstagramUI/widgets/status_profile.dart';
import 'package:basic_flutter/Section4Widgets/InstagramUI/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class ProfileIG extends StatelessWidget {
  const ProfileIG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Parkah',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Profile Picture
          const Row(
            children: [
              ProfilePicture(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StatsProfile(number: 18, title: 'Posts'),
                    StatsProfile(number: 4200, title: 'Followers'),
                    StatsProfile(number: 20, title: 'Following')
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Parkah',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          // Bio
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: RichText(
              text: const TextSpan(
                  text:
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                        text: "#Hastag", style: TextStyle(color: Colors.blue))
                  ]),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Learn more',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          // Edit Profile
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)))),
              child: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          // Status Profile
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                StatusProfile(String: 'Stories'),
                StatusProfile(String: 'Dream'),
                StatusProfile(String: 'Food'),
                StatusProfile(String: 'Game'),
                StatusProfile(String: 'Story'),
                StatusProfile(String: 'Hobby'),
                StatusProfile(String: 'Study'),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              TabItem(
                isSelected: true,
                icon: Icons.grid_on_outlined,
              ),
              TabItem(
                isSelected: false,
                icon: Icons.person_pin_outlined,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 18,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemBuilder: (context, index) => Image.network(
              'https://picsum.photos/id/${250 + index}/200/300',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
