import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SANAEEProjectFirebaseUser {
  SANAEEProjectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

SANAEEProjectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SANAEEProjectFirebaseUser> sANAEEProjectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SANAEEProjectFirebaseUser>(
      (user) {
        currentUser = SANAEEProjectFirebaseUser(user);
        return currentUser!;
      },
    );
