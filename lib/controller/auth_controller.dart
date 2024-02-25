import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:huree_event_app/views/create_profile.dart';
import 'package:huree_event_app/views/home_screen.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  void login({String? email, String? password}) {
    auth
        .signInWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
      ///Amjilttai nevterlee
      Get.to(() => HomeScreen());
    }).catchError((e) {
      ///amjiltgui
    });
  }

  void signUp({String? email, String? password}) {
    //email bolon password
    auth
        .createUserWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
      ///profile screen luu chigluulne
      Get.to(() => ProfileScreen());
    }).catchError((e) {
      print("Баталгаажуулалтын алдаа $e");
    });
  }
}
