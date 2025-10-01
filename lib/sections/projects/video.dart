import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ProjectWidget extends StatefulWidget {
  final String video1;
  final String video2;


  const ProjectWidget({
    super.key,
    required this.video1,
    required this.video2,
  });

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  late VideoPlayerController _c1;
  late VideoPlayerController _c2;

  @override
  void initState() {
    super.initState();
    _c1 = VideoPlayerController.asset(widget.video1)
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {});
        _c1.play();
      });
    _c2 = VideoPlayerController.asset(widget.video2)
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {});
        _c2.play();
      });
  }

  @override
  void dispose() {
    _c1.dispose();
    _c2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _c1.value.isInitialized
              ? AspectRatio(
            aspectRatio: _c1.value.aspectRatio,
            child: VideoPlayer(_c1),
          )
              : const SizedBox(height: 500, child: Center(child: CircularProgressIndicator())),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _c2.value.isInitialized
              ? AspectRatio(
            aspectRatio: _c2.value.aspectRatio,
            child: VideoPlayer(_c2),
          )
              : const SizedBox(height: 500, child: Center(child: CircularProgressIndicator())),
        ),
      ],
    );
  }
}
