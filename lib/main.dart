import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/presentation/cubit/task_cubit.dart';
import 'feature/presentation/screens/home_screen.dart';
import 'injection_container.dart' as di;
import 'on_generate_route.dart';


void main() async{
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskCubit>(
      create: (_) => di.sl<TaskCubit>()..openDatabase()..initNotification(),
      child: MaterialApp(
        title: 'My Daily Tasks',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.indigoAccent
        ),
        onGenerateRoute: OnGenerateRoute.route,
        routes: {
          "/":(context){
            return HomeScreen();
          }
        },
      ),
    );
  }
}
