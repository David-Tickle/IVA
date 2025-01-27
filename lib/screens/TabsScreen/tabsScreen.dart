import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class TabsScreen extends StatefulWidget {
  final VoidCallback onTapMinimize;
  const TabsScreen({super.key, required this.onTapMinimize});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;
  final TextEditingController _messageController = TextEditingController();
  bool _isWriting = false;

  @override
  void initState() {
    super.initState();
    _messageController.addListener(() {
      setState(() {
        _isWriting = _messageController.text.isNotEmpty;
      });
    });
  }

  Widget _buildMessageInputField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
      decoration: ShapeDecoration(
        color: Color(0x7FD0D0D0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200.r),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: "Type a message here",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.r),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
            ),
          ),
          SizedBox(width: 10.w),
          GestureDetector(
            onTap: () {
              if (_isWriting) {
                // _sendMessage(_messageController.text); // Implement this function as needed
              }
            },
            child: CircleAvatar(
              radius: 20.r,
              backgroundColor: Colors.blue,
              child: Icon(
                _isWriting ? Icons.send : Icons.mic,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w, // Corrected MediaQuery usage
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.50),
          borderRadius: BorderRadius.circular(15)),
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
              SvgPicture.asset("assets/search-md.svg"),
              const Spacer(),
              SvgPicture.asset("assets/folder.svg"),
              SizedBox(width: 10.w),
              SvgPicture.asset("assets/bell-02.svg"),
              SizedBox(width: 10.w),
              SvgPicture.asset("assets/settings-02.svg"),
              SizedBox(width: 10.w),
              const Icon(Icons.close, color: Colors.white),
            ],
          ),
          SizedBox(height: 10.h),
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
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: Color(0x7FD0D0D0),
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildNavItem(
                    index: 0,
                    assetPath: "assets/clock-rewind.svg",
                    label: "Recent"),
                SizedBox(width: 5.0),
                buildNavItem(
                    index: 1, assetPath: "assets/folder.svg", label: "Folder"),
                SizedBox(width: 5.0),
                buildNavItem(
                    index: 2,
                    assetPath: "assets/dotpoints-01.svg",
                    label: "Others"),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            margin: EdgeInsets.only(bottom: 15.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.08),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              border: Border.all(color: Color(0x265E5E5E)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildFileItem(
                  iconPath: "assets/pdf.png",
                  fileName: "Market share list.csv",
                  label: "Global",
                  date: "Jan 4, 2024",
                ),
                SizedBox(height: 10.0),
                Divider(
                  thickness: 1.0,
                  height: 1.0,
                  color: Color(0x265E5E5E),
                ),
                SizedBox(height: 10.0),
                buildFileItem(
                  iconPath: "assets/csv.png",
                  fileName: "Market share list.csv",
                  label: "Personal",
                  date: "Jan 4, 2024",
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          _buildMessageInputField(),
          // SizedBox(height: 150), // Uncomment if needed for spacing
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
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          decoration: ShapeDecoration(
            color: isSelected ? Color(0xf90c9d2d6) : null,
            shape: RoundedRectangleBorder(
              side: isSelected
                  ? BorderSide(width: 0.5, color: Colors.white)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(20.0),
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
              SvgPicture.asset(assetPath, height: 20.0, width: 20.0),
              SizedBox(width: 7.0),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.96),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
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
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            height: 30.0,
            width: 25.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fileName,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("assets/globe-04.svg"),
                          SizedBox(width: 5.0),
                          Text(
                            label,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.96),
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      date,
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SvgPicture.asset("assets/share-01.svg"),
          SizedBox(width: 10.0),
          SvgPicture.asset("assets/link-01.svg"),
        ],
      ),
    );
  }
}
