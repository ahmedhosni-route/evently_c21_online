import 'package:evently_c21_online/l10n/app_localizations.dart';
import 'package:evently_c21_online/modules/auth/provider/auth_provider.dart';
import 'package:evently_c21_online/modules/auth/screens/login_screen.dart';
import 'package:evently_c21_online/modules/auth/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context)!;

    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Consumer<AuthProvider>(
                builder: (context, provider, child) {
                  return Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/logo/logo.png",
                            width: 142.w,
                            color: theme.primaryColor,
                          ),
                        ),
                        SizedBox(height: 48.h),
                        Text(
                          locale.registerTitle,
                          style: theme.textTheme.titleMedium!.copyWith(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 24.h),

                        TextFormField(
                          controller: nameController,
                          style: theme.textTheme.bodyMedium,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return locale.nameRequired;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: locale.nameHint,
                            prefixIcon: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image.asset(
                                "assets/icons/user_icn.png",
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),

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
                        SizedBox(height: 16.h),

                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          style: theme.textTheme.bodyMedium,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return locale.passwordRequired;
                            } else if (value.length < 6) {
                              return locale.passwordMinLength;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: locale.passwordHint,
                            prefixIcon: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image.asset(
                                "assets/icons/password_icn.png",
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),

                        TextFormField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          style: theme.textTheme.bodyMedium,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return locale.passwordRequired;
                            } else if (passwordController.text != value) {
                              return locale.passwordNotMatch;
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: locale.confirmPasswordHint,
                            prefixIcon: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Image.asset(
                                "assets/icons/password_icn.png",
                                width: 24.w,
                                height: 24.h,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 48.h),
                        Center(
                          child: ElevatedButton(
                            onPressed:provider.isLoading ? null :  () {
                              if (formKey.currentState!.validate()) {
                                provider.createAccount(
                                    context: context,
                                    name: nameController.text, email: emailController.text, password: passwordController.text);
                              }
                            },
                            child: Center(child: provider.isLoading? CircularProgressIndicator() :  Text(locale.signUp)),
                          ),
                        ),
                        SizedBox(height: 48.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              locale.alreadyHaveAccount,
                              style: theme.textTheme.bodyMedium,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginScreen();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                locale.login,
                                style: theme.textTheme.titleMedium!.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                  theme.textTheme.titleMedium!.color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}