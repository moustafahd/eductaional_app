import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled2/core/helpers/extensions.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/colors.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';
import 'package:untitled2/features/payment/ui/payment.dart';
import 'package:untitled2/main.dart';

class FormationsDetails extends StatelessWidget {
  final CreateFormationResponse formationItem;
  const FormationsDetails({super.key, required this.formationItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(title: "Course Details"),
                    verticalSpace(20),
                    Image.asset(
                      "assets/images/formation-details.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    verticalSpace(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Text(
                            formationItem.title,
                            style: TextStyles.font26BlackSemiBold,
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 40.h,
                            width: 40.h,
                            decoration: BoxDecoration(
                              color: ColorManager.mainBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                "99\$",
                                style: TextStyles.font16WhiteMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(15),
                    Row(
                      children: [
                        horizontalSpace(10),
                        Container(
                          decoration: BoxDecoration(
                            color: ColorManager.mainBlue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              formationItem.category,
                              style: TextStyles.font12WhiteMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        formationItem.description,
                        style: TextStyles.font16GreyRegular,
                      ),
                    ),
                    verticalSpace(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Requirements: ",
                        style: TextStyles.font14BlackSemiBold,
                      ),
                    ),
                    verticalSpace(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: formationItem.requirmentsList?.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: ColorManager.mainBlue,
                                  size: 20.r,
                                ),
                                horizontalSpace(10),
                                Expanded(
                                  child: Text(
                                    formationItem.requirmentsList![index]?.requirmentDescription ?? '',
                                    style: TextStyles.font16GreyRegular,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,

                  child: Builder(
                    builder:
                        (context) => PrimaryButton(
                          buttonText: "Enroll Now",
                          onPressed: () {
                            !isLoggedInUser ? context.pushNamed('/login') 
                            : Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => PaymentScreen(formationItem: formationItem, ),
                              ),
                            );

                          },
                        ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
