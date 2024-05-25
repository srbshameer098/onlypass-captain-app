import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled7/BloC/LogIn/log_in_bloc.dart';
import 'package:untitled7/UI/s1.dart';


class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  bool loading = false;

  final PhoneNumberController = TextEditingController();

  // final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create: (context) => LogInBloc(),
  child: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(29.w),
            height: 343.h,
            width: double.infinity.w,
            color: Colors.grey[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter registered mobile number',
                  style: GoogleFonts.montserrat(
                  color: const Color(0xFFE4E4E4),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: SizedBox(
                    width: 375.w,
                    child: Text(
                      'Please confirm your country code and enter your registered mobile number with Onlypass.',
                      style: GoogleFonts.montserrat(
                      color: const Color(0xFF6F6F70),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    width: 375.w,
                    height: 55.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF282828),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.r)),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: PhoneNumberController,
                      decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          prefixText: '+91  ',
                          hintText: 'Enter 10 Digit Mobile Number'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.w),
                  child: BlocListener<LogInBloc, LogInState>(
                    listener: (context, state) {
                      if (state is LoginblocLoading){
                        const Center(child: CircularProgressIndicator());
                      }
                      if (state is LoginblocLoaded) {
                        token(BlocProvider.of<LogInBloc>(context).logInModel.accessToken.toString());
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => S1()),
                              (Route<dynamic> route) => false,
                        );
                      } else if (state is LoginblocError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'Login failed. Please try again.',
                              style: TextStyle(color: Colors.red),
                            ),
                            backgroundColor: Colors.red[50],
                          ),
                        );
                      }

                    },
                    child: GestureDetector(
                      onTap: () {
                        print('+91${PhoneNumberController.text}');
                        print(BlocProvider.of<LogInBloc>(context).logInModel.accessToken.toString());
                        BlocProvider.of<LogInBloc>(context).add(FetchLogin(
                          phoneNumber: '+91${PhoneNumberController.text}',
                        ));


                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => const BottomNav()));

                        //       verifyPhoneNumber(
                        //           phoneNumber: '+91${PhoneNumberController.text}',
                        //           verificationCompleted: (_){
                        //
                        //             setState(() {
                        //               loading = false ;
                        //             });
                        //
                        //           },
                        //           verificationFailed: (e){
                        //             setState(() {
                        //               loading = false ;
                        //             });
                        //             Utils().toastMessage(e.toString());
                        //           },
                        //           codeSent: (String verificationId , int? token){
                        //             Navigator.push(context,
                        //                 MaterialPageRoute(builder: (context)=>Verify_code(verificationId: verificationId,)));
                        //             setState(() {
                        //               loading = false ;
                        //             });
                        //           },
                        //           codeAutoRetrievalTimeout: (e){
                        //             Utils().toastMessage(e.toString());
                        //             setState(() {
                        //               loading = false ;
                        //             });
                        // });
                      },
                      child: Container(
                        width: 378.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.r)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Continue',
                                  style:
                                GoogleFonts.montserrat(
                                  color: const Color(0xFF191919),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              const Icon(
                                Icons.east_rounded,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
);
  }

  void token(String accessToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("accessToken", accessToken);
  }
}