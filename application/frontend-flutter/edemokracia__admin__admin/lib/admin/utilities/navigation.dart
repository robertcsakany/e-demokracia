part of judo.utility;

class NavigationItem {
  const NavigationItem({
    this.route,
    this.leading,
    this.title = '',
    this.items = const [],
    this.isGroup = false,
  });

  final String route;
  final Widget leading;
  final String title;
  final List<NavigationItem> items;
  final bool isGroup;
}
