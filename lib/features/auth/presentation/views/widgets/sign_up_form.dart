import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/widgets/app_text_field.dart';
import '../../../../../core/components/widgets/main_button.dart';
import '../../../../../core/routes/routes.dart';
import 'navigate_text_widget.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            hintText: "Name",
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          8.verticalSizedBox,
          AppTextField(
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          8.verticalSizedBox,
          AppTextField(
            hintText: "Password",
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
          ),
          16.verticalSizedBox,
          NavigateTextWidget(
            title: "Already have an account?",
            onTap: () {
              context.pushNamed(Routes.login);
            },
          ),
          32.verticalSizedBox,
          MainButton(title: "SIGN UP", onTap: () {}),
        ],
      ),
    );
  }
}
