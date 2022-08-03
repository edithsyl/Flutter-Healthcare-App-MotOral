import 'dart:ui';

import 'package:beta_version/data/case_history_data.dart';
import 'package:beta_version/models/case_history_model.dart';
import 'package:beta_version/widgets/case_history_widgets/case_history_card.dart';
import 'package:beta_version/widgets/login_widgets.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CaseHistoryPage extends StatefulWidget {
  const CaseHistoryPage({Key? key}) : super(key: key);

  @override
  State<CaseHistoryPage> createState() => _CaseHistoryPageState();
}

class _CaseHistoryPageState extends State<CaseHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
          decoration: BoxDecoration(
            color: AppColorsData.regular().primaryOrange,
          ),
          child: AppBarContent(
            title: 'CaseHistory',
            leftOnPressed: () {
              context.goNamed('profile');
            },
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height / 5) * 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: CaseHistoryItems.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 16.0),
                          child: CaseHistoryCard(
                            casehistory_item: CaseHistoryItems.data[index],
                            color: AppColorsData.regular().orangeTints_4,
                            ontap: () => context.go(
                                '/casehistory/item/${CaseHistoryItems.data[index].id}'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          PositionedDirectional(
            top: 600, //((MediaQuery.of(context).size.height / 5) * 4),
            //height: 400,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Color.fromARGB(0, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),
              ),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                  child:
                      LongAppOutlineButton(title: 'Report', onPressed: () {})),
            ),
          ),
        ],
      ),
    );
  }
}
