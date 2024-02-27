import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:huree_event_app/views/create_profile.dart';
import 'package:huree_event_app/views/home_screen.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  var isLoading = false.obs;

  void login({String? email, String? password}) {
    isLoading(true);
    auth
        .signInWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
      isLoading(false);

      ///Amjilttai nevterlee
      Get.to(() => HomeScreen());
    }).catchError((e) {
      ///amjiltgui
    });
  }

  void signUp({String? email, String? password}) {
    //email bolon password
    isLoading(true);
    auth
        .createUserWithEmailAndPassword(email: email!, password: password!)
        .then((value) {
      isLoading(false);

      ///profile screen luu chigluulne
      Get.to(() => ProfileScreen());
    }).catchError((e) {
      print("Баталгаажуулалтын алдаа $e");
      isLoading(false);
    });
  }
}
