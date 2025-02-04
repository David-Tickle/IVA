import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SettingScreen extends StatefulWidget {
  final VoidCallback onTapClose;

  const SettingScreen({
    super.key,
    required this.onTapClose,
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w, // Corrected MediaQuery usage
      height: 620.h,
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xf155E5E5E), Color(0xf50FFFFFF)]),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Added to wrap content
          children: [
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Color(0xf70FFFFFF),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Setting',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9599999785423279),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.16,
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: widget.onTapClose,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Color(0xf70FFFFFF),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/settings-02.svg"),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Account Settings',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9599999785423279),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.16,
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Color(0xf70FFFFFF),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                    "assets/tabs_icon_and_photo/message-chat-square.svg"),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Feedback',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9599999785423279),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.16,
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem({
    required int index,
    required String label,
  }) {
    final isSelected = _currentIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 8.h),
          decoration: ShapeDecoration(
            color: isSelected ? Color(0xF90C9D2D6) : null,
            shape: RoundedRectangleBorder(
              side: isSelected
                  ? BorderSide(width: 0.5.w, color: Colors.white)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.96),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
