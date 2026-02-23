// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class SecureVideoArea extends StatefulWidget {
  const SecureVideoArea({
    super.key,
    this.width,
    this.height,
    this.videold,
  });

  final double? width;
  final double? height;
  final String? videold;

  @override
  State<SecureVideoArea> createState() => _SecureVideoAreaState();
}

class _SecureVideoAreaState extends State<SecureVideoArea> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videold ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        disableDragSeek: false,
        showLiveFullscreenButton: true,
        forceHD: true,
        captionLanguage: 'ar',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      color: Colors.black, // خلفية سوداء للفراغات البسيطة
      child: YoutubePlayerBuilder(
        onEnterFullScreen: () {
          // يخفي شريط القوائم ويقلب الشاشة بالعرض عند التكبير
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
              overlays: []);
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);
        },
        onExitFullScreen: () {
          // يرجع النظام لوضعه الطبيعي عند التصغير
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
              overlays: SystemUiOverlay.values);
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        },
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.redAccent,
          bottomActions: [
            const SizedBox(width: 14.0),
            CurrentPosition(),
            const SizedBox(width: 8.0),
            ProgressBar(isExpanded: true),
            RemainingDuration(),
            const PlaybackSpeedButton(),
            const FullScreenButton(),
          ],
        ),
        builder: (context, player) {
          return Center(
            child: Padding(
              // حافة سوداء "شوية كلش" 4 بكسل فقط
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                // انحناء ناعم جداً للحواف
                borderRadius: BorderRadius.circular(4),
                child: player,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
