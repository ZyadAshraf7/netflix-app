import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_app/app/core/constants/route_names.dart';
import 'package:netflix_app/app/core/theme/app_theme.dart';
import 'package:netflix_app/app/data/repositories/authentication/register_repository.dart';
import 'package:netflix_app/app/data/shared_preference/shared_preference.dart';
import 'package:netflix_app/app/presentation/routing/app_router.dart';
import 'package:netflix_app/netlix.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPrefs.init();
  runApp(
    NetflixApp(
      appRouter: AppRouter(),
      initialRoute: RouteNames.loginScreen,
    ),
  );

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        theme: AppTheme.appThemeMode,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.onGenerateRoutes,
        initialRoute: RouteNames.loginScreen,
      ),
    );
  }
}
