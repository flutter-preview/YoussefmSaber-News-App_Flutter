import 'package:api_request/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../screens/business/business_screen.dart';
import '../../screens/settings/settings_screen.dart';
import '../../screens/science/science_screen.dart';
import '../../screens/sports/sports_screen.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  int selectedScreen = 0;
  List<Widget> screens = [BusinessScreen(), ScienceScreen(), SportsScreen(), SettingsScreen()];

  List<BottomNavigationBarItem> navigationItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.business_rounded,
        ),
        label: 'Business'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.science_rounded,
        ),
        label: 'Science'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.sports_basketball,
        ),
        label: 'Sports'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.settings,
        ),
        label: 'Settings'),
  ];

  static NewsCubit get(context) => BlocProvider.of(context);

  void changeBottomNavigation(int index) {
    selectedScreen = index;
    emit(NewsBottomNavState());
  }
}
