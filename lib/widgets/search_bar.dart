import 'package:flutter/material.dart';
import 'package:untitled2/generated/l10n.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
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
      
          suffixIcon: Container(
            margin: const EdgeInsets.all(5),
            
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)))
        ),
      )


    );
  }
}