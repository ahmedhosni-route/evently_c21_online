import 'package:evently_c21_online/core/service/toast_app.dart';
import 'package:evently_c21_online/modules/auth/services/auth_service.dart';
import 'package:evently_c21_online/modules/layout/screens/layout_screen.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoading = false;

  Future<void> createAccount(
      {required BuildContext context,
      required String name,
      required String email,
      required String password}) async {
    isLoading = true;
    notifyListeners();
    try {
      var user = await AuthService.createAccount(
          name: name, email: email, password: password);
      Toast.show(context: context, title: "Pls , check Your Email");
    } catch (e) {
      Toast.show(context: context, title: e.toString(), type: ToastType.error);
    }

    isLoading = false;
    notifyListeners();
  }

  Future<void> login(
      {required BuildContext context,
      required String email,
      required String password}) async {
    isLoading = true;
    notifyListeners();
    try {
      var user = await AuthService.login(email: email, password: password);

      if (user?.emailVerified??false) {
        Toast.show(
            context: context, title: "welcome Back , ${user!.displayName}");
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return LayoutScreen();
          },
        ));
      } else {
        Toast.show(context: context, title: "pls , check Your Email");
      }
    } catch (e) {
      Toast.show(context: context, title: e.toString());
    }
    isLoading = false;
    notifyListeners();
  }


  Future<void> resetPassword({required BuildContext context,required String email})async{
    isLoading = true;
    notifyListeners();

    await AuthService.resetPassword(email: email);
    isLoading = false;
    notifyListeners();
    Toast.show(context: context, title: "pls , check Your email");
  }

}
