import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRadioButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function onSelect;

  const CustomRadioButton({
    required this.text,
    required this.isSelected,
    required this.onSelect,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onSelect(widget.text),
      child: Container(
        height: 48.h,width: 180.w,
        padding:  EdgeInsets.symmetric(horizontal: 24.w,vertical: 16.h),
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.white : Colors.grey[900],
          borderRadius: BorderRadius.circular(1.0.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget.isSelected
                ? Container(
                    width: 12.w,
                    height: 12.h,
                    decoration: ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 3.w, color: Color(0xFF00FF00)),
                      ),
                    ),
                  )
                : Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 14.sp,
                  ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              widget.text,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: widget.isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
