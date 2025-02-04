import 'package:iva/screens/TabsScreen/chunks/chunks.dart';
import 'package:iva/screens/TabsScreen/document_tab/document_tab.dart';
import 'package:iva/screens/TabsScreen/notification_screen/notification_screen.dart';
import 'package:iva/screens/TabsScreen/recent_tab/recent_tab.dart';
import 'package:iva/screens/TabsScreen/search_main/search_main.dart';
import 'package:iva/screens/TabsScreen/setting_screen/setting_screen.dart';
import 'package:iva/screens/folder_screen/folder_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class TabsScreen extends StatefulWidget {
  final VoidCallback onTapMinimize;
  final VoidCallback onTapPdf;
  const TabsScreen(
      {super.key, required this.onTapMinimize, required this.onTapPdf});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  bool isFolder = false;
  bool isNotification = false;
  bool isSetting = false;
  bool isSearch = false;
  bool isNormal = true;

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
                GestureDetector(
                  onTap: widget.onTapMinimize,
                  child: SvgPicture.asset("assets/minimize-01.svg"),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isNotification = false;
                        isNormal = false;
                        isFolder = false;
                        isSetting = false;
                        isSearch = true;
                      });
                    },
                    child: SvgPicture.asset("assets/search-md.svg")),
                const Spacer(),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isFolder = true;
                        isNormal = false;
                        isNotification = false;
                        isSetting = false;
                        isSearch = false;
                      });
                    },
                    child: SvgPicture.asset("assets/folder.svg")),
                SizedBox(width: 10.w),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isNotification = true;
                        isNormal = false;
                        isFolder = false;
                        isSetting = false;
                        isSearch = false;
                      });
                    },
                    child: SvgPicture.asset("assets/bell-02.svg")),
                SizedBox(width: 10.w),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isNotification = false;
                        isNormal = false;
                        isFolder = false;
                        isSetting = true;
                        isSearch = false;
                      });
                    },
                    child: SvgPicture.asset("assets/settings-02.svg")),
                SizedBox(width: 10.w),
                GestureDetector(
                    onTap: widget.onTapMinimize,
                    child: const Icon(Icons.close, color: Colors.white)),
              ],
            ),
            SizedBox(height: 10.h),
            isNormal == true
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(1.00, -0.02),
                            end: Alignment(-1, 0.02),
                            colors: [Color(0xFF323771), Color(0xFF5C58AD)],
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r)),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/Draganddrop.svg",
                                  height: 20.h,
                                  width: 20.w,
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: Text(
                                    'Place documents by drag & drop',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.96),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const Icon(Icons.close, color: Colors.white),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Text(
                                'Don’t show again',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                                assetPath: "assets/clock-rewind.svg",
                                label: "Recent"),
                            SizedBox(width: 5.w),
                            buildNavItem(
                                index: 1,
                                assetPath: "assets/folder.svg",
                                label: "Documents"),
                            SizedBox(width: 5.w),
                            buildNavItem(
                                index: 2,
                                assetPath: "assets/dotpoints-01.svg",
                                label: "Chunks"),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      _currentIndex == 0
                          ? RecentTab()
                          : _currentIndex == 1
                              ? DocumentTab()
                              : ChunksTab(
                                  onTapAnyPdf: widget.onTapPdf,
                                ),
                      SizedBox(height: 10.h),
                    ],
                  )
                : isFolder == true
                    ? FolderScreen(
                        onTapClose: () {
                          setState(() {
                            isNormal = true;
                          });
                        },
                      )
                    : isNotification == true
                        ? NotificationScreen(
                            onTapClose: () {
                              setState(() {
                                isNormal = true;
                              });
                            },
                          )
                        : isSetting == true
                            ? SettingScreen(onTapClose: () {
                                setState(() {
                                  isNormal = true;
                                });
                              })
                            : isSearch == true
                                ? SearchMain()
                                : Container()
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
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
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
              SizedBox(width: 7.w),
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
