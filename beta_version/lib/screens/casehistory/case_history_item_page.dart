import 'package:beta_version/assets/custom_icons.dart';
import 'package:beta_version/models/case_history_model.dart';
import 'package:beta_version/widgets/exercise_widgets/exercise_instruction_row.dart';
import 'package:beta_version/widgets/top_app_bar.dart';
import 'package:beta_version/widgets/videoplayer/asset_player_widget.dart';
import 'package:custom_ui/custom_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThisCaseHistoryItemScreen extends StatefulWidget {
  const ThisCaseHistoryItemScreen({
    required this.caseHistoryItem,
    Key? key,
  }) : super(key: key);

  @override
  State<ThisCaseHistoryItemScreen> createState() =>
      _ThisCaseHistoryItemScreenState();

  /// The CaseHistoryItem to be displayed.
  final CaseHistoryItem caseHistoryItem;
}

class _ThisCaseHistoryItemScreenState extends State<ThisCaseHistoryItemScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
            decoration: BoxDecoration(
              color: AppColorsData.regular().primaryOrange,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.caseHistoryItem.name,
                    style: AppTypographyData.primaryWhite().quicksandTitle2,
                    textAlign: TextAlign.left,
                  ),
                ]),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 40.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.caseHistoryItem.content,
                        style:
                            AppTypographyData.greyShades_5().sourceSansProBody,
                      ),
                      const VerticalGap(num: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
