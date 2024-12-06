import 'package:flutter/material.dart';

import 'post.dart';

class ListviewPosts extends StatelessWidget {
  const ListviewPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:  const [
        Post(accountimagePath:"assets/route2.jpg" ,name: "Route", time: "6h", imagePath: "assets/route1.jpg"),
        Post(accountimagePath:"assets/model4.jpg" ,name: "Amal", time: "1h", imagePath: "assets/image4.jpg"),
        Post(accountimagePath:"assets/model3.jpg" ,name: "Mohamed", time: "2h", imagePath: "assets/image3.jpg"),
      ],
    );
  }
}