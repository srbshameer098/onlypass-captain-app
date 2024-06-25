import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/Bloc/Event_Creation/event_bloc.dart';
import 'package:untitled7/Bloc/LogIn/log_in_bloc.dart';
import 'package:untitled7/UI/s1.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => LogInBloc()),
            BlocProvider(create: (context) => EventBloc()),
          ],
          child: MaterialApp(
            title: 'Captain',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
              useMaterial3: true,
              fontFamily: 'Montserrat',
            ),
            debugShowCheckedModeBanner: true,
            home: const S1(),
          ),
        );
      },
    );
  }
}
