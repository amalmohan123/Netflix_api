import 'package:flutter/material.dart';

class CoustomButtonWidget extends StatelessWidget {
  const CoustomButtonWidget({
    super.key,
    required this.textTitle,
    required this.onPressed,
    required this.buttonColor,
    required this.textColor,
    required this.buttonWidth,

    
  });

  final String textTitle;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: 46,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(buttonColor),
        ),
         
        onPressed: onPressed,
        child: Text(
          textTitle,
          style: TextStyle( 
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
} 
