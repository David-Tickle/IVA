import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AllNotification extends StatefulWidget {
  const AllNotification({super.key});

  @override
  State<AllNotification> createState() => _AllNotificationState();
}

class _AllNotificationState extends State<AllNotification> {
  final List docType = [
    'Management',
    'Business',
    'IoT',
    'Quarterly',
    'Value Proposition',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 360.w,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.07999999821186066),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25.r,
                child: Image.asset(
                    "assets/tabs_icon_and_photo/Frame 2087326369.png"),
              ),
              SizedBox(
                width: 5.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Analysis for ',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.96),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                          TextSpan(
                            text: 'Business Plan New.doc ',
                            style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.9599999785423279),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                              text: 'completed.\n',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.96),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          TextSpan(
                            text: 'Your document is now online.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.96),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: '43m ago',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.96),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.10,
                            ),
                          )
                        ])),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07999999821186066),
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: Color(0x265E5E5E),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildFileItem(
                            iconPath:
                                "assets/tabs_icon_and_photo/File icon.svg",
                            fileName: "Market share list.csv",
                            label: "Global",
                            date: "Jan 4, 2024",
                            requireWidgetForShare: CircleAvatar(
                              radius: 25.r,
                              backgroundColor: Colors.transparent,
                              child: PopupMenuButton(
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        padding: EdgeInsets.zero,
                                        onTap: () {},
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'SHARE VIA EMAIL',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xF90FFFFFF),
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -0.10,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 35.h,
                                                    width: 148.w,
                                                    child: TextField(
                                                      scrollPadding:
                                                          EdgeInsets.zero,
                                                      decoration:
                                                          InputDecoration(
                                                              filled: true,
                                                              fillColor: Color(
                                                                  0x7FD0D0D0),
                                                              hintText:
                                                                  'Marketing',
                                                              hintStyle: TextStyle(
                                                                  color: Color(
                                                                      0xf70FFFFFF),
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                              prefixIcon: Icon(
                                                                Icons
                                                                    .mail_outline_rounded,
                                                                color: Color(
                                                                    0xf70FFFFFF),
                                                                size: 19.r,
                                                              ),
                                                              suffixIcon: Icon(
                                                                Icons.close,
                                                                color: Color(
                                                                    0xf70FFFFFF),
                                                                size: 18.r,
                                                              ),
                                                              enabledBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          200
                                                                              .r),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none),
                                                              focusedBorder: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(200
                                                                              .r),
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none)),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  CircleAvatar(
                                                    radius: 23.r,
                                                    backgroundColor:
                                                        Color(0xFF5E5CE6),
                                                    child: Icon(
                                                      Icons.send,
                                                      color: Colors.white,
                                                      size: 18.r,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 12.h,
                                              ),
                                              Text(
                                                'OR COPY LINK',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xF90FFFFFF),
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: -0.10,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              SizedBox(
                                                height: 35.h,
                                                width: 284.w,
                                                child: TextField(
                                                  scrollPadding:
                                                      EdgeInsets.zero,
                                                  decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor: Color(
                                                          0x7FD0D0D0),
                                                      hintText:
                                                          'Paste link here',
                                                      hintStyle: TextStyle(
                                                          color: Color(
                                                              0xf70FFFFFF),
                                                          fontSize: 12.sp,
                                                          fontWeight: FontWeight
                                                              .w400),
                                                      suffixIcon: Icon(
                                                        Icons.copy_rounded,
                                                        color:
                                                            Color(0xf70FFFFFF),
                                                        size: 18.r,
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          200
                                                                              .r),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          200
                                                                              .r),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none)),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  color: Color(0xF90000000),
                                  surfaceTintColor: Color(0xF90000000),
                                  icon: SvgPicture.asset(
                                      height: 20.h,
                                      width: 20.w,
                                      "assets/share-01.svg")),
                            ),
                            requireWidget: CircleAvatar(
                              radius: 25.r,
                              backgroundColor: Colors.transparent,
                              child: PopupMenuButton(
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context) {
                                    return [
                                      PopupMenuItem(
                                        padding: EdgeInsets.zero,
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'SIGNAL WORDS',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xF90FFFFFF),
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: -0.10,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: Container(
                                                width: 200.w,
                                                decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.r)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.w),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Marketing',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.9599999785423279),
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          SvgPicture.asset(
                                                              "assets/link-01.svg")
                                                        ],
                                                      ),
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.w),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Pitch',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.9599999785423279),
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          SvgPicture.asset(
                                                              "assets/link-01.svg")
                                                        ],
                                                      ),
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.w),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Quarterly',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      0.9599999785423279),
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          SvgPicture.asset(
                                                              "assets/link-01.svg")
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Container(
                                                      width: 200.w,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10.h),
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Color(0xFF5E5CE6),
                                                          borderRadius: BorderRadius.only(
                                                              bottomLeft:
                                                                  Radius
                                                                      .circular(
                                                                          15.r),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      15.r))),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                            size: 20.r,
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ];
                                  },
                                  offset: const Offset(0, 30),
                                  color: Color(0xF90000000),
                                  surfaceTintColor: Color(0xF90000000),
                                  icon: SvgPicture.asset(
                                      height: 20.h,
                                      width: 20.w,
                                      "assets/link-01.svg")),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Wrap(
                            runSpacing: 5.w,
                            children: List.generate(
                              docType.length,
                              (index) => StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Padding(
                                    padding: EdgeInsets.only(right: 5.w),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.w,
                                                  vertical: 3.h),
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30.r)),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/link-01.svg",
                                                    height: 12.h,
                                                    width: 12.w,
                                                    color: Colors.white
                                                        .withOpacity(0.80),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    docType[index],
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white
                                                          .withOpacity(0.80),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildFileItem({
    required String iconPath,
    required String fileName,
    required Widget requireWidget,
    required Widget requireWidgetForShare,
    required String label,
    required String date,
  }) {
    return Row(
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
        requireWidgetForShare,
        requireWidget,
      ],
    );
  }
}
