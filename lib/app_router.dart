import 'package:flutter_node_store/screens/login/login_screen.dart';
import 'package:flutter_node_store/screens/welcome/welcome_screen.dart';

class AppRouter {
  // Router Map Key
  static const String welcome = '/welcome';
  static const String login = '/login';

  // Router Map
  static get routes => {
        welcome: (context) => WelcomeScreen(),
        login: (context) => LoginScreen(),
      };
}
