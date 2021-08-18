import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


//void main() => runApp(FlashChat());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: WelcomeScreen.id,
        //home: WelcomeScreen(),
        routes: {
          WelcomeScreen.id: (context)=> WelcomeScreen(),
          RegistrationScreen.id: (context)=> RegistrationScreen(),
          LoginScreen.id: (context)=> LoginScreen(),
          ChatScreen.id: (context)=> ChatScreen(),
        }
    );
  }
}