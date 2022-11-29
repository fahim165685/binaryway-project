import 'package:binary_way/Screens/Login/logine_screen.dart';
import 'package:binary_way/Screens/Wellcome/wellcome_screen.dart';
import 'package:binary_way/Screens/sing_up/sing_up_screen.dart';
import 'package:binary_way/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  FirebaseOptions  firebaseOptions = const FirebaseOptions(
    appId: '1:448618578101:ios:0b650370bb29e29cac3efc',
    apiKey: 'AIzaSyAgUhHU8wSJgO5MVNy95tMT07NEjzMOfz0',
    projectId: 'react-native-firebase-testing',
    messagingSenderId: '448618578101',
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(name:'Binary Way', options:firebaseOptions);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter APP',
      theme: ThemeData(
        //useMaterial3: true,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      //home: wellcomeScreen(),
      initialRoute:  '/wellcome',
      routes: {
        '/wellcome':(context)=>wellcomeScreen(),
        "/login":(context)=>LoginScreen(),
        "/sing_up":(context)=>SingUPScreen(),




      },
    );
  }
}
