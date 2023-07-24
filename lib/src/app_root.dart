import 'package:bmi_new_design/blocs/calculte_cubit.dart';
import 'package:bmi_new_design/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
BlocProvider(create: (context)=>BmiCubit())
    ],
        child:MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          primaryColor: Colors.black,
          textTheme: TextTheme(
              bodyLarge: TextStyle(color: Colors.white)
          )
      ),
    ));
      

  }
}
