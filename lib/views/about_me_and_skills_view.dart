import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/header.dart';
import '../components/service_card.dart';
import '../components/text_button.dart';

class AboutMeAndSkillsView extends StatelessComponent {
  const AboutMeAndSkillsView();

  @override
  Component build(BuildContext context) {
    return div(classes: "about-skills", [
      div(classes: "container", [
        div(id: "about", classes: "about-me", [
          Header(title: "About Me"),
          p([
            .text(
              "Nulla in velit a metus rhoncus tempus. Nulla congue nulla vel sem varius finibus. Sed ornare sit amet lorem sed viverra. In vel urna quis libero viverra facilisis ut ac est.",
            ),
          ]),
          TextButton(url: "#", text: "Explore", color: Colors.black, hoverColor: Colors.white),
        ]),
        img(classes: "divider", src: "images/divider.png"),
        div(classes: "services", [
          ServiceCard(
            title: "Development",
            description:
                "I design and build modern, responsive websites tailored to your needs. From planning to final delivery, I focus on clean code, smooth user experience, and results that match your vision.",
            imageUrl: "images/code.svg",
          ),
          ServiceCard(
            title: "Deployment",
            description:
                "I help launch and deploy your website or application smoothly and reliably, making sure everything is set up correctly for the live environment. From configuration to final release, I focus on performance, stability, and a hassle-free experience.",
            imageUrl: "images/deployment.svg",
          ),
          ServiceCard(
            title: "Maintenance",
            description:
                "I provide ongoing website maintenance and support to keep your digital presence running smoothly, secure, and up to date. From updates to troubleshooting, I ensure your site stays reliable, efficient, and ready for your audience.",
            imageUrl: "images/maintenance.svg",
          ),
        ]),
        img(classes: "divider", src: "images/divider.png"),
        div(id: "skills", classes: "skills", [
          Header(title: "Skills"),
          div(classes: "cards", [
            SkillItem(imageUrl: "images/icons/flutter.svg", label: "Flutter"),
            SkillItem(imageUrl: "images/icons/dart.svg", label: "Dart"),
            SkillItem(imageUrl: "images/icons/jaspr.svg", label: "Jaspr"),
            SkillItem(imageUrl: "images/icons/html.svg", label: "HTML"),
            SkillItem(imageUrl: "images/icons/css.svg", label: "CSS"),
            SkillItem(imageUrl: "images/icons/firebase.svg", label: "Firebase"),
            SkillItem(imageUrl: "images/icons/supabase.svg", label: "Supabase"),
            SkillItem(imageUrl: "images/icons/appwrite.svg", label: "Appwrite"),
            SkillItem(imageUrl: "images/icons/git.svg", label: "Git"),
            SkillItem(imageUrl: "images/icons/mysql.svg", label: "MySQL"),
            SkillItem(imageUrl: "images/icons/java.svg", label: "Java"),
            SkillItem(imageUrl: "images/icons/c++.svg", label: "C++"),
          ]),
        ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".about-skills").styles(
      padding: .only(bottom: 165.px),
      textAlign: .center,
      backgroundColor: Colors.white,
      raw: {"background-image": "radial-gradient(rgba(26, 21, 21, 0) 0%, rgba(1, 1, 1, 0.16) 100%)"},
    ),
    css(".about-skills .container").styles(
      // padding: .symmetric(horizontal: 150.px),
    ),
    css(".about-skills .about-me ").styles(
      display: .flex,
      padding: .only(
        top: 142.px,
      ),
      flexDirection: .column,
      alignItems: .center,
      textAlign: .center,
    ),
    css(".about-skills .about-me p").styles(
      padding: .only(top: 71.px, bottom: 67.px, right: 150.px, left: 150.px),
      textAlign: .center,
      fontFamily: FontFamily("Open Sans"),
      fontSize: 15.px,
      fontWeight: .w400,
    ),
    css(".about-skills .about-me .text-btn").styles(margin: .only(bottom: 85.px)),
    css(".about-skills .divider").styles(
      width: 170.px,
    ),
    css(".services").styles(
      display: .flex,
      padding: .only(bottom: 150.px, top: 108.px),
      flexWrap: .wrap,
      justifyContent: .center,
      alignItems: .center,
      gap: Gap(row: 65.px, column: 120.px),
    ),
    css(".skills .header").styles(
      margin: .only(left: .auto, right: .auto, bottom: 80.px),
    ),
    css(".skills .cards").styles(
      display: .grid,
      gap: Gap(row: 65.px, column: 15.px),
      raw: {
        'grid-template-columns': 'repeat(auto-fit, minmax(240px, 1fr))',
      },
    ),
  ];
}

class SkillItem extends StatelessComponent {
  final String imageUrl, label;

  SkillItem({super.key, required this.imageUrl, required this.label});
  @override
  Component build(BuildContext context) {
    return div(classes: "skill-card", [
      img(classes: "icon", src: imageUrl, alt: label),
      span(classes: "text", [.text(label)]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".skill-card").styles(textAlign: .center),
    css(".skill-card .icon").styles(
      height: 100.px,
    ),
    css(".skill-card .text").styles(
      display: .block,
      padding: .only(top: 30.px),
      color: Colors.black,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 24.px,
      fontWeight: .normal,
      letterSpacing: .1354.em,
    ),
  ];
}
