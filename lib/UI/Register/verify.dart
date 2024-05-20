import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../s1.dart';

class Verify extends StatefulWidget {
  final String verificationId;
  const Verify({super.key, required this.verificationId});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final auth = FirebaseAuth.instance;
  final VerificationCodeController = TextEditingController();

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
                    'Enter OTP received',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xFFE4E4E4),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: OtpTextField(
                      fieldWidth: 82.w,
                      fieldHeight: 55.h,
                      borderWidth: 1,
                      borderRadius: BorderRadius.circular(0),
                      focusedBorderColor: Colors.grey,
                      textStyle: GoogleFonts.montserrat(color: Colors.white),
                      fillColor:Color(0xFF282828) ,
                      filled: true,
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
                      numberOfFields: 4,
                      enabledBorderColor: Colors.transparent,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      }, // end onSubmit
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Didn’t receive the code?  ',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFFA3A3A3),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Enter phone number again',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFFFEFEFE),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Verify over a phone call',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          color: Color(0xFF2193DD),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: GestureDetector(
                      onTap: () async {
                        final credential = PhoneAuthProvider.credential(
                            verificationId: widget.verificationId,
                            smsCode: VerificationCodeController.text.toString()
                        );
                        try{
                          await auth.signInWithCredential(credential);
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> S1()));
                        }catch(e){
                          SnackBar(
                            backgroundColor: Colors.red[900],
                            content: const Text(
                              'Error',
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        }

                        // auth.verifyPhoneNumber(
                        //     phoneNumber: PhoneNumberController.text,
                        //     verificationCompleted: (_){
                        //
                        //     },
                        //     verificationFailed: (e){
                        //       Utils().toastMessage(e.toString());
                        //     },
                        //     codeSent: (String verificationId, int? token){
                        //       Navigator.push(context, MaterialPageRoute(builder: (_)=> Verification(verificationId: verificationId,)));
                        //     },
                        //     codeAutoRetrievalTimeout: (e){
                        //       Utils().toastMessage(e.toString());
                        //     });
                      },
                      child: Container(
                        width: 376.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.r)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Verify',
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
                              ),
                            ],
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
