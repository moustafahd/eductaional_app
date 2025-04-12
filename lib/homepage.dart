import 'package:flutter/material.dart';
import 'package:untitled2/main.dart';
import 'package:untitled2/widgets/custom_text_field.dart';
import 'package:untitled2/widgets/lesson_card.dart';
import 'package:untitled2/widgets/primary_button.dart';
import 'package:untitled2/widgets/search_bar.dart';
import 'package:untitled2/generated/l10n.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: Container(
       // margin: EdgeInsets.all(16),
        //child: Button(text: 'enroll now'),
      //),
      appBar: AppBar(
        leading: GestureDetector(
  onTap: () {
    Navigator.pop(context);
  },
  child:Container(
    height: 10,
    width: 10,
    
    margin: EdgeInsets.only(
      left: isArabic() ? 0 : 16, 
      top: 7, 
      bottom: 7,
      right: isArabic() ? 16 : 0
      ),
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColorLight,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(Icons.arrow_back, color: Colors.white,),
  ),
        ),),
        
      body: Stack(
        
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16, right: 16, ),
            child: Column(
              children: [
                //SizedBox(height: 70,),
                Searchbar(),
                //CustomTextField(),
                ...List.generate(20, (index) => LessonCard(S.of(context).lessonTitle, S.of(context).lessonDuration)),
                
                SizedBox(height: 100)
                
              ],
            ),  
            ),
           Positioned(left: 16, right: 16, bottom: 30, child: Button(text: S.of(context).enrollButtton)),
            
        ],
      ),
        
      );
  }
}
