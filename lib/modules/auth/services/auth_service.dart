import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  static Future<User?> createAccount(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await credential.user!.updateDisplayName(name);
      await credential.user!.sendEmailVerification();
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        throw 'The account already exists for that email.';
      }else{
        throw e.message??"";
      }
    } catch (e) {

      throw e.toString();
    }
  }

  static Future<User?> login({required String email , required String password})async{
    try {
      final credential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
       throw 'Invalid email Or password.';
      }
    } catch (e) {
      throw e.toString();
      print(e);
    }
  }


  static Future<void> resetPassword({required String email})async{
    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
