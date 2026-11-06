import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'views/about_me_and_skills_view.dart';
import 'views/contact_view.dart';
import 'views/footer_view.dart';
import 'views/info_view.dart';
import 'views/landing_view.dart';
import 'views/portfolio_view.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return .fragment([
      LandingView(),
      InfoView(),
      AboutMeAndSkillsView(),
      PortfolioView(),
      ContactView(),
      FooterView(),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css("html").styles(
      raw: {
        "scrollbar-width": "thin",
        "scrollbar-color": "#191919 #f3f3f3",
      },
    ),
    css("::-webkit-scrollbar").styles(
      width: 12.px,
      height: 12.px,
    ),
    css("::-webkit-scrollbar-track").styles(
      raw: {
        "background": "#f3f3f3",
        "border-radius": "999px",
      },
    ),
    css("::-webkit-scrollbar-thumb").styles(
      border: .all(style: .solid, width: 2.px, color: Color("#f3f3f3")),
      radius: .all(.circular(10.px)),
      backgroundColor: Color("#191919"),
    ),
    css("::-webkit-scrollbar-thumb:hover").styles(
      backgroundColor: Color("#2d2d2d"),
    ),
    css("::-webkit-scrollbar-corner").styles(
      raw: {
        "background": "#f3f3f3",
      },
    ),
  ];
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
