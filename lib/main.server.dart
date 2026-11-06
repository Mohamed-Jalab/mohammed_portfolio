/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(
    Document(
      title: 'Mohammed Deeb Jalab',
      styles: [
        css('body').styles(fontFamily: FontFamily("Montserrat")),
        css('*').styles(padding: .zero, margin: .zero, boxSizing: .borderBox, raw: {"scroll-behavior": "smooth"}),
        css('ul').styles(listStyle: .none),
        css('a').styles(textDecoration: .none),
      ],
      head: [
        link(rel: "icon", href: "images/logo.svg", type: "image/svg+xml"),
        link(href: "styles/all.min.css", rel: "stylesheet")],
      body: App(),
    ),
  );
}
