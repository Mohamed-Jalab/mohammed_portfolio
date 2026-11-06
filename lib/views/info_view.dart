import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../app.dart';
import '../components/text_button.dart';

class InfoView extends StatelessComponent {
  const InfoView();

  @override
  Component build(BuildContext context) {
    return div(classes: "info", [
      div(classes: "info-text", [
        // h2([.text("BUILDING APPS THAT MAKE AN IMPACT")]),
        // p([
        //   .text(
        //     "I’m Mohammed, a Flutter & Front-end developer specializing in scalable, "
        //     "cross-platform applications. I turn ideas into polished products "
        //     "using Flutter, Jaspr, Dart, Clean Architecture, and REST APIs, with "
        //     "real-world applications published on Google Play and the App Store.",
        //   ),
        // ]),
        h2([.text("BUILDING DIGITAL EXPERIENCES")]),
        p([
          .text(
            "I’m Mohammed, a Flutter and Front-End Developer building scalable "
            "applications for mobile and the web. I turn ideas into polished "
            "digital products using Flutter, Dart, Jaspr, HTML, CSS, Clean "
            "Architecture, and REST APIs, with real-world applications published "
            "on Google Play and the App Store.",
          ),
        ]),
      ]),
      TextButton(text: "READ MORE", url: "#about", color: Colors.white, hoverColor: Colors.black),
      img(src: "images/it.svg"),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    ...App.fontsStyle,
    css(".info").styles(
      position: .relative(),
      padding: Padding.symmetric(horizontal: 100.px, vertical: 50.px),
      overflow: .hidden,
      color: Colors.white,
      backgroundColor: Color("#1e1e1e"),
    ),

    css(".info .info-text").styles(flex: Flex.grow(1)),
    css(".info img").styles(
      position: .absolute(top: (-160).px, right: 90.px),
      zIndex: ZIndex(0),
      width: 390.px,
      transform: Transform.rotate(24.deg),
    ),

    css(".info-text h2").styles(
      position: .relative(),
      zIndex: ZIndex(1),
      fontFamily: FontFamily("Montserrat"),
      fontSize: 30.px,
      fontWeight: .bold,
    ),
    css(".info-text p").styles(
      position: .relative(),
      zIndex: ZIndex(1),
      padding: .only(right: 450.px),
      margin: .symmetric(vertical: 26.px),
      fontFamily: FontFamily("Open Sans"),
      fontSize: 15.px,
      fontWeight: .normal,
    ),
  ];
}
