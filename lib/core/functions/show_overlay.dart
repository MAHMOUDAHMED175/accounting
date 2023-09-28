import 'package:flutter/material.dart';

OverlayEntry? overlayEntry;

void showOverlay({
  required BuildContext overlayContext,
  required GlobalKey keyWidget,
  required widget,
}) {
  final overlayState = Overlay.of(overlayContext);

  overlayEntry = OverlayEntry(
    maintainState: true,
    builder: (context) {
      final containerContext = keyWidget.currentContext;
      if (containerContext != null) {
        final renderBox = containerContext.findRenderObject() as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero);
        final containerSize = renderBox.size;

        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                overlayEntry?.remove();
              },
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            Positioned(
              top: position.dy,
              left: position.dx,
              width: containerSize.width,
              height: containerSize.height,
              child: widget,
            ),
          ],
        );
      } else {
        // Return an empty container if the context is null
        return Container();
      }
    },
  );

  overlayState.insert(overlayEntry!);
}
