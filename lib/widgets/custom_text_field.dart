import 'package:flutter/material.dart';
import 'package:untitled2/generated/l10n.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      height: 60,
      decoration: BoxDecoration(
              color: const Color.fromARGB(20, 140, 140, 140),
              //color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
              
            ),
            
      child: TextField(
        
        decoration: InputDecoration(
          
          hintStyle: TextStyle( fontSize: 18),
            contentPadding: EdgeInsets.all(15),
            hintText: S.of(context).courseSearch,
            border: InputBorder.none,
        ), 
      
      ),
    );
  }
}