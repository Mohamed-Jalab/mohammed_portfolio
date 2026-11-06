import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'drawer_listener_server.dart' if (dart.library.js_interop) 'drawer_listener_client.dart';

@client
class Drawer extends StatefulComponent {
  @override
  State createState() => DrawerState();
}

class DrawerState extends State<Drawer> {
  bool showDrawerMenu = false;
  late final void Function() _removeWindowClickListener;

  void _handleOutsideClick() {
    if (showDrawerMenu) {
      showDrawerMenu = false;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _removeWindowClickListener = listenForOutsideMenuClicks(
      _handleOutsideClick,
    );
  }

  @override
  void dispose() {
    _removeWindowClickListener();
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    return div(classes: "med-screen drawer", [
      button(
        classes: "menu-icon",
        onClick: () {
          setState(() {
            showDrawerMenu = !showDrawerMenu;
          });
        },
        [
          if (showDrawerMenu) i(classes: 'fa-solid fa-xmark fa-2x', []) else i(classes: 'fa-solid fa-bars fa-2x', []),
        ],
      ),
      if (showDrawerMenu)
        nav([
          ul(classes: "drawer-list", [
            li([
              a(classes: "", href: "#about", [.text("About me")]),
            ]),
            li([
              a(classes: "", href: "#skills", [.text("Skills")]),
            ]),
            li([
              a(classes: "", href: "#portfolio", [.text("Portfolio")]),
            ]),
            li([
              a(classes: "reverse-color", href: "#contact", [.text("CONTACT ME")]),
            ]),
          ]),
        ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css(".drawer").styles(
      display: .block,
      position: .relative(),
    ),
    css.media(.screen(minWidth: 1200.px), [css("header .med-screen").styles(display: .none)]),
    css(".drawer .menu-icon").styles(
      display: .flex,
      height: 50.px,
      padding: .zero,
      margin: .zero,
      border: .none,
      cursor: .pointer,
      alignItems: .center,
      color: Colors.white,
      backgroundColor: Colors.transparent,
      raw: {'outline': 'none'},
    ),
    css(".drawer .drawer-list").styles(
      display: .flex,
      position: .absolute(top: 100.percent, right: 0.px),
      zIndex: ZIndex(100),
      width: 400.px,
      border: .only(
        top: BorderSide(width: 1.px, color: Colors.white),
      ),
      flexDirection: .column,
      backgroundColor: Colors.black.withOpacity(.4),
    ),
    css(".drawer .drawer-list a").styles(
      display: .block,
      width: 100.percent,
      height: 60.px,
      color: Colors.white,
      textAlign: .center,
      fontFamily: FontFamily("Montserrat"),
      fontSize: 16.px,
      fontWeight: .w600,
      lineHeight: 60.px,
    ),
    css(".drawer .drawer-list a::before").styles(
      content: "",
      position: .absolute(bottom: 0.px, left: 0.px),
      width: 0.px,
      height: 3.px,
      transition: Transition("width", duration: Duration(milliseconds: 300)),
      backgroundColor: Colors.white,
    ),
    css(".drawer .drawer-list a:hover:not(.reverse-color)::before").styles(width: 100.percent),
    css(".drawer .drawer-list .reverse-color").styles(
      transition: Transition("width", duration: Duration(milliseconds: 300)),
      color: Colors.black,
      backgroundColor: Colors.white,
    ),
    css(".drawer .drawer-list .reverse-color").styles(
      transition: Transition("all", duration: Duration(milliseconds: 300)),
      color: Colors.black,
      backgroundColor: Colors.white,
    ),
    css(".drawer .drawer-list .reverse-color:hover").styles(
      color: Colors.white,
      backgroundColor: Colors.gray,
    ),
  ];
}
