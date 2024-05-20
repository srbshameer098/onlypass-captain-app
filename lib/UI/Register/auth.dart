import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled7/Bloc/LogIn/log_in_bloc.dart';

import '../s1.dart';


class LogInPageAuth extends StatefulWidget {
  const LogInPageAuth({super.key});

  @override
  State<LogInPageAuth> createState() => _LogInPageAuthState();
}

class _LogInPageAuthState extends State<LogInPageAuth> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(milliseconds: 100), () {
  //     showModalBottomSheet(
  //       context: context,
  //       builder: (context) => Container(
  //         height: 343,
  //         color: Colors.red,
  //       ), // Replace with your bottom sheet content widget
  //     );
  //   });
  // }
  bool loading = false;

  final PhoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  // Positioned(
                  //   top: 0.h,
                  //   child: Image.asset(
                  //     'assets/images/imgLog.png',
                  //     width: 430.w,
                  //     height: 880.h,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 86.h,
                  //   child: Image.asset(
                  //     'assets/images/captianLogo.png',
                  //     alignment: Alignment.center,
                  //     width: 143.w,
                  //     height: 164.80.h,
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
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
                      height: 60.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF282828),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.r)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          TextFormField(
                            cursorColor: Colors.white,
                            style: GoogleFonts.montserrat(
                              color: Colors.white
                            ),
                            keyboardType: TextInputType.phone,
                            controller: PhoneNumberController,
                            decoration: const InputDecoration(

                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                prefixText: '+91  ',
                                prefixStyle: TextStyle(
                                    color: Colors.white
                                ),
                                hintText: 'Enter 10 Digit Mobile Number'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.w),
                    child: BlocListener<LogInBloc, LogInState>(
                      listener: (context, state) {
                        if (state is LoginblocLoading) {
                          CircularProgressIndicator();
                          print("Loaddddddding");
                        }

                        if (state is LoginblocLoaded) {
                          BlocProvider.of<LogInBloc>(context).logInModel;

                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => S1()));
                          print('hello');
                        }
                        if (state is LoginblocError) {
                          print("error");
                        }
                        // TODO: implement listener
                      },
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=> const Verify_code()));
                          setState(() {
                            loading = true;
                          });

                          auth.verifyPhoneNumber(
                              phoneNumber: '+91${PhoneNumberController.text}',
                              verificationCompleted: (_) {
                                setState(() {
                                  loading = false;
                                });
                              },
                              verificationFailed: (e) {
                                setState(() {
                                  loading = false;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Login failed. Please try again.',style: TextStyle(color: Colors.red),),
                                    backgroundColor: Colors.red[50],
                                  ),
                                );
                              },
                              codeSent: (String verificationId, int? token) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => S1(
                                              // verificationId: verificationId,
                                            )));
                                setState(() {
                                  loading = false;
                                });
                              },
                              codeAutoRetrievalTimeout: (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Login failed. Please try again.',style: TextStyle(color: Colors.red),),
                                    backgroundColor: Colors.red[50],
                                  ),
                                );
                                setState(() {
                                  loading = false;
                                });
                              });
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
