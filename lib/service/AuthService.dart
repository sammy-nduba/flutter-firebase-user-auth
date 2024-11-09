import 'package:firebase_auth/firebase_auth.dart';




class AuthServices {

  // FirebaseAuth instance
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // sign in

  Future<UserCredential> signInMethod(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw (e.toString());
    }
  }

  // sign up

  Future<UserCredential> signUpMethod(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;

    } on FirebaseAuthException catch (e) {
      throw (e.toString());
    }
  }

  // signout

  Future<void> signout() async {
    return await _firebaseAuth.signOut();
  }
}