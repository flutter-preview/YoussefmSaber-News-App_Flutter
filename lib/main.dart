import 'package:api_request/layouts/news_layout.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(color: Colors.grey[50], elevation: 0),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.blue,
                elevation: 20)),
        debugShowCheckedModeBanner: false,
        home: NewsLayout());
  }
}
