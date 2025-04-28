import 'package:flutter/material.dart';
import 'package:untitled2/generated/l10n.dart';
import 'package:untitled2/main.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 210,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1,-1),
                end: Alignment.bottomRight,
                colors: 
                [
            
                
                const Color(0xFF247CFF),
                const Color(0xFF247CFF),
                const Color.fromARGB(245, 36, 124, 255),
                const Color.fromARGB(245, 36, 124, 255),
                const Color(0xFF247CFF),
                const Color(0xFF247CFF),
                const Color.fromARGB(245, 36, 124, 255),
                const Color.fromARGB(245, 36, 124, 255),
                
                
                
                ],
                stops: [0.0,0.2,0.2,0.50,0.50,0.8,0.8,1.0 ],
                
                tileMode: TileMode.mirror,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).homeWidgetTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12,),
                Expanded(
                  child: ElevatedButton(onPressed: (){}, 
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  
                  ),
                  child: Text(S.of(context).discovreButton,
                  style: TextStyle(
                    color: Theme.of(context).primaryColorLight,
                    
                  ),
                  ),
                  ),
                )
              ]
                
            )
          ),
          Positioned(
            right: isArabic() ? null : 16,
            left: isArabic() ? 16 : null,
            child: Image.asset('assets/images/student-image-home.png',
            height: 240,
            
              ),
          ),

        ]

      ),
    );
  }
}