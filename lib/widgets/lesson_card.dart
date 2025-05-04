import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final String title;
  final String duration;
  
  const LessonCard(this.title, this.duration, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 100,
      decoration: BoxDecoration(
              color: const Color.fromARGB(20, 140, 140, 140),
              //color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
              
            ),
      child: Row(
        
        children: [
          Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: SweepGradient(
                colors: 
                [
                  
                const Color.fromARGB(253, 0, 123, 255),
                const Color.fromARGB(122, 0, 123, 255),
                const Color.fromARGB(253, 0, 123, 255),
                ],
                stops: [0.1, 0.8,1.0],
                
                tileMode: TileMode.clamp,
              ),
              
              //color: const Color.fromARGB(255, 0, 122, 255),
              borderRadius: BorderRadius.circular(9.57),
              
            ),
            child: Center(
              child: Icon(Icons.play_arrow,color: const Color.fromARGB(255, 255, 255, 255), size: 34,),
            ),
          
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 2,
                style:  TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
                ),
                Text(duration,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600
                )
                ),
            
              ],
            ),
          ),
        ],
      ),
    );
  }
}