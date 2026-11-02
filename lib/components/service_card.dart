
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ServiceCard extends StatelessComponent {
  final String title, description, imageUrl;

  ServiceCard({required this.title, required this.description, required this.imageUrl});
  @override
  Component build(BuildContext context) {
    return div(classes: "service-card", [
      img(classes: "icon", src: imageUrl, alt: title),
      h3([.text(title)]),
      p([.text(description)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".service-card").styles(
      position: .relative(),
      width: 450.px,
      maxWidth: 100.percent,
    ),
    css(
      ".service-card .icon",
    ).styles(
      position: .absolute(left: 0.px, top: (-25).percent),
      height: 64.px,
      opacity: .075,
      transform: .translate(
        x: (-60).percent,
      ),
    ),
    css(
      ".service-card h3",
    ).styles(
      padding: .only(bottom: 24.px),
      color: Colors.black,
      textAlign: .start,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 22.px,
      fontWeight: .bold,
      textTransform: .capitalize,
      letterSpacing: .1854.em,
    ),
    css(
      ".service-card p",
    ).styles(
      color: Colors.black,
      textAlign: .start,
      fontFamily: FontFamily("Open Sans"),
      fontSize: 14.px,
      fontWeight: .w300,
    ),
    css(".skills").styles(
      padding: .only(top: 120.px),
      textAlign: .center,
    ),
  ];
}
