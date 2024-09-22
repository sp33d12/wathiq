// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'dart:async';
import 'package:wathiq/screens/login.dart';

void main() async {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DelayedWidget(),
  ));
}

class DelayedWidget extends StatefulWidget {
  const DelayedWidget({super.key});

  @override
  DelayedWidgetState createState() => DelayedWidgetState();
}

class DelayedWidgetState extends State<DelayedWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize the video controller without showing a loader
    _controller = VideoPlayerController.asset('assets/video/c3.mp4')
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });

    // Navigate after 5 seconds
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width * 10,
          height: MediaQuery.of(context).size.height * 15,
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
      ),
    );
  }
}
