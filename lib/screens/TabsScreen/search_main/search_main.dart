import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SearchMain extends StatefulWidget {
  const SearchMain({super.key});

  @override
  State<SearchMain> createState() => _SearchMainState();
}

class _SearchMainState extends State<SearchMain> {
  final List docType = ['PDF', 'JPG', 'PNG', 'CSV', 'DOC', 'PPTX'];
  int? _selectedType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
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
              height: 50.h,
              width: 344.w,
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
                      padding: EdgeInsets.all(6.w),
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
                      radius: 90.r,
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
            Text(
              'FILTER RESULTS',
              style: TextStyle(
                color: Color(0xF70FFFFFF),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.40,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              runSpacing: 10.w,
              children: List.generate(
                  docType.length,
                  (index) => StatefulBuilder(
                        builder: (BuildContext context,
                            void Function(void Function()) setState) {
                          return Padding(
                            padding: EdgeInsets.only(right: 5.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedType = index;
                                    });
                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 3.h),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(30.r)),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            docType[index],
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                                  .withOpacity(0.80),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.w,
                                          ),
                                          _selectedType == index
                                              ? Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                  size: 18.r,
                                                )
                                              : SizedBox()
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          height: 17.h,
                          width: 17.w,
                          "assets/tabs_icon_and_photo/users-check.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        "Shared",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.96),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          height: 17.h,
                          width: 17.w,
                          "assets/tabs_icon_and_photo/lock-01.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        "Personal",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.96),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200.r),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          height: 17.h, width: 17.w, "assets/globe-04.svg"),
                      SizedBox(width: 5.w),
                      Text(
                        "Global",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.96),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              thickness: 1,
              height: 1,
              color: Color(0xf70FFFFFF),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'RELATED WORDS',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9599999785423279),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.40,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Container(
                        width: 61.w,
                        height: 24.h,
                        margin: EdgeInsets.only(right: 7.w),
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.w, vertical: 4.h),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.07999999821186066),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Recent',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.9599999785423279),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SIGNAL WORDS',
                  style: TextStyle(
                    color: Color(0xF70FFFFFF),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/search-md.svg"),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Marketplace',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9599999785423279),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/search-md.svg"),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Market Budget',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9599999785423279),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Document',
              style: TextStyle(
                color: Color(0xF70FFFFFF),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.40,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              margin: EdgeInsets.only(bottom: 15.h),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.08),
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                border: Border.all(color: Color(0x265E5E5E)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFileItem(
                    iconPath: "assets/csv.png",
                    fileName: "Market share list.csv",
                    label: "Global",
                    date: "Jan 4, 2024",
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    thickness: 1.0,
                    height: 1.h,
                    color: Color(0x265E5E5E),
                  ),
                  SizedBox(height: 10.h),
                  buildFileItem(
                    iconPath: "assets/pdf.png",
                    fileName: "Market share list.csv",
                    label: "Personal",
                    date: "Jan 4, 2024",
                  ),
                  buildFileItem(
                    iconPath: "assets/csv.png",
                    fileName: "Market share list.csv",
                    label: "Global",
                    date: "Jan 4, 2024",
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    thickness: 1.0,
                    height: 1.h,
                    color: Color(0x265E5E5E),
                  ),
                  SizedBox(height: 10.h),
                  buildFileItem(
                    iconPath: "assets/pdf.png",
                    fileName: "Market share list.csv",
                    label: "Personal",
                    date: "Jan 4, 2024",
                  ),
                  buildFileItem(
                    iconPath: "assets/csv.png",
                    fileName: "Market share list.csv",
                    label: "Global",
                    date: "Jan 4, 2024",
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    thickness: 1.0,
                    height: 1.h,
                    color: Color(0x265E5E5E),
                  ),
                  SizedBox(height: 10.h),
                  buildFileItem(
                    iconPath: "assets/pdf.png",
                    fileName: "Market share list.csv",
                    label: "Personal",
                    date: "Jan 4, 2024",
                  ),
                  buildFileItem(
                    iconPath: "assets/csv.png",
                    fileName: "Market share list.csv",
                    label: "Global",
                    date: "Jan 4, 2024",
                  ),
                  SizedBox(height: 10.h),
                  Divider(
                    thickness: 1.0,
                    height: 1.h,
                    color: Color(0x265E5E5E),
                  ),
                  SizedBox(height: 10.h),
                  buildFileItem(
                    iconPath: "assets/pdf.png",
                    fileName: "Market share list.csv",
                    label: "Personal",
                    date: "Jan 4, 2024",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Document Chunks',
              style: TextStyle(
                color: Color(0xF70FFFFFF),
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.40,
              ),
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

  Widget buildFileItem({
    required String iconPath,
    required String fileName,
    required String label,
    required String date,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 32.h,
            width: 25.w,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fileName,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              height: 17.h, width: 17.w, "assets/globe-04.svg"),
                          SizedBox(width: 5.w),
                          Text(
                            label,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.96),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      date,
                      style: TextStyle(
                        color: Color(0xF90FFFFFF),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SvgPicture.asset(height: 20.h, width: 20.w, "assets/share-01.svg"),
          SizedBox(width: 10.w),
          SvgPicture.asset(height: 20.h, width: 20.w, "assets/link-01.svg"),
        ],
      ),
    );
  }
}
