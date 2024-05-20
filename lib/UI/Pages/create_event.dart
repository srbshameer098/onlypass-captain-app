import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'event_time.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}
String dropdownValue = 'Free';
bool _selectType = true;

final eventController = TextEditingController();
final eventDescriptionController = TextEditingController();
final eventCategoryController = TextEditingController();
final eventSlotController = TextEditingController();
final eventAmountController = TextEditingController();

class _CreateEventState extends State<CreateEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1B1B),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, top: 10.h, bottom: 10.h),
            child: Container(
              width: 37.59.w,
              height: 37.59.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF282828),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r)),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFF1B1B1B),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Create an event or class',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
            child: Center(
                child: Image.asset(
              'assets/icons/fi-rr-menu-dots-vertical.png',
              height: 24.h,
              width: 26.w,
            )),
          )
        ],
      ),
      floatingActionButton: CircularStepProgressIndicator(
        totalSteps: 100,
        currentStep: 35,
        stepSize: 0,
        selectedColor: Color(0xFF37F840),
        unselectedColor: Colors.transparent,
        width: 85.w,
        height: 85.h,
        selectedStepSize: 5,
        roundedCap: (_, __) => true,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => EventTime()));
          },
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 33.r,
            child: CircleAvatar(
              backgroundColor: Color(0xFFFEFEFE),
              radius: 32.r,
              child: Center(child: Icon(Icons.east)),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Text(
                'Select type ',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 08.0.h),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectType = !_selectType;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 180.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEFEFE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.r)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 12.w,
                              height: 12.h,
                              decoration: ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                      width: 3.w, color: Color(0xFF00FF00)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Create an event',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF191919),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      // SizedBox(width: 16.w,),
                      Container(
                        width: 180.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF282828),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 12.w,
                              height: 12.h,
                              decoration: ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                      width: 1.w, color: Color(0xFFFEFEFE)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Create a class',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF6F6F70),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
              child: Text(
                'Event name',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
                child: Container(
                  width: double.infinity,
                  height: 48.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF282828),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.r)),
                  ),
                  child: TextFormField(
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    controller: eventController,
                    decoration: InputDecoration(
                      suffix: SizedBox(
                        width: 10.w,
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter what do you want to call this event',
                      hintStyle: GoogleFonts.montserrat(
                        color: Color(0xFF6F6F70),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      prefix: SizedBox(
                        width: 16.w,
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
              child: Text(
                'Event description',
                style: GoogleFonts.montserrat(
                  color: Color(0xFFE4E4E4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
                child: Container(
                  width: double.infinity.w,
                  decoration: ShapeDecoration(
                    color: Color(0xFF282828),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.r)),
                  ),
                  child: TextFormField(
                    controller: eventDescriptionController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(250),
                    ],
                    maxLines: 4,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLength: 250,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(16.w),
                      border: InputBorder.none,
                      hintText: 'Enter few sentences about this event',
                      hintStyle: GoogleFonts.montserrat(
                        color: Color(0xFF6F6F70),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      counterText:
                          '${eventDescriptionController.text.length}/250',
                      counterStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                )),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 12.h),
                      child: Text(
                        'Event category',
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFE4E4E4),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.w, vertical: 12.h),
                        child: Container(
                          width: 180.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFF282828),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.r)),
                          ),
                          child: TextFormField(
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            controller: eventCategoryController,
                            decoration: InputDecoration(
                              suffix: SizedBox(
                                width: 10.w,
                              ),
                              border: InputBorder.none,
                              hintText: 'Select category',
                              hintStyle: GoogleFonts.montserrat(
                                color: Color(0xFF6F6F70),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              prefix: SizedBox(
                                width: 16.w,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Text(
                        'Entry ticket',
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFE4E4E4),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child:  Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        width: 180.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF282828),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.r)),
                        ),
                        child: DropdownButton(
                          hint: SizedBox(width:123.w),
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.white,
                          alignment: FractionalOffset.centerLeft,
                          dropdownColor: Colors.grey[900],
                          value: dropdownValue,
                          iconSize: 24.sp,
                          elevation: 16,
                          style: GoogleFonts.montserrat(
                            color: Color(0xFFFEFEFE),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          onChanged: (dynamic newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['Free', 'Paid']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                dropdownValue ==('Free')
                    ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
                      child: Text(
                        'Available slots',
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFE4E4E4),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
                        child: Container(
                          width: 180.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                            color: Color(0xFF282828),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.r)),
                          ),
                          child: TextFormField(
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            controller: eventSlotController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              suffix: SizedBox(
                                width: 10.w,
                              ),
                              border: InputBorder.none,
                              hintText: 'Number of seats',
                              hintStyle: GoogleFonts.montserrat(
                                color: Color(0xFF6F6F70),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              prefix: SizedBox(
                                width: 16.w,
                              ),
                            ),
                          ),
                        )),
                  ],
                )
                    : Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
                          child: Text(
                            'Available slots',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFFE4E4E4),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
                            child: Container(
                              width: 180.w,
                              height: 48.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFF282828),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.r)),
                              ),
                              child: TextFormField(
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                controller: eventSlotController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  suffix: SizedBox(
                                    width: 10.w,
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Number of seats',
                                  hintStyle: GoogleFonts.montserrat(
                                    color: Color(0xFF6F6F70),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  prefix: SizedBox(
                                    width: 16.w,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsets.symmetric( vertical: 12.h),
                          child: Text(
                            'Amount',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFFE4E4E4),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                            child: Container(
                              width: 180.w,
                              height: 48.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFF282828),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1.r)),
                              ),
                              child: TextFormField(
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                                controller: eventAmountController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  suffix: SizedBox(
                                    width: 10.w,
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Amount per seat',
                                  hintStyle: GoogleFonts.montserrat(
                                    color: Color(0xFF6F6F70),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  prefix: SizedBox(
                                    width: 16.w,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 100.h,)

          ],
        ),
      ),
    );
  }
}
