import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final _firebase = FirebaseAuth.instance;
  final _google = GoogleSignIn();

  Future<bool> singWithGoogle(String email) async {
    final authenticated = _google.currentUser;
    _firebase.isSignInWithEmailLink(email);

  }

}