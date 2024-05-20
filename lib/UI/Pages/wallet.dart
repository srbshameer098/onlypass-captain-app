// wallet.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// app_colors.dart
class AppColors {
  static const Color background = Color(0xFF191919);
  static const Color cardBackground = Color(0xFF282828);
  static const Color balanceColor = Color(0xFF37F840);
  static const Color transferButtonBackground = Color(0xFF313132);
  static const Color transferTextColor = Color(0xFFA3A3A3);
}

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final NumberFormat _formatter = NumberFormat('#,##,000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: _buildBackButton(),
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Wallet',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [_buildMenuButton()],
      ),
      body: Column(
        children: [
          _buildBody(),
          Expanded(
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
          )
        ],
      ),
    );
  }

  Widget _buildBackButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: EdgeInsets.only(left: 25.w, top: 10.h, bottom: 10.h),
        child: Container(
          width: 37.59.w,
          height: 37.59.h,
          decoration: ShapeDecoration(
            color: AppColors.cardBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.w),
      child: Center(
        child: Image.asset(
          'assets/icons/fi-rr-menu-dots-vertical.png',
          height: 24.h,
          width: 26.w,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildWalletCard(),
      ],
    );
  }

  Widget _buildWalletCard() {
    return Padding(
      padding: EdgeInsets.all(20.0.w),
      child: Container(
        width: double.infinity,
        height: 169.h,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(3.r),
        ),
        child: Stack(
          children: [
            _buildWalletIcon(),
            _buildWalletInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildWalletIcon() {
    return Positioned(
      top: -8.h,
      left: 293.w,
      child: Transform.rotate(
        angle: -0.44,
        child: Opacity(
          opacity: 0.3,
          child: ClipRRect(
            child: Image.asset(
              'assets/icons/Wallet.png',
              width: 100.w,
              height: 100.h,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWalletInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildAvailableBalanceText(),
        _buildBalanceRow(),
        SizedBox(
          width: 20.w,
        ),
        _buildTransferButton(),
      ],
    );
  }

  Widget _buildAvailableBalanceText() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 20.h),
      child: Text(
        'Available Balance',
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildBalanceRow() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          Text(
            '₹ ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: AppColors.balanceColor,
              fontSize: 40.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            _formatter.format(5000),
            style: GoogleFonts.montserrat(
              color: AppColors.balanceColor,
              fontSize: 40.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.32,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTransferButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      width: double.infinity,
      height: 52.h,
      decoration: BoxDecoration(
        color: AppColors.transferButtonBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(3.r),
          bottomRight: Radius.circular(3.r),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTransferText(),
          _buildTransferButtonContent(),
        ],
      ),
    );
  }

  Widget _buildTransferText() {
    return Row(
      children: [
        Text(
          'Available To Transfer',
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: AppColors.transferTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.32,
          ),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          _formatter.format(5000),
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            height: 0.11.h,
            letterSpacing: -0.32,
          ),
        ),
      ],
    );
  }
  Widget _buildTransferButtonContent() {
    return Container(
      width: 90,
      height: 32,
      padding: const EdgeInsets.only(top: 5, left: 16, right: 16, bottom: 6),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.30,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0x7FFEFEFF),
          ),
          borderRadius: BorderRadius.circular(1),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 24,
            offset: Offset(0, 4),
            spreadRadius: -1,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Transfer',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Color(0xFF191919),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 0.11,
              letterSpacing: -0.32,
            ),
          ),
        ],
      ),
    );
  }
}