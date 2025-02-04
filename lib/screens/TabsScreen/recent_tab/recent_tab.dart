import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
