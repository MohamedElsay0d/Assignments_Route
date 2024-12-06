import 'package:flutter/material.dart';

class Post extends StatelessWidget {

  final String name;
  final String time;
  final String imagePath;
  final String accountimagePath;

  const Post({required this.accountimagePath,required this.name, required this.time, required this.imagePath});  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
               CircleAvatar(
                backgroundImage: AssetImage(accountimagePath),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    time,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 4),
                  Icon(Icons.comment_outlined),
                  SizedBox(width: 4),
                  Icon(Icons.share_outlined),
                ],
              ),
              const Icon(Icons.bookmark_border),
            ],
          ),
        ),
      ],
    );
  }
}