import 'dart:developer';
import 'package:foodchain_flutter/controllers/loading_controller.dart';
import 'package:foodchain_flutter/utilities/route_paths%20copy.dart';
import 'package:foodchain_flutter/utilities/show_error_snackbar.dart';
import 'package:foodchain_flutter/utilities/show_snackbar.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:foodchain_flutter/controllers/base_controller.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends BaseController {
  void listenForAuthChanges() {
    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        currentUser.value = user;
        update();
      }

      // signOut();
    });
  }

  Future<bool> signInwithEmailAndPassword(String email, String password) async {
    try {
      LoadingControler.startLoadingStatic(Get.context!);

      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // listenForAuthChanges();

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showErrorSnackbar('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showErrorSnackbar('Wrong password provided.');
      } else {
        showErrorSnackbar('Login failed!!!');
      }

      LoadingControler.stopLoadingStatic(Get.context!);

      return false;
    }
  }

  Future<bool> register(String email, String password, String phoneNumber,
      String fullName) async {
    LoadingControler.startLoadingStatic(Get.context!);

    try {
      var credentials =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var user = credentials.user!;
      await user.updateDisplayName(fullName);
      await user.sendEmailVerification();

      // listenForAuthChanges();

      LoadingControler.stopLoadingStatic(Get.context!);

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showErrorSnackbar('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showErrorSnackbar('An account already exists for that email.');
      }

      LoadingControler.stopLoadingStatic(Get.context!);

      return false;
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }
      showErrorSnackbar("Something went wrong");

      LoadingControler.stopLoadingStatic(Get.context!);

      return false;
    }
  }

  Future<bool> signInwithGoogle() async {
    try {
      LoadingControler.startLoadingStatic(Get.context!);

      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser =
          await GoogleSignIn(clientId: "").signIn();

      if (kDebugMode) {
        debugPrint(googleUser.toString());
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      // listenForAuthChanges();

      LoadingControler.stopLoadingStatic(Get.context!);

      return true;

      // Get.toNamed(RouteNames.homeScreen);
    } catch (e) {
      LoadingControler.stopLoadingStatic(Get.context!);

      var errorMessage = "Sign in with google failed: $e";

      if (kDebugMode) {
        debugPrint(errorMessage);
      }

      showErrorSnackbar(errorMessage);

      return false;
    }
  }

  Future<bool> signOut() async {
    try {
      LoadingControler.startLoadingStatic(Get.context!);

      await FirebaseAuth.instance.signOut();

      showSnackbar("Alert", "You've logged out");

      LoadingControler.stopLoadingStatic(Get.context!);

      await Get.toNamed(RoutePaths.login);

      return true;
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }

      LoadingControler.stopLoadingStatic(Get.context!);

      showErrorSnackbar("Logout failed");

      return false;
    }
  }

  Future<bool> forgotPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

      return true;
    } catch (e) {
      if (kDebugMode) {
        debugPrint(e.toString());
      }

      return false;
    }
  }

  var currentUser = FirebaseAuth.instance.currentUser.obs;

  Future<bool> passwordReset(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

      return true;
    } catch (e) {
      log(e.toString());

      return false;
    }
  }

  Future<bool> confirmPasswordReset(String code, String newPassword) async {
    try {
      FirebaseAuth.instance
          .confirmPasswordReset(code: code, newPassword: newPassword);

      return true;
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }
}
