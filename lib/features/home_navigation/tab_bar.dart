import 'package:flutter/material.dart';
import 'package:pick_time/features/home_navigation/views/home_page.dart';
import 'package:pick_time/features/home_navigation/views/my_queues.dart';
import 'package:pick_time/features/home_navigation/views/profile_page.dart';


class MyBottomTabBarApp extends StatelessWidget {
  const MyBottomTabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: const TabBarView(
            children: [
              HomePage(),
              Center(child: Text('Search Page')),
              MyQueues(),
              ProfilePage()
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.green,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: "My Queues",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
