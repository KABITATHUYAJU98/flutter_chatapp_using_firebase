import 'package:flutter_chatapp/common/entities/value/user.dart';

import 'index.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//initializing google signin object
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>[
  'openid'
  // this is special setting  - for google sign in | not to get error during sign in
]);

class SignInController extends GetxController {
  final state = SignInState();
  SignInController();

  //firebase
  final db = FirebaseFirestore.instance;
  Future<void> handleSignIn() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
        String displayName = user.displayName ?? user.email;
        //if there is not username then we will check by user email
        String email = user.email;
        String id = user.id;
        String photoUrl =
            user.photoUrl ?? ""; // if exists then only otherwise null

        //we have model - will use it for better organization
        UserLoginResponseEntity userProfile = UserLoginResponseEntity();
        userProfile.email = email;
        userProfile.accessToken = id;
        userProfile.displayName = displayName;
        userProfile.photoUrl = photoUrl;

        //to save this user info. to our device
        UserStore.to.saveProfile(userProfile);
      }
    } catch (e) {}
  }
}
