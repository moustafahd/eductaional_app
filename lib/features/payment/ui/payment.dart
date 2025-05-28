import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/core/di/dependency_injecton.dart';
import 'package:untitled2/core/helpers/helpers.dart';
import 'package:untitled2/core/theming/styles.dart';
import 'package:untitled2/core/widgets/app_bar.dart';
import 'package:untitled2/core/widgets/lesson_card.dart';
import 'package:untitled2/core/widgets/primary_button.dart';
import 'package:untitled2/features/formations/create%20formation/data/models/create_formation_response.dart';
import 'package:untitled2/features/payment/logic/cubit/inscription_cubit.dart';
import 'package:untitled2/features/payment/ui/paypal_widget.dart';

class PaymentScreen extends StatelessWidget {
    final CreateFormationResponse formationItem;

  const PaymentScreen({super.key, required this.formationItem});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InscriptionCubit(getIt()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(title: "Payment"),
                      verticalSpace(40),
                      Center(
                        child: Image.asset(
                          "assets/images/Slider.png",
                          width: 350,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      verticalSpace(30),
                      Text(
                        "Course & Level:",
                        style: TextStyles.font18BlackSemiBold,
                      ),
                      verticalSpace(10),
                      LessonCard(
                        title: formationItem.title,
                        duration: formationItem.category,
                        onTap: (){},
                      ),
                      verticalSpace(20),
                      Text(
                        "Payment :",
                        style: TextStyles.font18BlackSemiBold,
                      ),
                      verticalSpace(10),
                      PayPalPaymentWidget(),
                      verticalSpace(80),
                      // const InscriptionBlocListener(),
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
                          buttonText: "Confirm Payment",
                          onPressed: () => validatAndInscription(context),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validatAndInscription(BuildContext context) {
    context.read<InscriptionCubit>().emitInscriptionStates();
  }
}
