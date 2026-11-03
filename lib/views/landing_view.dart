import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../app.dart';
import '../components/icon_button.dart';

class LandingView extends StatelessComponent {
  const LandingView({super.key});

  @override
  Component build(BuildContext context) {
    return div(id: "top", classes: "landing", [
      div(classes: "container", [
        header([
          div(classes: "image", [
            a(href: "#top", [img(src: "images/logo.svg", alt: "Logo")]),
          ]),
          nav([
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
              SocialLink(url: "https://www.linkedin.com/in/mouhammed-deeb-jalab/", iconCode: "fa-brands fa-square-linkedin"),
            ]),
          ]),
          div(classes: "image-content", [img(src: "images/mohammed.png")]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    ...App.fontsStyle,
    css(".container").styles(
      padding: .symmetric(horizontal: 15.px),
      margin: .only(left: .auto, right: .auto),
    ),
    css.media(.screen(minWidth: 768.px), [css(".container").styles(width: 750.px)]),
    css.media(.screen(minWidth: 992.px), [css(".container").styles(width: 970.px)]),
    css.media(.screen(minWidth: 1200.px), [css(".container").styles(width: 1170.px)]),

    // leading
    css(".landing").styles(
      position: .relative(),
      height: 100.vh,
      padding: .only(top: 65.px),
      overflow: .hidden,
      backgroundColor: Color("#D7D7D7"),
    ),
    css(".landing::before").styles(
      content: "",
      position: .absolute(right: (-200).px, top: (-80).px),
      width: 70.percent,
      height: 150.percent,
      transform: Transform.rotate((9.67).deg),
      backgroundColor: Colors.black,
    ),
    // header
    css(".landing .container header").styles(display: .flex, justifyContent: .spaceBetween),
    css("header .image").styles(height: 50.px),
    css("header .image img").styles(height: 100.percent),
    css("header ul").styles(
      display: .flex,
      gap: Gap(column: 8.px),
    ),
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
      padding: .only(top: 30.px),
      // alignItems: .center,
    ),
    css(".landing-content > div").styles(flex: .grow(1)),
    css(".image-content").styles(width: 850.px),
    css(".image-content img").styles(maxWidth: 100.percent, position: .relative(), raw: {'object-fit': 'cover'}),

    css(".text-content").styles(
      // padding: .only(top: 180.px),
      margin: .symmetric(vertical: .auto),
      // color: Colors.black,
      // fontFamily: FontFamily("Raleway"),
      // fontSize: 40.px,
      // fontWeight: .bold,
    ),
    css(".text-content", [
      css("&").styles(
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

    css(".landing-content .social-links").styles(
      display: .flex,
      gap: Gap(column: 32.px),
    ),
  ];
}
