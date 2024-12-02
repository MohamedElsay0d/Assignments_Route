import 'package:chat_screen/widgets/message_input.dart';
import 'package:chat_screen/widgets/message_show.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFF128C7E),
        titleSpacing: 0,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/person_image.jpg")
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mohamed',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Online',
                  style: TextStyle(fontSize: 12, color: Colors.white60),
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
          },
        ),
        actions: const[
          Icon(Icons.videocam),
          SizedBox(width: 20),
          Icon(Icons.call),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
        ],
      ),
      body: Stack(
        children: [ ListView(
          children: [
            MessageShow(isSentByMe: false , message: "Hello",),
            MessageShow(isSentByMe: true , message: "Hello",),
            MessageShow(isSentByMe: false ,
              message: '''Hey! Have you ever thought about\nhow random moments can sometimes\nbe the best ones in life ?''',),  
            MessageShow(
              isSentByMe: false,
              imageUrl: "https://th.bing.com/th/id/OIP.ualuYPnpo4JUVbsnylKDXQHaHa?rs=1&pid=ImgDetMain",
              )
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: MessageInput(),)
      ]),
    );
  }
}