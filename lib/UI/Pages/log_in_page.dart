import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Bloc/LogIn/log_in_bloc.dart';
import '../../Utils/utils.dart';
import '../Register/verify.dart';
import '../s1.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool loading = false;

  final auth = FirebaseAuth.instance;

  final PhoneNumberController = TextEditingController();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 0.h,
                    child: Image.asset(
                      'assets/images/imgLog.png',
                      width: 430.w,
                      height: 880.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 86.h,
                    child: Image.asset(
                      'assets/images/captianLogo.png',
                      alignment: Alignment.center,
                      width: 143.w,
                      height: 164.80.h,
                    ),
                  ),
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
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 16.h),
                  //   child: Container(
                  //     padding: EdgeInsets.symmetric(horizontal: 12.w),
                  //     width: 375.w,
                  //     height: 55.h,
                  //     decoration: ShapeDecoration(
                  //       color: const Color(0xFF282828),
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(1.r)),
                  //     ),
                  //     child: TextFormField(
                  //       controller: PhoneNumberController,
                  //       inputFormatters: [
                  //         LengthLimitingTextInputFormatter(13),
                  //       ],
                  //       decoration: InputDecoration(),
                  //     ),
                  //     // child: IntlPhoneField(
                  //     //   cursorColor: Colors.white,
                  //     //   inputFormatters: [
                  //     //     LengthLimitingTextInputFormatter(10),
                  //     //   ],
                  //     //   disableAutoFillHints: false,
                  //     //   autofocus: true,
                  //     //   disableLengthCheck: true,
                  //     //   enabled: true,
                  //     //   style: GoogleFonts.montserrat(
                  //     //     color: Colors.white,
                  //     //     fontSize: 16.sp,
                  //     //     fontWeight: FontWeight.w500,
                  //     //   ),
                  //     //   keyboardType: TextInputType.phone,
                  //     //   dropdownIconPosition: IconPosition.trailing,
                  //     //   dropdownIcon:
                  //     //       const Icon(Icons.keyboard_arrow_down_rounded),
                  //     //   dropdownTextStyle: GoogleFonts.montserrat(
                  //     //     color: Colors.white,
                  //     //     fontSize: 16.sp,
                  //     //     fontWeight: FontWeight.w500,
                  //     //   ),
                  //     //
                  //     //   decoration: InputDecoration(
                  //     //     prefixIconColor: Colors.white,
                  //     //     fillColor: const Color(0xFF282828),
                  //     //     filled: false,
                  //     //     hintText: '10 Digit mobile number',
                  //     //     hintStyle: GoogleFonts.montserrat(
                  //     //       color: const Color(0xFF6F6F70),
                  //     //       fontSize: 16.sp,
                  //     //       fontStyle: FontStyle.italic,
                  //     //       fontWeight: FontWeight.w400,
                  //     //     ),
                  //     //     border: const OutlineInputBorder(
                  //     //         borderSide: BorderSide.none),
                  //     //   ),
                  //     //   initialCountryCode: 'IN',
                  //     //   // You can set the initial country code here
                  //     //   onChanged: (phone) {
                  //     //     if (kDebugMode) {
                  //     //       print(phone.completeNumber);
                  //     //     } // This will print the complete phone number including the country code
                  //     //   },
                  //     // ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 24.w),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       auth.verifyPhoneNumber(
                  //           phoneNumber: '+917994770085',
                  //           verificationCompleted: (_) {},
                  //           verificationFailed: (e) {
                  //             SnackBar(
                  //               backgroundColor: Colors.red[900],
                  //               content: const Text(
                  //                 'verification Failed',
                  //                 style: TextStyle(color: Colors.white),
                  //               ),
                  //             );
                  //           },
                  //           codeSent: (String verificationId, int? token) {
                  //             Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (_) => Verify(
                  //                           verificationId: verificationId,
                  //                         )));
                  //           },
                  //           codeAutoRetrievalTimeout: (e) {
                  //             SnackBar(
                  //               backgroundColor: Colors.red[900],
                  //               content: const Text(
                  //                 'Auto Retrieval Timeout',
                  //                 style: TextStyle(color: Colors.white),
                  //               ),
                  //             );
                  //           });
                  //     },
                  //     child: Container(
                  //       width: 378.w,
                  //       height: 48.h,
                  //       decoration: ShapeDecoration(
                  //         color: const Color(0xFFFEFEFE),
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(1.r)),
                  //       ),
                  //       child: Center(
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             Text(
                  //               'Continue',
                  //               style: GoogleFonts.montserrat(
                  //                 color: const Color(0xFF191919),
                  //                 fontSize: 14.sp,
                  //                 fontWeight: FontWeight.w600,
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               width: 12.w,
                  //             ),
                  //             const Icon(
                  //               Icons.east_rounded,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // )
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
                            keyboardType: TextInputType.phone,
                            controller: PhoneNumberController,
                            decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                prefixText: '+91  ',
                                prefixStyle: TextStyle(color: Colors.white),
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
                          print("Loaddddddding");
                        }

                        if (state is LoginblocLoaded) {
                          BlocProvider.of<LogInBloc>(context).logInModel;

                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => S1()));
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
                                Utils().toastMessage(e.toString());
                              },
                              codeSent: (String verificationId, int? token) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Verify(
                                              verificationId: verificationId,
                                            )));
                                setState(() {
                                  loading = false;
                                });
                              },
                              codeAutoRetrievalTimeout: (e) {
                                Utils().toastMessage(e.toString());
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
                                Text(
                                  'Continue',
                                  style: GoogleFonts.montserrat(
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
