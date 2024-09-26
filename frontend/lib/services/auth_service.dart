import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential> signUp(String email, String password) async {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
  return credential;
}

Future<UserCredential> signIn(String email, String password) async {
  final credential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
  return credential;
}

Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
}

// TODO update user data

// TODO stream user data
