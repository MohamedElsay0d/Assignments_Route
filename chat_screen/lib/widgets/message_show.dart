import 'package:flutter/material.dart';

/*
class MessageShow extends StatelessWidget {

  String smg ; 
  bool isMe ;
  bool isImage ;
  MessageShow(this.smg,this.isMe , {this.isImage = false,super.key});  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 6),
        padding: EdgeInsets.all(10),
         decoration: BoxDecoration(
          color: isMe ? const Color(0xFFE2FFC7) : Colors.white,
          borderRadius: BorderRadius.circular(10).copyWith(
            bottomLeft: Radius.circular(isMe ? 10 : 0),
            bottomRight: Radius.circular(isMe ? 0 : 10),
          ),
        ),
        child: Text(
          smg , 
         style: const TextStyle(color: Colors.black),),
      ),
    );
  }
}
*/

class MessageShow extends StatelessWidget {
  final String? message; 
  final String? imageUrl; 
  final bool isSentByMe;

  MessageShow({this.message, this.imageUrl, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSentByMe ? const Color(0xFFE2FFC7) : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: isSentByMe ? const Radius.circular(12) : Radius.zero,
            bottomRight: isSentByMe ? Radius.zero : const Radius.circular(12),
          ),
        ),
        child: imageUrl != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrl!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              )
            : Text(
                message ?? '',
                style: const TextStyle(fontSize: 16,color: Colors.black),
              ),
      ),
    );
  }
}