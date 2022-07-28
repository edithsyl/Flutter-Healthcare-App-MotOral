import 'package:beta_version/app_router.dart';
import 'package:beta_version/models/bottom_nav_pages_data.dart';

/// The category tabs screen
class BottomNavScreen extends StatefulWidget {
  /// Creates a [BottomNavScreen].
  BottomNavScreen({
    required BottomNavPage selectedPage,
    Key? key,
  })  : index = BottomNavPages.data
            .indexWhere((BottomNavPage f) => f.id == selectedPage.id),
        super(key: key) {
    assert(index != -1);
  }

  /// The tab index.
  final int index;

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen>
    with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: widget.index,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(BottomNavScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.index;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: <Widget>[
              for (final BottomNavPage c in BottomNavPages.data)
                c.thisPageShows,
            ],
          ),
        ), //pages[currentIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryWhite,
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().verticalRegular,
            boxShadow: [
              AppShadowsData.regular().up,
            ],
          ),
          child: ClipRRect(
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().verticalRegular,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColorsData.regular().primaryWhite,
                onTap: (int currentIndex) => _tap(context, currentIndex),
                currentIndex: widget.index,
                selectedItemColor: AppColorsData.regular().primaryHighlightRed,
                unselectedItemColor: AppColorsData.regular().greyTints_3,
                selectedLabelStyle:
                    AppTypographyData.greyShades_3().sourceSansProBody1,
                unselectedLabelStyle:
                    AppTypographyData.greyShades_2().sourceSansProBody1,
                elevation: 0,
                items: <BottomNavigationBarItem>[
                  for (final BottomNavPage c in BottomNavPages.data)
                    BottomNavigationBarItem(
                      icon: c.thisIcon,
                      label: c.name,
                    ),
                ],
                showSelectedLabels: true,
                showUnselectedLabels: true,
              ),
            ),
          ),
        ),
      );

  void _tap(BuildContext context, int index) {
    context.go('/tfront/${BottomNavPages.data[index].id}');
  }
}
