import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/header.dart';
import '../components/text_button.dart';

class ContactView extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(id: "contact", classes: "contact", [
      div(classes: "container", [
        Header(title: "Contact"),
        p([
          .text(
            "I’m available for freelance work, collaborations, and full-time opportunities. Let’s discuss your project, share ideas, and build something impactful together.",
          ),
        ]),
        img(classes: "divider", src: "images/divider.png"),

        form([
          input(
            type: .text,
            attributes: {"placeholder": "ENTER YOUR NAME*"},
            classes: "txt-field",
          ),
          input(
            type: .email,
            attributes: {"placeholder": "ENTER YOUR EMAIL*"},
            classes: "txt-field",
          ),
          input(
            type: .tel,
            attributes: {"placeholder": "PHONE NUMBER"},
            classes: "txt-field",
          ),
          textarea(
            required: true,
            attributes: {
              "placeholder": "YOUR MESSAGE*",
            },
            styles: Styles(
              height: 180.px,
              raw: {
                "resize": "none",
              },
            ),
            classes: "txt-field",
            [],
          ),
          TextButton(text: "Submit", url: "", color: Colors.black, hoverColor: Colors.white),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".contact").styles(
      padding: .only(top: 145.px, bottom: 70.px),
      textAlign: .center,
      backgroundColor: Colors.white,
      raw: {"background-image": "radial-gradient(rgba(26, 21, 21, 0) 0%, rgba(1, 1, 1, 0.16) 100%)"},
    ),
    css(".contact .container .header").styles(
      margin: .only(bottom: 60.px, left: .auto, right: .auto),
    ),
    css(".contact .container p").styles(
      margin: .only(bottom: 32.px),
      textAlign: .center,
    ),

    css(".contact form").styles(
      display: .flex,
      padding: .only(top: 115.px, right: 200.px, left: 200.px),
      flexDirection: .column,
      alignItems: .center,
      gap: Gap.row(50.px),
    ),
    css(".contact form .txt-field").styles(
      width: 100.percent,
      padding: .all(15.px),
      boxSizing: .borderBox,
      border: .only(
        left: .solid(width: 5.px, color: Colors.black),
        bottom: .solid(width: 5.px, color: Colors.black),
        top: .none(),
        right: .none(),
      ),
      outline: Outline(width: OutlineWidth(0.px)),
      color: Colors.black,
      backgroundColor: Colors.transparent,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 14.px,
      fontWeight: .bold,
      letterSpacing: .04.em,
    ),
    css("form .txt-field::placeholder").styles(
      color: Color("#8B8B8B"),
      fontFamily: FontFamily("Montserrat"),
      fontSize: 14.px,
      fontWeight: .bold,
      letterSpacing: .04.em,
    ),
    css("form .txt-field:focus::placeholder").styles(color: Colors.transparent),
    css(".contact form .txt-field:focus").styles(
      outline: Outline(width: OutlineWidth(0.px), color: Colors.transparent),
    ),

    css(".contact form .text-btn").styles(width: 200.px, height: 45.px),
  ];
}
