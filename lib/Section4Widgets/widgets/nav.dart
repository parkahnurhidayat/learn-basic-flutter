import 'package:basic_flutter/pages/cart.page.dart';
import 'package:basic_flutter/pages/home_page.dart';
import 'package:basic_flutter/pages/profile.page.dart';
import 'package:flutter/material.dart';

class NavigationRoute extends StatelessWidget {
  const NavigationRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigasi'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              color: Colors.blue,
              height: 150,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Parkah Nurhidayat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'parkah@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              leading: const Icon(Icons.people),
              title: const Text('Profile'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ),
                );
              },
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
