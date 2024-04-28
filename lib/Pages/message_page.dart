import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff1B1B1B),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: ShapeDecoration(
              color: Color(0xFF282828),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            ),
            child: TextField(
              style:GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                suffix: SizedBox(width: 10,),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: GoogleFonts.montserrat(
                  color: Color(0xFF6F6F70),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Icon(Icons.search,color: Colors.white,)
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF1B1B1B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 29,vertical: 10),
            child: Text(
              'Messages',
              style: TextStyle(
                color: Color(0xFF818181),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 29),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(3.r))),
                  child: Center(
                    child: Text(
                      'All',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF191919),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.w, color: const Color(0xFF4D4D4D)),
                      borderRadius: BorderRadius.all(Radius.circular(3.r))),
                  child: Center(
                    child: Text(
                      'Bookings',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF818181),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.w, color: const Color(0xFF4D4D4D)),
                      borderRadius: BorderRadius.all(Radius.circular(3.r))),
                  child: Center(
                    child: Text(
                      'Onlypass',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF818181),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'No more data available',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color(0xFF818181),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
