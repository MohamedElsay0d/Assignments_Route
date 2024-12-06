import 'package:facebook_task/widgets/home_tabbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Facebook',
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_circle_outline, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.message_outlined, color: Colors.black),
              onPressed: () {},
          )] , 
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home,size: 33,)),
                Tab(icon: Icon(Icons.ondemand_video,size: 32,)),
                Tab(icon: Icon(Icons.store_outlined,size: 32,)),
                Tab(icon: Icon(Icons.people_outline,size: 32,)),
                Tab(icon: Icon(Icons.notifications_none,size: 32,)),
                Tab(
                  icon: CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/messi.jpg'),
                  ),
                ),
            ]
            )
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTabbar(),
            Center(child: Text('Video')),
            Center(child: Text('Store')),
            Center(child: Text('People')),
            Center(child: Text('Notifications')),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }
}