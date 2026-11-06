import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../app.dart';
import '../components/drawer.dart';
import '../components/icon_button.dart';

class LandingView extends StatelessComponent {
  const LandingView({super.key});

  @override
  Component build(BuildContext context) {
    return div(id: "top", classes: "landing", [
      div(classes: "container", [
        header([
          div(classes: "image", [
            a(href: "#top", [
              img(classes: "dark", src: "images/logo.svg", alt: "Logo"),
              img(classes: "light", src: "images/logo_light.svg", alt: "Logo"),
            ]),
          ]),
          nav(classes: "large-screen", [
            ul([
              li([
                a(classes: "link", href: "#about", [.text("About me")]),
              ]),
              li([
                a(classes: "link", href: "#skills", [.text("Skills")]),
              ]),
              li([
                a(classes: "link", href: "#portfolio", [.text("Portfolio")]),
              ]),
              li([
                a(classes: "btn-shape", href: "#contact", [.text("CONTACT ME")]),
              ]),
            ]),
          ]),
          Drawer(),
        ]),
        div(classes: "landing-content", [
          div(classes: "text-content", [
            div(classes: "intro-text", [.text("Hi, I am")]),
            div(classes: "name-text", [
              .text("Mohammed Deeb Jalab"),
            ]),
            div(classes: "specify-text", [
              .text("Flutter & Front-end Developer"),
            ]),

            div(classes: "social-links", [
              SocialLink(url: "mailto:jalabmouhamed@gmail.com", iconCode: "fa-solid fa-at"),
              SocialLink(url: "https://github.com/Mohamed-Jalab", iconCode: "fa-brands fa-github"),
              SocialLink(
                url: "https://www.linkedin.com/in/mouhammed-deeb-jalab/",
                iconCode: "fa-brands fa-square-linkedin",
              ),
            ]),
          ]),
          div(classes: "image-content", [img(src: "images/mohammed.png")]),
          div(classes: "text-med-content", [
            div(classes: "info-text-content", [
              h4([.text("Hi, I am")]),
              h2([.text("Mohammed Deeb Jalab")]),
              p([.text("Flutter & Front-end Developer")]),
            ]),
            div(classes: "social-links-text-content", [
              a(
                classes: "social-link-text-content email",
                attributes: {
                  'target': '_blank',
                  'rel': 'noopener noreferrer',
                },
                href: "mailto:jalabmouhamed@gmail.com",
                [i(classes: "fa-solid fa-at fa-2x", [])],
              ),
              a(
                classes: "social-link-text-content github",
                attributes: {
                  'target': '_blank',
                  'rel': 'noopener noreferrer',
                },
                href: "https://github.com/Mohamed-Jalab",
                [i(classes: "fa-brands fa-github fa-2x", [])],
              ),
              a(
                classes: "social-link-text-content linked-in",
                attributes: {
                  'target': '_blank',
                  'rel': 'noopener noreferrer',
                },
                href: "https://www.linkedin.com/in/mouhammed-deeb-jalab",
                [i(classes: "fa-brands fa-square-linkedin fa-2x", [])],
              ),
            ]),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    ...App.fontsStyle,
    css(".container").styles(
      padding: .symmetric(horizontal: 15.px),
      margin: .symmetric(horizontal: 10.percent),
    ),
    css.media(.screen(maxWidth: 768.px), [
      css(".container").styles(
        padding: .symmetric(horizontal: 15.px),
        margin: .symmetric(horizontal: 15.px),
      ),
    ]),

    css(".landing").styles(
      position: .relative(),
      height: 100.vh,
      padding: .only(top: 65.px),
      overflow: .hidden,
      backgroundColor: Color("#D7D7D7"),
    ),
    css(".landing::before").styles(
      content: "",
      position: .absolute(left: 44.percent, top: (-50).px),
      width: 93.percent,
      height: 150.percent,
      transform: Transform.rotate((9.67).deg),
      backgroundColor: Colors.black,
    ),
    css.media(.screen(maxWidth: 1199.px), [
      css(".landing::before").styles(
        position: .absolute(left: 50.percent, top: (-50).px),
      ),
    ]),
    css.media(.screen(maxWidth: 991.px), [
      css(
        ".landing::before",
      ).styles(
        position: .absolute(left: 0.px, top: 0.px),
        width: 100.percent,
        transform: .rotate(0.deg),
      ),
    ]),

    css(".landing .container header").styles(display: .flex, justifyContent: .spaceBetween),
    css("header .image").styles(position: .relative(), height: 50.px),
    css("header .image .dark").styles(display: .block, height: 100.percent),
    css.media(.screen(maxWidth: 991.px), [css("header .image .dark").styles(display: .none)]),
    css("header .image .light").styles(display: .none),
    css.media(.screen(maxWidth: 991.px), [css("header .image .light").styles(display: .block, height: 100.percent)]),

    css("header ul").styles(
      display: .flex,
      gap: Gap(column: 8.px),
    ),
    css.media(.screen(maxWidth: 1199.px), [css("header .large-screen").styles(display: .none)]),

    css("header ul a").styles(
      display: .flex,
      position: .relative(),
      width: 147.px,
      height: 46.px,
      justifyContent: .center,
      alignItems: .center,
      color: Colors.white,
      fontSize: 17.px,
      fontWeight: .bold,
    ),
    css("header ul a.link::before").styles(
      content: "",
      position: .absolute(bottom: 0.px, left: 0.px),
      width: 0.px,
      height: 3.px,
      transition: Transition("width", duration: Duration(milliseconds: 300)),
      backgroundColor: Colors.white,
    ),
    css("header ul a.link:hover::before").styles(width: 100.percent),

    css(".btn-shape").styles(
      radius: .all(.circular(23.px)),
      transition: Transition("all", duration: Duration(milliseconds: 300)),
      color: Colors.black,
      backgroundColor: Colors.white,
    ),
    css(".btn-shape:hover").styles(
      color: Colors.white,
      backgroundColor: Colors.gray,
    ),

    css(".landing-content").styles(
      display: .flex,
      height: Unit.expression("calc(100vh - 115px)"),
      maxWidth: 100.vw,
      padding: .only(top: 30.px),
      // alignItems: .end,
    ),
    css(".landing-content > div").styles(flex: .grow(1)),
    css(".image-content").styles(width: 850.px),
    css.media(.screen(maxWidth: 991.px), [
      css(".image-content").styles(textAlign: .center),
    ]),
    css(
      ".image-content img",
    ).styles(position: .relative(), height: Unit.expression("calc(100vh - 130px)"), raw: {'object-fit': 'cover'}),

    css(".text-content", [
      css("&").styles(
        margin: .symmetric(vertical: .auto),
        color: Colors.black,
        fontFamily: FontFamily("Raleway"),
      ),
      css(".intro-text").styles(
        padding: .only(bottom: 30.px),
        fontSize: 32.px,
        fontWeight: .bold,
      ),
      css(".name-text").styles(
        padding: .only(right: 50.px, bottom: 10.px),
        fontSize: 60.px,
        fontWeight: .bold,
      ),
      css(".specify-text").styles(
        padding: .only(bottom: 120.px),
        color: Color("#909090"),
        fontSize: 22.px,
        fontWeight: .w800,
      ),
    ]),
    css.media(.screen(maxWidth: 991.px), [
      css(".text-content").styles(display: .none),
    ]),
    css(".landing-content .social-links").styles(
      display: .flex,
      gap: Gap(column: 32.px),
    ),
    css(".text-med-content").styles(display: .none),
    css(".text-med-content::before").styles(display: .none),
    css.media(.screen(maxWidth: 991.px), [
      css(".text-med-content").styles(
        display: .flex,
        position: .absolute(bottom: 0.px, left: 0.px),
        zIndex: ZIndex(1),
        width: 100.percent,
        padding: .symmetric(horizontal: 40.px, vertical: 45.px),
        justifyContent: .spaceBetween,
        alignItems: .end,
      ),
      css(
        ".text-med-content::before",
      ).styles(
        content: "",
        display: .block,
        position: .absolute(bottom: (-50).percent, left: (-25).percent),
        zIndex: ZIndex(0),
        width: 150.percent,
        height: 150.percent,
        transform: .rotate((-8).deg),
        backgroundColor: Colors.black.withOpacity(.55),
      ),
    ]),
    css(".info-text-content").styles(position: .relative()),
    css(".social-links-text-content").styles(position: .relative()),
    css(
      ".info-text-content h4",
    ).styles(
      color: Colors.white,
      fontFamily: FontFamily("Raleway"),
      fontSize: 20.px,
      fontWeight: .bold,
    ),
    css(
      ".info-text-content h2",
    ).styles(
      padding: .only(bottom: 4.px),
      color: Colors.white,
      fontFamily: FontFamily("Raleway"),
      fontSize: 35.px,
      fontWeight: .bold,
    ),
    css(
      ".info-text-content p",
    ).styles(
      padding: .only(bottom: 4.px),
      color: Colors.white,
      fontFamily: FontFamily("Raleway"),
      fontSize: 12.px,
      fontWeight: .w800,
    ),
    css(".social-links-text-content").styles(
      display: .flex,
      flexDirection: .column,
      gap: Gap(row: 30.px),
    ),
    css(".social-links-text-content a").styles(
      transition: Transition("color", duration: const Duration(milliseconds: 300)),
      color: Colors.white,
    ),
    css(".social-links-text-content .email:hover").styles(color: Color("#EA4335")),
    css(".social-links-text-content .github:hover").styles(color: Color("#24292E")),
    css(".social-links-text-content .linked-in:hover").styles(color: Color("#0A66C2")),
  ];
}
