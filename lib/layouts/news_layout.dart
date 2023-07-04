import 'package:api_request/shared/cubit/cubit.dart';
import 'package:api_request/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return  Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey,))
              ],
            ),
            body: SafeArea(
              child: cubit.screens[cubit.selectedScreen],
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.selectedScreen,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                cubit.changeBottomNavigation(index);
                print(index);
              },
              items: cubit.navigationItems
            ),
          );
        },
      ),
    );
  }
}
