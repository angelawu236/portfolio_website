import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MediarieVid extends StatefulWidget {
  const MediarieVid({
    super.key,
    required this.videoAsset,
    required this.imageAssets,
  });

  final String videoAsset;
  final List<String> imageAssets;

  @override
  State<MediarieVid> createState() => _MediarieVidState();
}

class _MediarieVidState extends State<MediarieVid> {
  late VideoPlayerController _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoAsset)
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() => _initialized = true);
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
    final width = MediaQuery.sizeOf(context).width;

    // Choose ONE container height; FittedBox(BoxFit.cover) will crop to fill.
    final double videoHeight = width * 9 / 16; // tweak if you want taller/shorter

    final imgs = widget.imageAssets.where((p) => p.isNotEmpty).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ---- CROPPED VIDEO (no black side bars) ----
        SizedBox(
          width: double.infinity,
          height: videoHeight,
          child: _initialized
              ? ClipRect(
            child: FittedBox(
              fit: BoxFit.cover, // fills & crops edges
              alignment: Alignment.center,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          )
              : const Center(child: CircularProgressIndicator()),
        ),

        const SizedBox(height: 12),

        // ---- IMAGES STRIP ----
        SizedBox(
          height: 120,
          child: imgs.isEmpty
              ? const Center(
            child: Text('No images',
                style: TextStyle(color: Colors.white70)),
          )
              : ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            itemCount: imgs.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, i) {
              final img = imgs[i];
              final thumbW = (width * 0.4).clamp(140.0, 220.0);
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        backgroundColor: Colors.black,
                        insetPadding: const EdgeInsets.all(8),
                        child: InteractiveViewer(
                          child: Image.asset(img, fit: BoxFit.contain),
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    img,
                    width: thumbW,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
