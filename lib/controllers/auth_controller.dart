import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  User? user;
  bool isLoading = false;
  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  signInWithGoogle() async {
    try {
      _setLoading(true);
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        final userCredential = await _auth.signInWithCredential(credential);
        log(userCredential.user!.email.toString());
        log(userCredential.user!.displayName.toString());
        user = userCredential.user;
      }
      return user;
    } catch (e) {
      log(e.toString());
    } finally {
      _setLoading(false);
    }
  }
}
