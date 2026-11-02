import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'views/about_me_and_skills_view.dart';
import 'views/info_view.dart';
import 'views/landing_view.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return .fragment([LandingView(), InfoView(), AboutMeAndSkillsView()]);
  }

  @css
  static List<StyleRule> get styles => [];
  static List<StyleRule> fontsStyle = [
    css.fontFace(family: "Montserrat", url: "fonts/Montserrat-Regular.ttf"),
    css.fontFace(family: "Montserrat", url: "fonts/Montserrat-Medium.ttf"),
    css.fontFace(family: "Montserrat", url: "fonts/Montserrat-SemiBold.ttf"),
    css.fontFace(family: "Montserrat", url: "fonts/Montserrat-Bold.ttf"),

    css.fontFace(family: "Raleway", url: "fonts/Raleway-Regular.ttf"),
    css.fontFace(family: "Raleway", url: "fonts/Raleway-Medium.ttf"),
    css.fontFace(family: "Raleway", url: "fonts/Raleway-SemiBold.ttf"),
    css.fontFace(family: "Raleway", url: "fonts/Raleway-Bold.ttf"),
    css.fontFace(family: "Raleway", url: "fonts/Raleway-ExtraBold.ttf"),
    
    css.fontFace(family: "Open Sans", url: "fonts/OpenSans-Light.ttf"),
    css.fontFace(family: "Open Sans", url: "fonts/OpenSans-Regular.ttf"),
    css.fontFace(family: "Open Sans", url: "fonts/OpenSans-Medium.ttf"),
    css.fontFace(family: "Open Sans", url: "fonts/OpenSans-SemiBold.ttf"),
    css.fontFace(family: "Open Sans", url: "fonts/OpenSans-Bold.ttf"),
  ];
}
