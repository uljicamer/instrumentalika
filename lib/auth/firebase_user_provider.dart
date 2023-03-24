import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class InstrumentalikaFirebaseUser {
  InstrumentalikaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

InstrumentalikaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<InstrumentalikaFirebaseUser> instrumentalikaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<InstrumentalikaFirebaseUser>(
      (user) {
        currentUser = InstrumentalikaFirebaseUser(user);
        return currentUser!;
      },
    );
