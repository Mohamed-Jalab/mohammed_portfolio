import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TextButton extends StatelessComponent {
  const TextButton({
    super.key,
    required this.text,
    required this.url,
    required this.hoverColor,
    required this.color,
  });
  final String text, url;
  final Color hoverColor, color;

  @override
  Component build(BuildContext context) {
    return a(
      classes: "text-btn",
      attributes: {
        'target': '_blank',
        'rel': 'noopener noreferrer',
      },
      styles: Styles(
        raw: {
          '--btn-fg': color.value,
          '--btn-bg': hoverColor.value,
        },
      ),
      href: url,
      [.text(text)],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css(".text-btn").styles(
      display: .flex,
      position: .relative(),
      zIndex: ZIndex(1),
      width: 140.px,
      height: 32.px,
      transition: Transition("all", duration: Duration(milliseconds: 400)),
      justifyContent: .center,
      alignItems: .center,
      color: Color.variable("--btn-fg"),
      fontFamily: FontFamily("Montserrat"),
      fontSize: 15.px,
      fontWeight: .w800,
    ),
    css(".text-btn:hover").styles(
      color: Color.variable("--btn-bg"),
    ),

    css(
      ".text-btn::before, .text-btn::after",
    ).styles(
      content: "",
      // Keep the animated fill behind the text, but inside the button's
      // stacking context so it remains above the parent background.
      zIndex: ZIndex(-1),
      width: 2.px,
      height: 100.percent,
      transition: Transition("all", duration: Duration(milliseconds: 200)),
      backgroundColor: Color.variable("--btn-fg"),
    ),

    css(".text-btn::before").styles(
      position: .absolute(left: 0.px, top: 0.px),
    ),
    css(".text-btn::after").styles(
      position: .absolute(right: 0.px, top: 0.px),
    ),
    css(".text-btn:hover::before, .text-btn:hover::after").styles(
      width: 50.percent,
    ),
  ];
}
