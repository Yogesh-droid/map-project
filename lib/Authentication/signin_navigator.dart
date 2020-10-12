import 'package:map_projects/Authentication/Login/login_page.dart';
import 'package:map_projects/Authentication/Register/register_page.dart';
import 'package:map_projects/Authentication/Login/social_sign_up_page.dart';
import 'package:map_projects/Authentication/Verification/verification_page.dart';
import 'package:flutter/material.dart';
import 'package:map_projects/Routes/routes.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SignInRoutes {
  static const String signInRoot = 'signIn/';
  static const String signUp = 'login/signUp';
  static const String verification = 'login/verification';
  static const String socialLogin = 'login/social_login';
}

class SignInNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var canPop = navigatorKey.currentState.canPop();
        if (canPop) {
          navigatorKey.currentState.pop();
        }
        return !canPop;
      },
      child: Navigator(
        key: navigatorKey,
        initialRoute: SignInRoutes.signInRoot,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case SignInRoutes.signInRoot:
              builder = (BuildContext _) => LoginPage();
              break;
            case SignInRoutes.signUp:
              builder = (BuildContext _) => RegisterPage();
              break;
            case SignInRoutes.verification:
              builder =
                  (BuildContext _) => VerificationPage(onVerificationDone: () {
                        Navigator.popAndPushNamed(
                            context, PageRoutes.bottomNavigation);
                      });
              break;
            case SignInRoutes.socialLogin:
              builder = (BuildContext _) => SocialSignUpPage();
              break;
          }
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onPopPage: (Route<dynamic> route, dynamic result) {
          return route.didPop(result);
        },
      ),
    );
  }
}
