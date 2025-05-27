import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/shared_preference.dart';
import 'package:untitled2/core/networking/api_constants.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/features/levels/create%20level/data/models/create_level_response.dart';

class MyLevelsItem extends StatelessWidget {
  final CreateLevelResponse levelItem;
  const MyLevelsItem({super.key, required this.levelItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(10.r),
              height: 80.h,
              width: 80.h,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Text(
              levelItem.description,
              style: TextStyles.font14BlackSemiBold,
              ),
          ),
          Flexible(
            flex: 1,
            child: IconButton(onPressed: (){ 
            
            }, 
            icon: Icon(
              Icons.add_box_outlined,
              color: ColorManager.mainBlue,
              size: 20.r,
            )
            ),
          ),
          // horizontalSpace(10),
          Flexible(
            flex: 1,
            child: IconButton(onPressed: (){ 
              SharedPreferenceHelper.setData(ApiConstants.levelId, levelItem.levelId);
              
            }, 
            icon: Icon(
              Icons.edit_rounded,
              color: ColorManager.mainBlue,
              size: 20.r,
            )
            ),
          ),
        ],
      ),
    );
  }
}
