import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanState();
}

class _ScanState extends State<ScanPage> {
  Barcode? result;
  QRViewController? controller;
  final TextEditingController _controller = TextEditingController();

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.all(8.0.w),
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
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 5.w),
            child: Center(
                child: Image.asset(
              'assets/icons/fi-rr-menu-dots-vertical.png',
              height: 24.h,
              width: 26.w,
            )),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildQrView(context),
                Positioned(
                  top: 510.h,
                  // left: 191.w,
                  child: GestureDetector(
                    onTap: () async {
                      await controller?.toggleFlash();
                      setState(() {});
                    },
                    child: Opacity(
                      opacity: 0.7,
                      child: CircleAvatar(
                        radius: 24.r,
                        backgroundColor: const Color(0xFF303030),
                        child: Center(
                            child: Image.asset(
                          'assets/icons/image-flash.png',
                          height: 24.h,
                          width: 24.w,
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100.h,
            width: 430.w,
            color: const Color(0xFF282828),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 29.h),
                child: Container(
                  width: 390.31.w,
                  height: 54.81.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191919),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.r)),
                  ),
                  child: Center(
                    child: TextFormField(
                      textInputAction: TextInputAction.search,
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFFE3E3E3),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      cursorColor: Colors.white,
                      controller: _controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: (_controller.toString().isNotEmpty)
                            ? IconButton(
                                icon: Icon(
                                  Icons.clear,
                                  color: Color(0xff888888),
                                  size: 20,
                                ),
                                onPressed: () {
                                  _controller.clear();
                                },
                              )
                            : SizedBox(
                                width: 10.w,
                              ),
                        hintText: 'Type Code number',
                        prefix: SizedBox(
                          width: 15.w,
                        ),
                        hintStyle: GoogleFonts.montserrat(
                          color: const Color(0xFF888888),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400.w ||
            MediaQuery.of(context).size.height < 400.h)
        ? 310.0.w
        : 205.0.w;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          overlayColor: const Color.fromRGBO(0, 0, 0, 80),
          borderColor: const Color(0xFF00FF00),
          borderRadius: 0.3.r,
          borderLength: 40.w,
          borderWidth: 5.w,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
