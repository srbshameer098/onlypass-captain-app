import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> icons = [
    'assets/icons/members.png',
    'assets/icons/history.png',
    'assets/icons/Wallet.png',
    'assets/icons/Enquiries.png',
  ];
  List<String> texts = [
    'Members',
    'History',
    'Wallet',
    'Enquiries',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      appBar: AppBar(

        title: Row(
          children: [
            Image.asset(
              'assets/icons/Group 33.png',
              height: 30.h,
              width: 80.w,
            ),
            SizedBox(width: 36.w,),
            Container(
              height: 40.h,
              width: 207.w,
              decoration: ShapeDecoration(
                color: const Color(0x19FEFEFE),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.30.w, color: const Color(0x26B2B2B2)),
                  borderRadius: BorderRadius.circular(140.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 14.r,
                      backgroundColor: const Color(0xFF202020),
                      child: Image.asset(
                        'assets/icons/performance.png',
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'See your performance',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Image.asset(
                'assets/icons/account.png',
                height: 24.h,
                width: 24.w,
              ),
              SizedBox(
                width: 29.w,
              )
            ],
          )
        ],
        centerTitle: false,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(29.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Quick view notification',
                          style: GoogleFonts.montserrat(
                            color: const Color(0xFF818181),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: CircleAvatar(
                            radius: 10.r,
                            backgroundColor: const Color(0xFF00FF00),
                            child: Text(
                              '9+',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'view all',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFFFEFEFE),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 1.w,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.w),
                  child: Container(
                    width: 376.w,
                    height: 190.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFF282828),
                        borderRadius: BorderRadius.all(Radius.circular(3.r))),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 10.w),
                          child: Container(
                            width: 344.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFEFEFE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3.r))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/40x40"),
                                        fit: BoxFit.none,
                                      ),
                                      shape: OvalBorder(
                                        side: BorderSide(
                                            width: 0.30.w,
                                            color: const Color(0xFF191919)),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jayaram Ravi',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF191919),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        '3 Months plan',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF9B9B9B),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '₹ ' '5,799 .00',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF191919),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'DUE YESTERDAY',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFFE83507),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 10.w),
                          child: Container(
                            width: 344.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFEFEFE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3.r))),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: ShapeDecoration(
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/40x40"),
                                        fit: BoxFit.none,
                                      ),
                                      shape: OvalBorder(
                                        side: BorderSide(
                                            width: 0.30.w,
                                            color: const Color(0xFF191919)),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Suhail Ibrahim',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF191919),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        '1 Month plan',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF9B9B9B),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '₹ ' '1,650 .00',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFF191919),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'DUE IN 3 DAYS',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFFF0BE0A),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  'Manage your facility',
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFF818181),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFF272727),
                            radius: 40.r,
                            child: Image.asset(
                              icons[0],
                              height: 28.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            texts[0],
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFF272727),
                            radius: 40.r,
                            child: Image.asset(
                              icons[1],
                              height: 28.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            texts[1],
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFF272727),
                            radius: 40.r,
                            child: Image.asset(
                              icons[2],
                              height: 28.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            texts[2],
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFF272727),
                            radius: 40.r,
                            child: Image.asset(
                              icons[3],
                              height: 28.h,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            texts[3],
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [
                        Color(0x00191919),
                        Color(0xFF737373),
                        Color(0x00191919)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Create & edit classes/events ',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFF818181),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'add new',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xFFFEFEFE),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 1.w),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(3.r))),
                      child: Center(
                        child: Text(
                          'Upcoming (3)',
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
                          'Regular (2)',
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
                          'Past (5)',
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
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: SizedBox(
                    height: 263.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, position) {
                        return GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      width: 152.w,
                                      height: 194.h,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://via.placeholder.com/152x194"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 163.h,
                                      child: Container(
                                        width: 152.w,
                                        height: 31.h,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: const Alignment(-0.00, 1.00),
                                            end: const Alignment(0, -1),
                                            colors: [
                                              const Color(0x91191919),
                                              Colors.black.withOpacity(
                                                  0.27000001072883606),
                                              const Color(0x00191919)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 101.w,
                                      top: 12.h,
                                      child: Container(
                                        width: 52.w,
                                        height: 16.h,
                                        decoration: const BoxDecoration(
                                            color: Colors.black),
                                        child: Center(
                                          child: Text(
                                            'Weekly',
                                            style: GoogleFonts.montserrat(
                                              color: const Color(0xFFFEFEFE),
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 15.w,
                                      top: 172.h,
                                      child: SizedBox(
                                        width: 16.w,
                                        height: 16.h,
                                        child: Image.asset(
                                          'assets/icons/groupIcon.png',
                                          height: 28.h,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 39.w,
                                      top: 175.h,
                                      child: Text(
                                        '17 booked',
                                        style: GoogleFonts.montserrat(
                                          color: const Color(0xFFFEFEFE),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.w),
                                  child: SizedBox(
                                    width: 153.w,
                                    child: Text(
                                      'Yoga class with Arun Master and team.',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  child: SizedBox(
                                    width: 153.w,
                                    child: Text(
                                      'Fri, Dec 23 8:30am - 9:30am',
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFF818181),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        height: 0.21.h,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 12.w,
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(1.00, 0.00),
                      end: Alignment(-1, 0),
                      colors: [
                        Color(0x00191919),
                        Color(0xFF737373),
                        Color(0x00191919)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
