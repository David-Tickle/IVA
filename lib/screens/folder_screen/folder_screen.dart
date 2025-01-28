import 'package:iva/screens/TabsScreen/chunks/chunks.dart';
import 'package:iva/screens/TabsScreen/document_tab/document_tab.dart';
import 'package:iva/screens/TabsScreen/recent_tab/recent_tab.dart';
import 'package:iva/screens/folder_screen/tabs/all_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class FolderScreen extends StatefulWidget {
  final VoidCallback onTapClose;

  const FolderScreen({
    super.key,
    required this.onTapClose,
  });

  @override
  State<FolderScreen> createState() => _FolderScreenState();
}

class _FolderScreenState extends State<FolderScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w, // Corrected MediaQuery usage
      height: 620.h,
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.50),
          borderRadius: BorderRadius.circular(15)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Added to wrap content
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Documents',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.all(2.w),
                  decoration: BoxDecoration(
                    color: Color(0x7FD0D0D0),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildNavItem(
                          index: 0,
                          assetPath: "assets/folder.svg",
                          label: "All"),
                      SizedBox(width: 5.w),
                      buildNavItem(
                          index: 1,
                          assetPath: "assets/tabs_icon_and_photo/lock-01.svg",
                          label: "Personal"),
                      SizedBox(width: 5.w),
                      buildNavItem(
                          index: 2,
                          assetPath:
                              "assets/tabs_icon_and_photo/users-check.svg",
                          label: "Shared"),
                      SizedBox(width: 5.w),
                      buildNavItem(
                          index: 3,
                          assetPath: "assets/globe-04.svg",
                          label: "Global"),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                _currentIndex == 0 ? AllTab() : Container(),
                SizedBox(height: 10.h),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildNavItem({
    required int index,
    required String assetPath,
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
              SvgPicture.asset(assetPath, height: 20.h, width: 20.w),
              SizedBox(width: 3.w),
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
