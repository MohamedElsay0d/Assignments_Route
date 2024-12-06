import 'package:facebook_task/widgets/create_post.dart';
import 'package:facebook_task/widgets/create_story.dart';
import 'package:flutter/material.dart';

class HomeTabbar extends StatelessWidget {
  const HomeTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CreatePost(),
          CreateStory(),
          
        
      ]),
    );
  }
}