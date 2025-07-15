import 'package:flutter/material.dart';
import 'package:yes_no_app/Config/Theme/presentation/Widgest/Chat/my_message_bubblr.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://images.ladbible.com/resize?type=webp&quality=1&width=3840&fit=contain&gravity=auto&url=https://images.ladbiblegroup.com/v3/assets/bltcd74acc1d0a99f3a/blt4b5f268e38b056d6/6849c2cd25c4000318ce2ee1/lana-rhoades-left-industry-reasoning.jpg"),
          ),
        ),
        title: const Text('Mi amorcito'),
        centerTitle: true,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return const _ChatBody();
  }
}

class _ChatBody extends StatelessWidget {
  const _ChatBody();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const MyMessageBubblr();
              },
            ),
          ),
          const Text("Hola como estas"),
        ],
      ),
    );
  }
}