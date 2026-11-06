import 'dart:js_interop';

import 'package:web/web.dart' as web;

/// Used in the browser after Jaspr hydrates the drawer.
void Function() listenForOutsideMenuClicks(void Function() onOutsideClick) {
  final clickListener = ((web.Event event) {
    final clickedElement = event.target as web.Element?;
    final clickedInside = clickedElement?.closest('.menu-icon') != null;

    if (!clickedInside) {
      onOutsideClick();
    }
  }).toJS;

  web.window.addEventListener('click', clickListener);

  return () {
    web.window.removeEventListener('click', clickListener);
  };
}
