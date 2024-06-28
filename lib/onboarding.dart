import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iaproject/MyHomePage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "You Ai Assistant",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  " Mi función es ayudarte proporcionando información, respondiendo preguntas y ofreciendo asistencia en una variedad de temas. Puedo conversar contigo, proporcionarte explicaciones, sugerencias y más, todo basado en el conocimiento y patrones aprendidos durante mi entrenamiento.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Image.asset("assets/onboarding.png"),
            SizedBox(
              height: 32,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 32)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.arrow_forward,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
