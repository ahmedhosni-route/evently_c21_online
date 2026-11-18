import 'package:evently_c21_online/l10n/app_localizations.dart';
import 'package:evently_c21_online/modules/auth/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ResetPassword extends StatelessWidget {
  AuthProvider provider;
  ResetPassword({super.key, required this.provider});

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context)!;
    return ChangeNotifierProvider.value(
      value: provider,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Forget Password"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Consumer<AuthProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  Center(
                      child: Image.asset(
                        "assets/images/forget_password_image.png",
                        width: 343.w,
                      )),
                  SizedBox(
                    height: 32.h,
                  ),
                  TextFormField(
                    controller: emailController,
                    style: theme.textTheme.bodyMedium,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return locale.emailRequired;
                      } else if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                      ).hasMatch(value.trim())) {
                        return locale.emailInvalid;
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: locale.emailHint,
                      prefixIcon: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Image.asset(
                          "assets/icons/email_icn.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        provider.resetPassword(
                            context: context, email: emailController.text);
                      },
                      child: Center(
                          child: provider.isLoading
                              ? CircularProgressIndicator()
                              : Text("Reset Password")))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
