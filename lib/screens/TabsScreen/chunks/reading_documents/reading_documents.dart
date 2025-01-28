import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class ReadingDocuments extends StatefulWidget {
  const ReadingDocuments({
    super.key,
  });

  @override
  State<ReadingDocuments> createState() => _ReadingDocumentsState();
}

class _ReadingDocumentsState extends State<ReadingDocuments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w, // Corrected MediaQuery usage
      height: 660.h,
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
                  'Business Plan 2024 Revised.pdf',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9599999785423279),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/share-01.svg"),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset("assets/link-01.svg"),
                ),
                SizedBox(width: 10.w),
                SvgPicture.asset("assets/search-md.svg"),
                SizedBox(width: 10.w),
                const Icon(Icons.close, color: Colors.white),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
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
                SizedBox(width: 6.w),
                Text(
                  "Jan, 5, 2025",
                  style: TextStyle(
                    color: Color(0xFF545454),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: Color(0x59303030),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 51.w,
                    height: 24.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: ShapeDecoration(
                      color: Color(0x7FD0D0D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '100%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9599999785423279),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  SizedBox(
                      height: 12.h,
                      child: VerticalDivider(
                        thickness: 1,
                        width: 1.w,
                        color: Color(0xff5E5E5E),
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                    size: 20.r,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 25.w,
                    height: 25.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x7FD0D0D0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9599999785423279),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'of 16',
                    style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.keyboard_arrow_up_rounded,
                    color: Colors.white,
                    size: 20.r,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xf60888789),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Title Here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9599999785423279),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'In the quiet hours of the morning, the city feels like a different world. The streets are empty, save for the occasional hum of a distant car or the soft rustle of leaves caught in a stray breeze. The air carries a crispness that speaks of new beginnings, and the faint glow of streetlights casts elongated shadows, painting the pavement with a subtle, almost ethereal light. For those who find themselves awake at this hour, there is a sense of ownership over the city, as though it belongs only to them for this fleeting moment. It is a time for reflection, for dreaming, for planning—a rare pause before the chaos of the day begins.\n\nAs the sun begins its slow ascent, the city stirs to life. First come the early risers—joggers, dog walkers, and bakers, their movements purposeful and unhurried. Then, with increasing momentum, the rush of commuters, the chatter of children on their way to school, and the rhythmic clatter of shop shutters being raised. The once-serene streets transform into a symphony of activity, each note contributing to the vibrant rhythm of urban life. By the time the morning is in full swing, the earlier tranquility feels like a distant memory, yet it lingers in the hearts of those who experienced it, a quiet reminder of the city\'s duality.\n\nAs the sun begins its slow ascent, the city stirs to life. First come the early risers—joggers, dog walkers, and bakers, their movements purposeful and unhurried. Then, with increasing momentum, the rush of commuters, the chatter of children on their way to school, and the rhythmic clatter of shop shutters being raised.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9599999785423279),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.h)
          ],
        ),
      ),
    );
  }
}
