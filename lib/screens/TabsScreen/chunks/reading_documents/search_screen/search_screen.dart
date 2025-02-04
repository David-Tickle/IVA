import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 496.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: Color(0xf59303030),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 35.h,
              width: 184.w,
              child: TextField(
                scrollPadding: EdgeInsets.zero,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x7FD0D0D0),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Color(0xf70FFFFFF),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(4.w),
                      child: SvgPicture.asset("assets/search-md.svg"),
                    ),
                    suffixIcon: Icon(
                      Icons.close,
                      color: Color(0xf70FFFFFF),
                      size: 18.r,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200.r),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200.r),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                      radius: 70.r,
                      backgroundColor: Colors.transparent,
                      child: Image(
                          image: AssetImage(
                              "assets/tabs_icon_and_photo/Group 1000022191.png"))),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: CircleAvatar(
                      backgroundColor:
                          Colors.black.withOpacity(0.10000000149011612),
                      child: Icon(
                        Icons.search_off_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Text(
                'No Results Found',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9599999785423279),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Text(
                '“Marketing” did not match any documents.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xF80FFFFFF),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12 RESULTS',
                  style: TextStyle(
                    color: Color(0xF70FFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                ),
                Text(
                  'IN THIS FILE',
                  style: TextStyle(
                    color: Color(0xF70FFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                  color: Color(0xf30000000),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Marketing',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9599999785423279),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'data in 2024 shows that the trend is converging...',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9599999785423279),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Color(0xf70FFFFFF),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Marketing',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9599999785423279),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'data in 2024 shows that the trend is converging...',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9599999785423279),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Color(0xf70FFFFFF),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Marketing',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9599999785423279),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'data in 2024 shows that the trend is converging...',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9599999785423279),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Color(0xf70FFFFFF),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Marketing',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9599999785423279),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'data in 2024 shows that the trend is converging...',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9599999785423279),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Color(0xf70FFFFFF),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Marketing',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9599999785423279),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'data in 2024 shows that the trend is converging...',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9599999785423279),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12 RESULTS',
                  style: TextStyle(
                    color: Color(0xF70FFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                ),
                Text(
                  'in other files',
                  style: TextStyle(
                    color: Color(0xF70FFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.30),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                border: Border.all(color: Color(0x265E5E5E)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: RichText(
                            text: TextSpan(
                                text: 'Marketing',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.9599999785423279),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: [
                              TextSpan(
                                text:
                                    ' data in 2024 shows that the trend is converging to a downward projection by the end of 2025. This is caused..',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.9599999785423279),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ])),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 20.h,
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.07999999821186066),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200.r),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/pdf.png",
                          width: 15.w,
                          height: 20.h,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          'Business Plan 2024.pdf',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9599999785423279),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    thickness: 1.0,
                    height: 1.h,
                    color: Color(0x265E5E5E),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: RichText(
                            text: TextSpan(
                                text: 'Marketing',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.9599999785423279),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: [
                              TextSpan(
                                text:
                                    ' data in 2024 shows that the trend is converging to a downward projection by the end of 2025. This is caused..',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.9599999785423279),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ])),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 20.h,
                    padding: EdgeInsets.symmetric(horizontal: 7.w),
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.07999999821186066),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200.r),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/pdf.png",
                          width: 15.w,
                          height: 20.h,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          'Business Plan 2024.pdf',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9599999785423279),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
