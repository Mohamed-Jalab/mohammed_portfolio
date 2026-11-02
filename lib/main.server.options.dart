// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:mohammed_portfolio/components/header.dart' as _header;
import 'package:mohammed_portfolio/components/icon_button.dart' as _icon_button;
import 'package:mohammed_portfolio/components/service_card.dart'
    as _service_card;
import 'package:mohammed_portfolio/components/text_button.dart' as _text_button;
import 'package:mohammed_portfolio/views/about_me_and_skills_view.dart'
    as _about_me_and_skills_view;
import 'package:mohammed_portfolio/views/info_view.dart' as _info_view;
import 'package:mohammed_portfolio/views/landing_view.dart' as _landing_view;
import 'package:mohammed_portfolio/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  styles: () => [
    ..._app.App.styles,
    ..._header.Header.styles,
    ..._icon_button.SocialLink.styles,
    ..._service_card.ServiceCard.styles,
    ..._text_button.TextButton.styles,
    ..._about_me_and_skills_view.AboutMeAndSkillsView.styles,
    ..._about_me_and_skills_view.SkillItem.styles,
    ..._info_view.InfoView.styles,
    ..._landing_view.LandingView.styles,
  ],
);
