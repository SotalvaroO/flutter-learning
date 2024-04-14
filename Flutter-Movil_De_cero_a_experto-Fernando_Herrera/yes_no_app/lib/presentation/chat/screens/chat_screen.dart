import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/chat/widgets/another_message_bubble.dart';
import 'package:yes_no_app/presentation/chat/widgets/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/message_field_box.dart';
import 'package:yes_no_app/providers/chat_provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chuck Norris"),
        leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnXWDiX2V79erMLV5ASidDSfre5zTprXMIwyjOl55Xbw&s"),
            )),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  return (message.fromWho == FromWho.another)
                      ? AnotherMessageBubble(
                          message: message,
                        )
                      : MyMessageBubble(message: message);
                },
              ),
            ),
            MessageFieldBox(
              onValue: (value) {
                chatProvider.sendMessage(value);
              },
              //another way
              //onValue: chatProvider.sendMessage ,
            )
          ],
        ),
      ),
    );
  }
}
