import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PhoneShowcase extends StatefulWidget {
  const PhoneShowcase({
    super.key,
    required this.videoAsset,
    required this.imageAssets,
  });

  final String videoAsset;
  final List<String> imageAssets;

  @override
  State<PhoneShowcase> createState() => _PhoneShowcaseState();
}

class _PhoneShowcaseState extends State<PhoneShowcase> {
  late final VideoPlayerController _controller;
  bool _ready = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoAsset)
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() => _ready = true);
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imgs = widget.imageAssets.where((p) => p.isNotEmpty).toList();

    const double phoneWidth = 240;
    final double phoneHeight = _ready
        ? phoneWidth / _controller.value.aspectRatio
        : 500;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: phoneWidth,
          height: phoneHeight,
          color: Colors.black,
          child: _ready
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : const Center(child: CircularProgressIndicator()),
        ),

        const SizedBox(width: 12),

        // ---- static screenshots side-by-side ----
        ...imgs.map(
              (img) => Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                img,
                width: phoneWidth,
                height: phoneHeight,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
