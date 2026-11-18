import 'package:animate_do/animate_do.dart';
import 'package:evently_c21_online/modules/layout/screens/layout_screen.dart';
import 'package:evently_c21_online/modules/start/screens/start_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ZoomIn(
                duration: Duration(seconds: 3),
                child: Center(
                  child: Image.asset("assets/logo/logo.png", width: 309.w),
                ),
              ),
            ),
            FadeInUp(
              delay: Duration(seconds: 3),
              onFinish: (direction) {
                if (FirebaseAuth.instance.currentUser == null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StartScreen();
                      },
                    ),
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LayoutScreen();
                      },
                    ),
                  );
                }
              },
              child: Center(
                child: Image.asset("assets/logo/route_logo.png", width: 214.w),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
