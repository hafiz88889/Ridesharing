import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Chat"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                // Incoming Message
                _buildChatBubble(
                  message: "Good Evening!",
                  isSentByMe: false,
                  time: "8:29 pm",
                  avatar: "assets/avatar.png",
                ),
                _buildChatBubble(
                  message: "Welcome to Car2go Customer Service",
                  isSentByMe: false,
                  time: "8:29 pm",
                  avatar: "assets/avatar.png",
                ),
                // Outgoing Message
                _buildChatBubble(
                  message: "Welcome to Car2go Customer Service",
                  isSentByMe: true,
                  time: "8:29 pm",
                ),
                _buildChatBubble(
                  message: "Welcome to Car2go Customer Service",
                  isSentByMe: false,
                  time: "8:29 pm",
                  avatar: "assets/avatar.png",
                ),
                _buildChatBubble(
                  message: "Welcome to Car2go Customer Service",
                  isSentByMe: true,
                  time: "Just now",
                ),
              ],
            ),
          ),
          // Message Input
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Handle sending a message
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble({
    required String message,
    required bool isSentByMe,
    required String time,
    String? avatar,
  }) {
    return Row(
      mainAxisAlignment:
      isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isSentByMe && avatar != null)
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
            radius: 16.0,
          ),
        if (!isSentByMe) SizedBox(width: 8.0),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 4.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.green.shade50 : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12.0).copyWith(
                bottomLeft: isSentByMe ? Radius.circular(12.0) : Radius.zero,
                bottomRight: isSentByMe ? Radius.zero : Radius.circular(12.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isSentByMe) SizedBox(width: 8.0),
      ],
    );
  }
}
