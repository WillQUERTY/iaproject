import 'package:flutter/material.dart';
import 'package:iaproject/message.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = <Message>[
    Message(text: "Hi", isUser: true),
    Message(text: "Hello, Whats up ?", isUser: false),
    Message(text: "Great and you?", isUser: true),
    Message(text: "i'm excellent", isUser: false),
  ];

  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Expanded(),
        //user input
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Write your message",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20)
                    ),
                  ),
                ),
                        SizedBox(width: 8),
                    IconButton(onPressed: (){}, icon: Icon(Icons.send))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount:
                      _messages.length, // Añadido para definir el número de elementos
                  itemBuilder: (context, index) {
                    final message = _messages[index];
                    return ListTile(
                      title: Align(
                        alignment: message.isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color:
                                    message.isUser ? Colors.blue : Colors.grey[300],
                                borderRadius: message.isUser
                                    ? BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))
                                    : BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))),
                            child: Text(
                              message.text,
                              style: TextStyle(
                                  color:
                                      message.isUser ? Colors.white : Colors.black),
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}