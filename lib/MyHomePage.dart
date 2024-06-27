import 'package:flutter/material.dart';
import 'package:iaproject/message.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Message> _messages = <Message>[
    Message(text: "Hi", isUser: true),
    Message(text: "Hello, Whats up ?", isUser: true),
    Message(text: "Great and you?", isUser: true),
    Message(text: "i'm excellent ", isUser: false),
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        final message = _messages[index]
        return ListTile(
          title: Text(message.text),
          tileColor: message.isUser ? Colors.blue : Colors.red,
        );
      })
      ),
    );
  }
}
