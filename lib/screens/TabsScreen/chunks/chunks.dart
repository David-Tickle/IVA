import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ChunksTab extends StatefulWidget {
  final VoidCallback onTapAnyPdf;
  const ChunksTab({super.key, required this.onTapAnyPdf});

  @override
  State<ChunksTab> createState() => _ChunksTabState();
}

class _ChunksTabState extends State<ChunksTab> {
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
  bool isPages = false;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        child: SizedBox(
                            width: 400.w,
                            child: StatefulBuilder(
                              builder: (BuildContext context,
                                  void Function(void Function()) setState) {
                                return Padding(
                                  padding: EdgeInsets.all(15.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                    fontWeight: FontWeight.w500,
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
                                                      padding: EdgeInsets.only(
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
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            8.w,
                                                                        vertical: 3
                                                                            .h),
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
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                18.r,
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
                                                vertical: 2.h, horizontal: 4.w),
                                            decoration: ShapeDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.1),
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
                                                    fontWeight: FontWeight.w400,
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
                                                vertical: 2.h, horizontal: 4.w),
                                            decoration: ShapeDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.1),
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
                                                    fontWeight: FontWeight.w400,
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
                                                vertical: 2.h, horizontal: 4.w),
                                            decoration: ShapeDecoration(
                                              color:
                                                  Colors.black.withOpacity(0.1),
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
                                                    fontWeight: FontWeight.w400,
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
                                                color: Colors.white.withOpacity(
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
                                                mainAxisSize: MainAxisSize.min,
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
                      )
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
          GestureDetector(
            onTap: widget.onTapAnyPdf,
            child: buildFileItem(
              onTap: () {
                setState(() {
                  isPages = !isPages;
                });
              },
              iconPath: "assets/tabs_icon_and_photo/File icon.svg",
              fileName: "Market share list.csv",
              label: "Global",
              date: "Jan 4, 2024",
            ),
          ),
          Visibility(
              visible: isPages,
              child: Container(
                width: 328.w,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.0899999821186066),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 32.w,
                          height: 48.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color:
                                Colors.black.withOpacity(0.07999999821186066),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r)),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Page 1',
                                    style: TextStyle(
                                      color: Color(0xF70FFFFFF),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.10,
                                    ),
                                  ),
                                  Text(
                                    '5 matches',
                                    style: TextStyle(
                                      color: Color(0xF70FFFFFF),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: -0.10,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'As the sun begins its slow ascent, the city stirs to life. First come the early risers—joggers, dog walk...',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.9599999785423279),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Divider(
            thickness: 1.0,
            height: 1.h,
            color: Color(0x265E5E5E),
          ),
          SizedBox(height: 10.h),
          buildFileItem(
            onTap: () {},
            iconPath: "assets/tabs_icon_and_photo/File icon.svg",
            fileName: "Market share list.csv",
            label: "Personal",
            date: "Jan 4, 2024",
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            margin: EdgeInsets.only(bottom: 15.h),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.08),
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
        ]);
  }

  Widget buildFileItem({
    required String iconPath,
    required String fileName,
    required String label,
    required String date,
    required VoidCallback onTap,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        border: Border.all(color: Color(0x265E5E5E)),
      ),
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
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    fileName,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    ),
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
