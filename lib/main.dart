import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled7/Bloc/Event_Creation/event_bloc.dart';
import 'package:untitled7/Bloc/LogIn/log_in_bloc.dart';
import 'package:untitled7/UI/s1.dart';

import 'UI/Register/auth.dart';

// final navigatorKey = GlobalKey<NavigatorState>();

void main()
// async
{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 934),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(builder: (context) {
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
            ),
            debugShowCheckedModeBanner: false,
            home: const S1(),
            // navigatorKey: navigatorKey,
          ),
        );
      }),
    );
  }
}
