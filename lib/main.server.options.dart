// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:mohammed_portfolio/components/drawer.dart' as _drawer;
import 'package:mohammed_portfolio/components/header.dart' as _header;
import 'package:mohammed_portfolio/components/icon_button.dart' as _icon_button;
import 'package:mohammed_portfolio/components/service_card.dart'
    as _service_card;
import 'package:mohammed_portfolio/components/text_button.dart' as _text_button;
import 'package:mohammed_portfolio/views/about_me_and_skills_view.dart'
    as _about_me_and_skills_view;
import 'package:mohammed_portfolio/views/contact_view.dart' as _contact_view;
import 'package:mohammed_portfolio/views/footer_view.dart' as _footer_view;
import 'package:mohammed_portfolio/views/info_view.dart' as _info_view;
import 'package:mohammed_portfolio/views/landing_view.dart' as _landing_view;
import 'package:mohammed_portfolio/views/portfolio_view.dart'
    as _portfolio_view;
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
  clients: {_drawer.Drawer: ClientTarget<_drawer.Drawer>('drawer')},
  styles: () => [
    ..._app.App.styles,
    ..._drawer.DrawerState.styles,
    ..._header.Header.styles,
    ..._icon_button.SocialLink.styles,
    ..._service_card.ServiceCard.styles,
    ..._text_button.TextButton.styles,
    ..._about_me_and_skills_view.AboutMeAndSkillsView.styles,
    ..._about_me_and_skills_view.SkillItem.styles,
    ..._contact_view.ContactView.styles,
    ..._footer_view.FooterView.styles,
    ..._info_view.InfoView.styles,
    ..._landing_view.LandingView.styles,
    ..._portfolio_view.PortfolioView.styles,
    ..._portfolio_view.ProjectCard.styles,
  ],
);
