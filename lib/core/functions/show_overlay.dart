import 'package:flutter/material.dart';

OverlayEntry? overlayEntry;

void showOverlay(
    {required context, required keyWidget, required Widget widget}) {
  final overlayState = Overlay.of(context);

  overlayEntry = OverlayEntry(
    builder: (context) {
      final containerContext = keyWidget.currentContext;
      if (containerContext != null) {
        final renderBox = containerContext.findRenderObject() as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero);
        final containerSize = renderBox.size;

        return Positioned(
          top: position.dy,
          left: position.dx,
          width: containerSize.width,
          height: containerSize.height,
          child: Stack(children: [
            GestureDetector(
              onTap: () {
                overlayEntry?.remove();
              },
              child: Container(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            widget,
          ]),
        );
      } else {
        // Return an empty container if the context is null
        return Container();
      }
    },
  );

  overlayState.insert(overlayEntry!);
}
