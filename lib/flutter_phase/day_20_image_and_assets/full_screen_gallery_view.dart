import 'package:flutter/material.dart';

class FullScreenGalleryViewAssets extends StatelessWidget {
  final String image;
  const FullScreenGalleryViewAssets({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Positioned(
            top: 2,
            left: 2,
            child: IconButton(
              constraints: const BoxConstraints(),

              alignment: Alignment.center,
              padding: EdgeInsets.all(8),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreenGalleryViewNetwork extends StatelessWidget {
  final String image;
  const FullScreenGalleryViewNetwork({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child; // Image finished loading
                }
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 2,
            left: 2,
            child: IconButton(
              constraints: const BoxConstraints(),

              alignment: Alignment.center,
              padding: EdgeInsets.all(8),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
