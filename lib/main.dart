import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/main_screen/main_screen.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: appRoutes,
      navigatorObservers: [routeObserver],
    );
  }

  Route appRoutes(RouteSettings settings) {
    switch (settings.name) {
      // case '/movie_screen':
      //   return CupertinoPageRoute(
      //     builder: (BuildContext context) {
      //       final movie = settings.arguments as Movie?;
      //       return MovieScreen(movie: movie);
      //     },
      //   );
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
