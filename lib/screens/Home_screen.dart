import 'package:iva/screens/TabsScreen/tabsScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _buildBackgroundImage(screenHeight, screenWidth),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: _buildTopBar(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildBottomBar(),
            ),
            if (isActive)
              Positioned(
                right: 10,
                bottom: 20,
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
      padding: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildImageCard("Victoria Reo"),
          const SizedBox(width: 10),
          _buildImageCard("Victoria Reo"),
        ],
      ),
    );
  }

  Widget _buildImageCard(String name) {
    return Container(
      height: 95,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/avatar.jpg"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildActionColumn(Icons.mic_rounded, 'Mute'),
          const SizedBox(width: 10),
          const Icon(Icons.keyboard_arrow_up, color: Color(0x7FD0D0D0)),
          const SizedBox(width: 20),
          _buildActionColumn(Icons.video_call_rounded, 'Stop Video'),
          const SizedBox(width: 10),
          const Icon(Icons.keyboard_arrow_up, color: Color(0x7FD0D0D0)),
          const SizedBox(width: 20),
          const Spacer(),
          _buildActionColumn(Icons.security, 'Security'),
          const SizedBox(width: 15),
          _buildActionColumn(Icons.group, 'Participants'),
          const SizedBox(width: 15),
          _buildActionColumn(Icons.chat_bubble_rounded, 'Chat'),
          const SizedBox(width: 15),
          _buildActionColumn(Icons.screen_share_outlined, 'Screen Share'),
          const SizedBox(width: 5),
          const Icon(Icons.keyboard_arrow_up, color: Color(0x7FD0D0D0)),
          const SizedBox(width: 15),
          _buildActionColumn(Icons.radio_button_checked_outlined, 'Record'),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              setState(() {
                isActive = !isActive;
              });
            },
            child: _buildActionColumn(Icons.join_inner, 'Apps'),
          ),
          const SizedBox(width: 15),
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
          style: const TextStyle(
            fontSize: 14,
            color: Color(0x7FD0D0D0),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
