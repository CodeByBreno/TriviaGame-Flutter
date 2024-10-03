import 'package:flutter/material.dart';
import 'package:trivia_game/widgets/questions/question1.dart';

class MainButton extends StatefulWidget {
  final Color color;
  final Color? textColor; 
  final String text;

  MainButton({
    required this.color,
    required this.text,
    this.textColor,
  });

  @override
  MainButtonState createState() => MainButtonState();
}

class MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Question1()),
                  )
                }, 
                child: 
                  Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: 
                      Center(
                        child: Text(
                          widget.text,
                          style: TextStyle(
                            color: widget.textColor ?? Colors.white,
                            fontSize: 18),
                          ),
                      ),
                  )
              );
  }
}