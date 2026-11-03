import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SocialLink extends StatelessComponent {
  const SocialLink({super.key, required this.iconCode, required this.url});
  final String iconCode, url;

  @override
  Component build(BuildContext context) {
    return a(
      classes: "social-link",
      attributes: {
        'target': '_blank',
        'rel': 'noopener noreferrer',
      },
      href: url,
      [i(classes: "$iconCode fa-2x", [])],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css(".social-link").styles(
      display: .flex,
      width: 61.px,
      height: 56.px,
      padding: .symmetric(horizontal: 12.px, vertical: 10.px),
      shadow: BoxShadow(offsetX: 0.px, offsetY: 4.px, blur: 4.px, color: .rgba(0, 0, 0, .25)),
      transition: Transition("all", duration: Duration(milliseconds: 300)),
      justifyContent: .center,
      alignItems: .center,
      color: Colors.black,
      backgroundColor: Color("#C4C4C4"),
    ),
    css(".social-link:hover").styles(
      shadow: BoxShadow(offsetX: 0.px, offsetY: 4.px, blur: 4.px, color: .rgba(0, 0, 0, .1)),
      transform: .translate(y: 3.px),
    ),
  ];
}
