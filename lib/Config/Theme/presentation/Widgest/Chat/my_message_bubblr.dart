import 'package:flutter/material.dart';

class MyMessageBubblr extends StatelessWidget {
  const MyMessageBubblr({super.key});

  @override
  Widget build(BuildContext context) {

final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(1),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10 ),
            child: Text("hola amor como estas", style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height:10)
      ],
    );
  }
}
