// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String text;
  const Button({
    super.key,
    required this.text,

  });
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
          decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 122, 255).withValues(alpha: 0.5), // Blue shadow
              offset: Offset(0, 3), // Moves shadow downward
              blurRadius: 15, // Softness of shadow
            ),
        
            BoxShadow(
              color:  Colors.white.withValues(alpha: 0.8), 
              offset: Offset(0, -12), 
              blurRadius: 20, 
            ),
          ],
          ),
          child: MaterialButton(
            
            child: Text(text,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
            ),),
            color: Theme.of(context).primaryColorLight,

            height: 70,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onPressed: () {  },
            ),
        );
  }
}