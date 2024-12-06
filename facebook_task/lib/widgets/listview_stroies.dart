import 'package:facebook_task/widgets/story_card.dart';
import 'package:flutter/material.dart';

class ListViewStrories extends StatelessWidget {
  const ListViewStrories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(imagePath:  "assets/messi.jpg",isCreate: true),
          StoryCard(imagePath:  "assets/model1.jpg",isCreate: false),
          StoryCard(imagePath:  "assets/model2.jpg",isCreate: false),
          StoryCard(imagePath:  "assets/model3.jpg",isCreate: false),
          StoryCard(imagePath:  "assets/model4.jpg",isCreate: false),
        ],
      ),
    );
  }
}