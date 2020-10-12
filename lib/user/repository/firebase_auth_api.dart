
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';


class FirebaseAuthAPI {
    final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

    final GoogleSignIn googleSignIn = GoogleSignIn();

	Future<firebase_auth.User> signIn() async {
		GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
		GoogleSignInAuthentication googleSA = await googleSignInAccount.authentication;

		firebase_auth.UserCredential user = await _auth.signInWithCredential(
			firebase_auth.GoogleAuthProvider.credential(idToken: googleSA.idToken, accessToken: googleSA.accessToken)
		);
	
		return user.user;	
	}
}