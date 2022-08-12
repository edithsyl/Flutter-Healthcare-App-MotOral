import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/widgets/people/buddies.dart';
import 'package:beta_version/widgets/people/leaderboard.dart';
import 'package:beta_version/widgets/people/therapists.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';

class PeoplePage2 extends StatefulWidget {
  PeoplePage2({super.key}) : index = 0;

  int index;

  @override
  State<PeoplePage2> createState() => _PeoplePage2State();
}

class _PeoplePage2State extends State<PeoplePage2>
    with TickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => showOverlay());

    // void showOverlay() {
    //   final overlay = Overlay.of(context)!;
    //   overlay.insert(entry)
    // }

    _controller = TabController(
      length: 3, //t_Categories.data.length,
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
  void didUpdateWidget(PeoplePage2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Container(
        color: AppColorsData.regular().primaryOrange,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'People',
                    style: AppTypographyData.primaryWhite().quicksandTitle2,
                  ),
                  IconButton(
                    icon: const Icon(
                      CustomIcons.inbox_1,
                    ),
                    color: Colors.transparent,
                    onPressed: () => {},
                  )
                ],
              ),
            ),
            //const VerticalGap(num: 25),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(32, 40, 32, 32),
              decoration: BoxDecoration(
                color: AppColorsData.regular().primaryWhite,
                borderRadius: const AppRadiusData.regular()
                    .asBorderRadius()
                    .verticalRegular,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 40,
                    child: TabBar(
                      controller: _controller,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColorsData.regular().primaryOrange,
                      ),
                      labelPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      labelColor: AppColorsData.regular().primaryWhite,
                      labelStyle:
                          AppTypographyData.primaryWhite().quicksandBodySmall,
                      unselectedLabelColor:
                          AppColorsData.regular().greyShades_6,
                      unselectedLabelStyle:
                          AppTypographyData.greyShades_5().quicksandBodySmall,
                      tabs: const <Tab>[
                        Tab(text: 'Leaderboard'),
                        Tab(text: 'Buddies'),
                        Tab(text: 'Therapists'),
                      ],
                      onTap: (int index) => _tap(context, index),
                    ),
                  ),
                  //const VerticalGap(num: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Flexible(
                      child: SizedBox(
                        width: double.maxFinite,
                        height: 1000,
                        child: TabBarView(
                          controller: _controller,
                          children: const <Widget>[
                            ShowLeaderboard(),
                            ShowBuddies(),
                            ShowTherapists(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }

  void _tap(BuildContext context, int index) => widget.index = index;
}
