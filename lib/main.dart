import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/blocs/news_bloc/news_bloc_provider.dart';
import 'package:news_app/screens/main_screen/main_screen.dart';
import 'package:news_app/service_locator/service_locator.dart';
import 'package:news_app/styles/colors.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NewsBlocProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: appBarColor,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: appBarColor, //Colors.white,
                  statusBarBrightness: Brightness.light,
                  statusBarIconBrightness: Brightness.dark)),
          textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
        ),
        onGenerateRoute: appRoutes,
        navigatorObservers: [routeObserver],
      ),
    );
  }

  Route appRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      default:
        return CupertinoPageRoute(
          builder: (BuildContext context) {
            return const MainScreen();
          },
        );
    }
  }
}
