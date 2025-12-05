import 'package:ecommerce/core/extensions/app_extentions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/widgets/app_text_field.dart';
import '../../../../../core/components/widgets/main_button.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextField(
            hintText: "Email",
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
          ),
          70.verticalSizedBox,
          MainButton(title: "SEND", onTap: () {}),
        ],
      ),
    );
  }
}
