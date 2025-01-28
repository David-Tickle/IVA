import 'package:iva/screens/TabsScreen/tabsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActive = false;
  final TextEditingController _messageController = TextEditingController();
  bool _isWriting = false;

  // Speech to Text Variables
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _speechText = '';
  String _currentLocaleId = 'en_US'; // Default locale

  @override
  void initState() {
    super.initState();
    _initializeSpeech(); // Initialize speech recognition
    _requestMicrophonePermission(); // Request microphone permission
    _messageController.addListener(() {
      setState(() {
        _isWriting = _messageController.text.isNotEmpty;
      });
    });
  }

  // Request microphone permission
  void _requestMicrophonePermission() async {
    var status = await Permission.microphone.status;
    if (!status.isGranted) {
      await Permission.microphone.request();
    }
  }

  // Initialize Speech to Text
  void _initializeSpeech() async {
    bool available = await _speech.initialize(
      onStatus: (status) => print('Speech status: $status'),
      onError: (error) {
        print('Speech error: $error');
        if (error.errorMsg == 'error_language_unavailable') {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content:
                    Text('Selected language is not available on this device.')),
          );
        }
      },
    );
    if (available) {
      var locales = await _speech.locales();
      print("Available locales: $locales");
      var systemLocale = await _speech.systemLocale();
      setState(() {
        _currentLocaleId = systemLocale?.localeId ?? 'en_US';
      });
      print("System locale: ${systemLocale?.localeId}");
    } else {
      print("The user has denied the use of speech recognition.");
    }
  }

  @override
  void dispose() {
    _speech.stop(); // Stop listening when disposing
    _messageController.dispose(); // Dispose controller
    super.dispose();
  }

  Widget _buildMessageInputField() {
    return Container(
      width: 328.w,
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: ShapeDecoration(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200.r),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 25.r,
            child: Image.asset("assets/Liquid Circle.png"),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Color(0xf605E5E5E),
                prefixIcon: GestureDetector(
                  onLongPressStart: (details) => _startListening(),
                  onLongPressEnd: (details) => _stopListening(),
                  onTap: () {
                    if (_isWriting) {
                      // _sendMessage(_messageController.text); // Implement this function as needed
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: CircleAvatar(
                      radius: 25.r,
                      backgroundColor: Color(0xff545454),
                      child: Icon(
                        _isWriting ? Icons.send : Icons.mic,
                        color: _isListening ? Colors.white : Colors.blue,
                        size: 20.w,
                      ),
                    ),
                  ),
                ),
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
        ],
      ),
    );
  }

  void _startListening() {
    if (!_isListening) {
      setState(() {
        _isListening = true;
        _speechText = ''; // Clear previous speech text
      });

      _speech.listen(
        onResult: (result) {
          setState(() {
            _speechText = result.recognizedWords; // Update recognized words
            _messageController.text =
                _speechText; // Show recognized text in text field
            _messageController.selection = TextSelection.fromPosition(
              TextPosition(offset: _messageController.text.length),
            ); // Move cursor to end
          });
        },
        listenFor: const Duration(seconds: 10), // Adjust as needed
        pauseFor: const Duration(seconds: 5), // Adjust as needed
        partialResults: true, // Show partial results
        onSoundLevelChange: (level) =>
            print("Sound level: $level"), // Optional: show sound level changes
        cancelOnError: true,
        onDevice: true,
        localeId: _currentLocaleId, // Use the current locale
      );
    }
  }

  void _stopListening() {
    setState(() {
      _isListening = false;
    });
    _speech.stop();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = 1024;
    final screenWidth = 1440;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildBackgroundImage(screenHeight.h, screenWidth.w),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: _buildTopBar(),
            ),
            Positioned(
                top: 135.h,
                left: 0,
                right: 0,
                child: Center(child: _buildMessageInputField())),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildBottomBar(),
            ),
            if (isActive)
              Positioned(
                right: 10.w,
                bottom: 20.h,
                child: TabsScreen(onTapMinimize: () {
                  setState(() {
                    isActive = false;
                  });
                }),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(double height, double width) {
    return Image(
      height: height,
      width: width,
      fit: BoxFit.cover,
      image: const AssetImage("assets/background.jpg"),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: EdgeInsets.only(bottom: 5.h),
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImageCard("Victoria Reo"),
          SizedBox(width: 10.w),
          _buildImageCard("Victoria Reo"),
        ],
      ),
    );
  }

  Widget _buildImageCard(String name) {
    return Container(
      height: 120.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/avatar.jpg"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 14.sp),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.h),
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildActionColumn(Icons.mic_rounded, 'Mute'),
          SizedBox(width: 10.w),
          const Icon(Icons.keyboard_arrow_up, color: Color(0x7FD0D0D0)),
          SizedBox(width: 20.w),
          _buildActionColumn(Icons.video_call_rounded, 'Stop Video'),
          SizedBox(width: 10.w),
          const Icon(Icons.keyboard_arrow_up, color: Color(0x7FD0D0D0)),
          SizedBox(width: 20.w),
          const Spacer(),
          _buildActionColumn(Icons.security, 'Security'),
          SizedBox(width: 15.w),
          _buildActionColumn(Icons.group, 'Participants'),
          SizedBox(width: 15.w),
          _buildActionColumn(Icons.chat_bubble_rounded, 'Chat'),
          SizedBox(width: 15.w),
          _buildActionColumn(Icons.screen_share_outlined, 'Screen Share'),
          SizedBox(width: 5.w),
          const Icon(Icons.keyboard_arrow_up, color: Color(0x7FD0D0D0)),
          SizedBox(width: 15.w),
          _buildActionColumn(Icons.radio_button_checked_outlined, 'Record'),
          SizedBox(width: 15.w),
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = !isActive;
              });
            },
            child: _buildActionColumn(Icons.join_inner, 'Apps'),
          ),
          SizedBox(width: 15.w),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildActionColumn(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: const Color(0x7FD0D0D0)),
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: Color(0x7FD0D0D0),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
