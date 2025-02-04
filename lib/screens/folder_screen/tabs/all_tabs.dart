import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:svg_flutter/svg.dart';

class AllTab extends StatefulWidget {
  const AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  int? _selectedValue;
  int? _selectedType;
  bool isUploadFile = false;
  int _currentIndex = 0;
  final List radioTitle = [
    'A-Z',
    'Z-A',
    'Recently Added',
    'Oldest',
    'Recently Updated',
  ];
  final List docType = ['PDF', 'JPG', 'PNG', 'CSV', 'DOC', 'PPTX'];

  @override
  Widget build(BuildContext context) {
    return isUploadFile == false
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 24.r,
                    backgroundColor: Colors.black.withOpacity(0.08),
                    child: PopupMenuButton(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                              padding: EdgeInsets.zero,
                              child: StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Padding(
                                    padding: EdgeInsets.all(15.w),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SORT BY',
                                          style: TextStyle(
                                            color: Color(0xF90FFFFFF),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.40,
                                          ),
                                        ),
                                        SizedBox(height: 15.h),
                                        Wrap(
                                          runSpacing: 20.w,
                                          children: List.generate(
                                            radioTitle.length,
                                            (index) => Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.w),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _selectedValue = index;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.all(2.w),
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: Color(
                                                                0xff545454)),
                                                      ),
                                                      child: CircleAvatar(
                                                        radius: 5.r,
                                                        backgroundColor:
                                                            _selectedValue ==
                                                                    index
                                                                ? Colors.white
                                                                : Colors
                                                                    .transparent,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10.w),
                                                  Text(
                                                    radioTitle[index],
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white
                                                          .withOpacity(0.80),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15.h),
                                        Text(
                                          'DOCUMENT TYPE',
                                          style: TextStyle(
                                            color: Color(0xF90FFFFFF),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.40,
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        Wrap(
                                          runSpacing: 10.w,
                                          children: List.generate(
                                              docType.length,
                                              (index) => StatefulBuilder(
                                                    builder: (BuildContext
                                                            context,
                                                        void Function(
                                                                void Function())
                                                            setState) {
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 5.w),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  _selectedType =
                                                                      index;
                                                                });
                                                              },
                                                              child: Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          8.w,
                                                                      vertical:
                                                                          3.h),
                                                                  decoration: BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.r)),
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Text(
                                                                        docType[
                                                                            index],
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              11.sp,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          color: Colors
                                                                              .white
                                                                              .withOpacity(0.80),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            8.w,
                                                                      ),
                                                                      _selectedType ==
                                                                              index
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
                                        SizedBox(height: 10.h),
                                        Text(
                                          'ACCESS',
                                          style: TextStyle(
                                            color: Color(0xF90FFFFFF),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.40,
                                          ),
                                        ),
                                        SizedBox(height: 15.h),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.h,
                                                  horizontal: 4.w),
                                              decoration: ShapeDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          200.r),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      height: 17.h,
                                                      width: 17.w,
                                                      "assets/globe-04.svg"),
                                                  SizedBox(width: 5.w),
                                                  Text(
                                                    "Global",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.96),
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: -0.10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // SizedBox(
                                            //   width: 10.w,
                                            // ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.h,
                                                  horizontal: 4.w),
                                              decoration: ShapeDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          200.r),
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
                                                      color: Colors.white
                                                          .withOpacity(0.96),
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: -0.10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // SizedBox(
                                            //   width: 10.w,
                                            // ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 2.h,
                                                  horizontal: 4.w),
                                              decoration: ShapeDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          200.r),
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
                                                      color: Colors.white
                                                          .withOpacity(0.96),
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: -0.10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15.h),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Text(
                                                'Clear All',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(
                                                          0.9599999785423279),
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -0.14,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                width: 78.w,
                                                height: 32.h,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w,
                                                ),
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF5E5CE6),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            200.r),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Apply',
                                                      style: TextStyle(
                                                        color: Colors.white
                                                            .withOpacity(
                                                                0.9599999785423279),
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                },
                              )),
                        ];
                      },
                      offset: const Offset(0, 30),
                      color: Colors.black.withOpacity(0.80),
                      icon: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 20.r,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
                      fileName: "Market share list.csv",
                      label: "Personal",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
                      fileName: "Market share list.csv",
                      label: "Personal",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
                      fileName: "Market share list.csv",
                      label: "Personal",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
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
                      iconPath: "assets/tabs_icon_and_photo/File icon.svg",
                      fileName: "Market share list.csv",
                      label: "Personal",
                      date: "Jan 4, 2024",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isUploadFile = !isUploadFile;
                  });
                },
                child: Container(
                  width: 328.w,
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: ShapeDecoration(
                    color: Color(0xFF5E5CE6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200.r),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Upload New',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9599999785423279),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset(
                          "assets/tabs_icon_and_photo/file-upload-01.svg")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upload File',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9599999785423279),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.14,
                          ),
                        ),
                        Icon(
                          Icons.close,
                          color: Color(0xf70FFFFFF),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Divider(
                      thickness: 1.0,
                      height: 1.h,
                      color: Color(0x265E5E5E),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: SizedBox(
                        width: 320.w,
                        height: 148.h,
                        child: DottedBorder(
                          color: Color(0xf70FFFFFF),
                          dashPattern: [4, 2],
                          borderType: BorderType.RRect,
                          radius: Radius.circular(12.r),
                          padding: EdgeInsets.all(6.w),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.r)),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 48.w,
                                    height: 48.h,
                                    padding: const EdgeInsets.all(12),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      color: Color(0x2D5E5E5E),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/tabs_icon_and_photo/file-upload-01.svg")
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                        text: 'Browse files',
                                        style: TextStyle(
                                          color: Colors.white
                                              .withOpacity(0.9599999785423279),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ' or drag and drop',
                                            style: TextStyle(
                                              color: Color(0xf70FFFFFF),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: -0.14,
                                            ),
                                          )
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    'Max size 400MB',
                                    style: TextStyle(
                                      color: Color(0xf70FFFFFF),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: 320.w,
                      height: 56.h,
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.07999999821186066),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/tabs_icon_and_photo/fig.svg"),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Screenshot.jpg',
                                        style: TextStyle(
                                          color: Colors.white
                                              .withOpacity(0.9599999785423279),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        Icons.close,
                                        color: Color(0xf70FFFFFF),
                                        size: 20.r,
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.5MB / 1.4MB',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xf70FFFFFF),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      SizedBox(
                                        width: 95.w,
                                        height: 4.h,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                          child: LinearProgressBar(
                                            maxSteps: 100,
                                            progressType: LinearProgressBar
                                                .progressTypeLinear,
                                            currentStep: 80,
                                            progressColor:
                                                Colors.white.withOpacity(0.80),
                                            backgroundColor: Color(0x7FD0D0D0),
                                            borderRadius: BorderRadius.circular(
                                                10.r), //  NEW
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        '80%',
                                        style: TextStyle(
                                          color: Colors.white
                                              .withOpacity(0.9599999785423279),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.10,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: 320.w,
                      height: 56.h,
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.07999999821186066),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                                "assets/tabs_icon_and_photo/fig.svg"),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Screenshot.jpg',
                                        style: TextStyle(
                                          color: Colors.white
                                              .withOpacity(0.9599999785423279),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        Icons.close,
                                        color: Color(0xf70FFFFFF),
                                        size: 20.r,
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '0.5MB / 1.4MB',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xf70FFFFFF),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: -0.10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Container(
                                        width: 66.w,
                                        height: 16.h,
                                        decoration: ShapeDecoration(
                                          color: Colors.black
                                              .withOpacity(0.10000000149011612),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.done,
                                              size: 14.r,
                                              color: Color(0xf70FFFFFF),
                                            ),
                                            SizedBox(width: 2.w),
                                            Container(
                                              width: 42.w,
                                              padding: const EdgeInsets.only(
                                                  bottom: 1),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Uploaded',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(
                                                              0.9599999785423279),
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: -0.10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Upload to',
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9599999785423279),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.14,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Container(
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
                                      assetPath:
                                          "assets/tabs_icon_and_photo/lock-01.svg",
                                      label: "Personal"),
                                  SizedBox(width: 5.w),
                                  buildNavItem(
                                      index: 1,
                                      assetPath: "assets/globe-04.svg",
                                      label: "Global"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 40.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFF5E5CE6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200.r),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Upload',
                                    style: TextStyle(
                                      color: Colors.white
                                          .withOpacity(0.9599999785423279),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              decoration: ShapeDecoration(
                                color: Color(0x2D5E5E5E),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200.r),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: Colors.white
                                          .withOpacity(0.9599999785423279),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
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
          SvgPicture.asset(
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
