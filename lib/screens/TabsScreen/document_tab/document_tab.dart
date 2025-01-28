import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class DocumentTab extends StatefulWidget {
  const DocumentTab({super.key});

  @override
  State<DocumentTab> createState() => _DocumentTabState();
}

class _DocumentTabState extends State<DocumentTab> {
  bool _isMarketing = false;
  int? _selectedValue;
  int? _selectedType;
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
    return _isMarketing == false
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/tabs_icon_and_photo/star-06.svg"),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Listening...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9599999785423279),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Container(
                  width: 328.w,
                  padding: EdgeInsets.all(14.w),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.07999999821186066),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                                radius: 80.r,
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
                                backgroundColor: Colors.black
                                    .withOpacity(0.10000000149011612),
                                child: Icon(
                                  Icons.mic_none_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Text(
                          'Listening for signal words...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9599999785423279),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: Text(
                          'Recent',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF545454),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isMarketing = !_isMarketing;
                              });
                            },
                            child: Container(
                              width: 91.w,
                              height: 28.h,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0x7FD0D0D0),
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
                                    'Marketable',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white
                                          .withOpacity(0.9599999785423279),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 91.w,
                            height: 28.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0x7FD0D0D0),
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
                                  'Signing',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white
                                        .withOpacity(0.9599999785423279),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 91.w,
                            height: 28.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Color(0x7FD0D0D0),
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
                                  'Workflow',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white
                                        .withOpacity(0.9599999785423279),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ])
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/tabs_icon_and_photo/star-06.svg"),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Marketing',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9599999785423279),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
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
                                              color: Color(0xFF545454),
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
                                                padding: EdgeInsets.only(
                                                    right: 15.w),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _selectedValue =
                                                              index;
                                                        });
                                                      },
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(2.w),
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
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
                                                        fontSize: 12.sp,
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
                                              color: Color(0xFF545454),
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
                                                                  void
                                                                      Function())
                                                              setState) {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 5.w),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
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
                                                                child:
                                                                    Container(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 8
                                                                                .w,
                                                                            vertical: 3
                                                                                .h),
                                                                        decoration: BoxDecoration(
                                                                            color: Colors
                                                                                .black,
                                                                            borderRadius: BorderRadius.circular(30
                                                                                .r)),
                                                                        child:
                                                                            Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Text(
                                                                              docType[index],
                                                                              style: TextStyle(
                                                                                fontSize: 12.sp,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.white.withOpacity(0.80),
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
                                          SizedBox(height: 10.h),
                                          Text(
                                            'ACCESS',
                                            style: TextStyle(
                                              color: Color(0xFF545454),
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
                                              SizedBox(
                                                width: 10.w,
                                              ),
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
                                              SizedBox(
                                                width: 10.w,
                                              ),
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
                                                    fontSize: 14.sp,
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
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              200.r),
                                                    ),
                                                  ),
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
                                                      Text(
                                                        'Apply',
                                                        style: TextStyle(
                                                          color: Colors.white
                                                              .withOpacity(
                                                                  0.9599999785423279),
                                                          fontSize: 14.sp,
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
                  height: 13.h,
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
                        iconImage: 'assets/globe-04.svg',
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
                        iconImage: 'assets/tabs_icon_and_photo/lock-01.svg',
                        iconPath: "assets/pdf.png",
                        fileName: "Market share list.csv",
                        label: "Personal",
                        date: "Jan 4, 2024",
                      ),
                      SizedBox(height: 10.h),
                      buildFileItem(
                        iconImage: 'assets/tabs_icon_and_photo/users-check.svg',
                        iconPath: "assets/pdf.png",
                        fileName: "Market share list.csv",
                        label: "Shared",
                        date: "Jan 4, 2024",
                      ),
                    ],
                  ),
                ),
              ]);
  }

  Widget buildFileItem({
    required String iconPath,
    required String iconImage,
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
                              height: 17.h, width: 17.w, iconImage),
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
                        color: Color(0xFF545454),
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
