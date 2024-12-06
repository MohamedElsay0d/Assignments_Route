import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  StoryCard({required this.imagePath,required this.isCreate});
  String imagePath; bool isCreate ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          if (isCreate)
            Positioned(
              bottom: 10,
              left: 35,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(0xFF1877F2),
                ),
              ),
            ),
          Positioned(
            top: 10,
            child: isCreate ? Container() :  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(imagePath),
                  ),
          ),
        ],
      ),
    );
  }
}