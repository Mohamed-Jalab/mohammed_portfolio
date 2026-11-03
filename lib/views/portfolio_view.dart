import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';
import 'package:mohammed_portfolio/components/text_button.dart';

import '../components/header.dart';

class PortfolioView extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(id: "portfolio", classes: "portfolio", [
      div(classes: "background-header", [
        Header(title: "portfolio"),
      ]),
      span(classes: "label bottom-border", [.text("Experience Projects")]),
      div(classes: "projects", [
        ProjectCard(
          title: "Prime",
          description: "Mobile learning platform for students at Aleppo University.",
          imageUrl: "images/projects/prime.png",
          links: [
            (label: "Google Play", url: "https://play.google.com/store/apps/details?id=com.brothers.prime"),
            (label: "App Store", url: "https://apps.apple.com/us/app/prime/id6758918919"),
          ],
        ),
        ProjectCard(
          title: "الندهة ع | Ala Al-Nadha",
          description:
              "Multi-service platform for food delivery, grocery shopping, and cleaning services across Aleppo.",
          imageUrl: "images/projects/al-nadha.png",
          links: [
            (label: "Google Play", url: "https://play.google.com/store/apps/details?id=com.alnadha.app"),
            (
              label: "App Store",
              url: "https://apps.apple.com/us/app/%D8%B9-%D8%A7%D9%84%D9%86%D8%AF%D9%87%D8%A9/id6763567929",
            ),
          ],
        ),
        ProjectCard(
          title: "Elegance",
          description:
              "Open-source Flutter e-commerce application with local caching, and Appwrite backend integration.",
          imageUrl: "images/projects/elegance.png",
          links: [
            (label: "GitHub", url: "https://github.com/Mohamed-Jalab/elegance_shop"),
          ],
        ),
        ProjectCard(
          title: "Drisavo",
          description: "Driving lesson booking platform for the Canadian market.",

          imageUrl: "images/projects/drisavo.png",
        ),

        ProjectCard(
          title: "Prime-Bac",
          description:
              "Educational platform for Baccalaureate students focused on exam preparation and study organization.",
          imageUrl: "images/projects/prime-bac.png",
        ),
      ]),
      span(classes: "label", [.text("And many more to come!")]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".portfolio").styles(backgroundColor: Color("#1A1A1A"), textAlign: .center),
    css(".portfolio .background-header").styles(
      padding: .symmetric(vertical: 110.px),
      backgroundImage: .url("images/mountains.png"),
      backgroundPosition: .center,
      backgroundRepeat: .noRepeat,
      backgroundSize: .cover,
    ),
    css(".portfolio .header").styles(margin: .symmetric(horizontal: .auto)),
    css(".portfolio .label").styles(
      display: .inlineBlock,
      margin: .symmetric(horizontal: .auto, vertical: 32.px),
      color: Color("#FFFBFB"),
      fontFamily: FontFamily("Montserrat"),
      fontSize: 20.px,
      fontWeight: .w600,
    ),
    css(".label.bottom-border").styles(
      padding: .only(bottom: 15.px, right: 20.px, left: 20.px),
      border: .only(
        bottom: .solid(width: 3.px, color: Colors.white),
      ),
    ),
    css(".portfolio .projects").styles(
      display: .grid,
      raw: {
        'grid-template-columns': 'repeat(auto-fit, minmax(500px, 1fr))',
      },
    ),
  ];
}

class ProjectCard extends StatelessComponent {
  final String title, description, imageUrl;
  final List<({String label, String url})> links;

  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    this.links = const [],
  });
  @override
  Component build(BuildContext context) {
    return div(classes: "project-card", [
      img(src: imageUrl),
      div(classes: "project-details", [
        h4([.text(title)]),
        p([.text(description)]),
        if (links.isNotEmpty)
          div(classes: "links", [
            for (final link in links)
              TextButton(text: link.label, url: link.url, hoverColor: Colors.black, color: Colors.white),
          ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".project-card").styles(position: .relative(), height: 400.px, overflow: .hidden),
    css(".project-card img").styles(
      display: .block,
      width: 100.percent,
      height: 100.percent,
      transition: Transition("all", duration: Duration(milliseconds: 300)),
      raw: {"object-fit": "cover"},
    ),
    css(
      ".project-card:hover img",
    ).styles(transform: Transform.combine([Transform.scale(1.05), Transform.rotate(1.5.deg)])),

    css(".project-card .project-details").styles(
      display: .flex,
      position: .absolute(top: 0.px, left: 0.px),
      width: 100.percent,
      height: 100.percent,
      padding: .all(30.px),
      opacity: 0,
      transition: Transition("all", duration: Duration(milliseconds: 300)),
      flexDirection: .column,
      justifyContent: .center,
      alignItems: .center,
      backgroundColor: Colors.black.withOpacity(0.8),
    ),
    css(".project-card:hover .project-details").styles(
      opacity: 1,
    ),
    css(".project-details h4").styles(
      margin: .only(bottom: 20.px),
      color: Colors.white,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 25.px,
      fontWeight: .bold,
    ),
    css(".project-details p").styles(
      color: Colors.white,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 12.px,
      fontWeight: .w500,
    ),
    css(".links").styles(
      display: .flex,
      margin: .only(top: 30.px),
      flexWrap: .wrap,
      gap: .all(20.px),
    ),
  ];
}
