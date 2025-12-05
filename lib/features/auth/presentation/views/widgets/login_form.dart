import 'package:ecommerce/core/components/widgets/main_button.dart';
import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/widgets/app_text_field.dart';
import '../../../../../core/routes/routes.dart';
import 'navigate_text_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey<FormState>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            title: "Forgot your password?",
            onTap: () {
              context.pushNamed(Routes.forgotPassword);
            },
          ),
          32.verticalSizedBox,
          MainButton(title: "LOGIN", onTap: () {}),
        ],
      ),
    );
  }
}
