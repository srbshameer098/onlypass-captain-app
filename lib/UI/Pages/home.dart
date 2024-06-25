import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled7/Bloc/Event_Creation/event_bloc.dart';
import 'package:untitled7/UI/Pages/account.dart';
import 'package:untitled7/UI/Pages/wallet.dart';
import 'package:untitled7/test_pages/t_p_1.dart';

import '../../components/facility_item.dart';
import '../../event_pages.dart';
import 'enquiry.dart';
import 'members.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> icons = [
    'assets/icons/history.png',
    'assets/icons/members.png',
    'assets/icons/Enquiries.png',
    'assets/icons/Wallet.png',
  ];
  List<String> texts = [
    'Account',
    'Members',
    'Enquiries',
    'Wallet',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF191919),
        appBar: AppBar(
          toolbarHeight: 75.h,
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          title: Row(
            children: [
              Image.asset(
                'assets/icons/Group 33.png',
                height: 30.h,
                width: 80.w,
              ),
              SizedBox(
                width: 36.w,
              ),
              Container(
                height: 40.h,
                width: 207.w,
                decoration: ShapeDecoration(
                  color: const Color(0x19FEFEFE),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 0.30.w, color: const Color(0x26B2B2B2)),
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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 5),
            child: Container(
              width: double.infinity,
              height: 1.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [Color(0x00191919), Color(0xFF737373), Color(0x00191919)],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 1.h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1.00, 0.00),
              end: Alignment(-1, 0),
              colors: [Color(0x00191919), Color(0xFF737373), Color(0x00191919)],
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0, -1),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF1F1F1F), Color(0xFF191919)],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Container(
                          width: 44,
                          height: 3,
                          decoration: ShapeDecoration(
                            color: Color(0xFF464646),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 10.h),
                      child: Row(
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
                    ),
                    CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: 376.w,
                          height: 64.h,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFEFEFE),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(1.r))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/imgLog.png"),
                                      fit: BoxFit.fill,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jayaram Ravi',
                                      style: TextStyle(
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
                      options: CarouselOptions(
                        viewportFraction: 0.9,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        enlargeCenterPage: false,
                        clipBehavior: Clip.none,
                        enableInfiniteScroll: false,
                        aspectRatio: 400 / 64,
                        height: 88.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Center(
                        child: DotsIndicator(
                          dotsCount: 5,
                          position: _currentIndex,
                          decorator: DotsDecorator(
                            activeColor: Colors.white,
                            color: Color(0xFF5D5D5D),
                            spacing: EdgeInsets.all(2),
                            activeSize: Size(10, 8),
                            size: Size(9, 4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Manage your facility',
                        style: GoogleFonts.montserrat(
                          color: const Color(0xFF818181),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Account()));
                              },
                              child:
                                  FacilityItem(icon: icons[0], text: texts[0])),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Members()));
                              },
                              child:
                                  FacilityItem(icon: icons[1], text: texts[1])),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Enquiry()));
                              },
                              child:
                                  FacilityItem(icon: icons[2], text: texts[2])),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const Wallet()));
                              },
                              child:
                                  FacilityItem(icon: icons[3], text: texts[3])),
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
                      height: 40.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      // builder: (_) => const CreateEvent()));
                                      builder: (_) => const EventPages()));
                            },
                            child: Text(
                              'add new',
                              style: GoogleFonts.montserrat(
                                  color: const Color(0xFFFEFEFE),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                  decorationThickness: 1.w),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),

                    ///-----------Tab Bar  -------------------///
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 24.h),
                      child: ButtonsTabBar(
                        buttonMargin: EdgeInsets.only(right: 32),
                        splashColor: Colors.white,
                        height: 30,
                        elevation: 0,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 6.w),
                        radius: 0,
                        borderWidth: 0.9,
                        borderColor: Color(0xFF282828),
                        unselectedBorderColor: Color(0xFF4D4D4D),
                        backgroundColor: Colors.white,
                        unselectedBackgroundColor: Colors.transparent,
                        labelStyle: GoogleFonts.montserrat(
                            color: Color(0xFF191919),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 0),
                        unselectedLabelStyle: GoogleFonts.montserrat(
                            color: Color(0xFF818181),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 0),
                        tabs: [
                          Tab(
                            height: 30,
                            text: 'Upcoming (${3})',
                          ),
                          Tab(
                            height: 30,
                            text: 'Regular (${2})',
                          ),
                          Tab(
                            height: 30,
                            text: 'Past (${5})',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300.h,
                      child: TabBarView(children: [
                        ///-----------Tab 1  -------------------///
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 16),
                          child: SizedBox(
                            height: 270.h,
                            child: BlocBuilder<EventBloc, EventState>(
                              builder: (context, state) {
                                if (state is EventBloCLoading) {
                                  return const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  );
                                }
                                if (state is EventBloCError) {
                                  return Center(
                                    child: Text('something else !!'),
                                  );
                                }
                                if (state is EventBLoCLoaded) {
                                  // data = BlocProvider.of.<EventBloc>(context).eventModel;
                                }
                                return ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, position) {
                                    return Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 152.w,
                                              height: 194.h,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/img1.png",
                                                    ),
                                                    fit: BoxFit.cover),
                                              ),
                                            ),
                                            Positioned(
                                                top: 163.h,
                                                child: Container(
                                                  width: 152.w,
                                                  height: 31.h,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                          -0.00, 1.00),
                                                      end: Alignment(0, -1),
                                                      colors: [
                                                        Color(0x91191919),
                                                        Colors.black
                                                            .withOpacity(0.35),
                                                        Color(0x00191919)
                                                      ],
                                                    ),
                                                  ),
                                                )),
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
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      color: const Color(
                                                          0xFFFEFEFE),
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                  color:
                                                      const Color(0xFFFEFEFE),
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4.w),
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
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4.h),
                                          child: SizedBox(
                                            width: 153.w,
                                            child: Text(
                                              'Fri, Dec 23 8:30am - 9:30am',
                                              style: GoogleFonts.inter(
                                                color: const Color(0xFF818181),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return SizedBox(
                                      width: 23.w,
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),

                        ///-----------Tab 2  -------------------///
                        SingleChildScrollView(
                          child: Center(
                            child: Text(
                              "No more data available",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF818181),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        ///-----------Tab 3  -------------------///
                        SingleChildScrollView(
                          child: Center(
                            child: Text(
                              "No more data available",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF818181),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
