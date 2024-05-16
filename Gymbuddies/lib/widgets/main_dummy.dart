import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
class MyImageWrapper extends StatelessWidget {
  final String imageUrl;

  const MyImageWrapper({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}

class MyCard extends StatelessWidget {
  final Widget child;

  const MyCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
    );
  }
}

class MyDialog extends StatelessWidget {
  final String title;
  final String message;

  const MyDialog({required this.title, required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Add your stateful UI elements here
    );
  }
}

//TODO: generate widgets that are getting started in one page with dummy data
