import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FooterView extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return footer(
      styles: Styles(
        padding: .symmetric(vertical: 70.px),
        textAlign: .center,
        backgroundColor: Color("#1A1A1A"),
      ),
      [
        i(
          classes: "fa-solid fa-angles-up",
          styles: Styles(
            display: .block,
            margin: .symmetric(horizontal: .auto),
            color: Colors.white,
          ),
          [],
        ),
        span(
          styles: Styles(
            display: .block,
            margin: .only(top: 10.px, bottom: 45.px),
            color: Colors.white,
            fontFamily: FontFamily("Montserrat"),
            fontSize: 15.px,
            fontWeight: .bold,
            letterSpacing: .1854.em,
          ),
          [.text("BACK TO TOP")],
        ),
        div(
          styles: Styles(
            display: .flex,
            padding: .only(bottom: 45.px),
            justifyContent: .center,
            gap: .all(28.px),
          ),
          classes: "contact-links",
          [
            a(
              classes: "email",
              attributes: {
                'target': '_blank',
                'rel': 'noopener noreferrer',
              },
              href: "mailto:jalabmouhamed@gmail.com",
              [i(classes: "fa-solid fa-envelope fa-2x", [])],
            ),
            a(
              classes: "github",
              attributes: {
                'target': '_blank',
                'rel': 'noopener noreferrer',
              },
              href: "https://github.com/Mohamed-Jalab",
              [i(classes: "fa-brands fa-github fa-2x", [])],
            ),
            a(
              classes: "linked-in",
              attributes: {
                'target': '_blank',
                'rel': 'noopener noreferrer',
              },
              href: "https://www.linkedin.com/in/mouhammed-deeb-jalab/",
              [i(classes: 'fa-brands fa-square-linkedin fa-2x', [])],
            ),
          ],
        ),
        span(
          styles: Styles(
            display: .block,
            color: Colors.white,
            fontFamily: FontFamily("Montserrat"),
            fontSize: 15.px,
            fontWeight: .bold,
          ),
          [.text("@2026 Mohammed Deeb Jalab, All Rights Reserved.")],
        ),
      ],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css("footer .contact-links a").styles(
      transition: Transition("color", duration: Duration(milliseconds: 300)),
      color: Colors.white,
    ),
    css("footer .contact-links .email:hover").styles(color: Color("#EA4335")),
    css("footer .contact-links .github:hover").styles(color: Color("#24292E")),
    css("footer .contact-links .linked-in:hover").styles(color: Color("#0A66C2")),
  ];
}
