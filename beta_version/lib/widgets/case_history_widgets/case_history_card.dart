import 'package:beta_version/models/case_history_model.dart';
import 'package:custom_ui/custom_ui.dart';

class CaseHistoryCard extends StatelessWidget {
  const CaseHistoryCard({
    Key? key,
    required this.casehistory_item,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  final CaseHistoryItem casehistory_item;
  final Color color;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: color, // AppColorsData.regular().orangeTints_4,
            borderRadius:
                const AppRadiusData.regular().asBorderRadius().allRegular,
          ),
          alignment: Alignment.centerLeft,
          padding:
              EdgeInsets.symmetric(horizontal: AppSpacingData.regular().x1),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                    'submitted on ${casehistory_item.submissionDate.day}/${casehistory_item.submissionDate.month}/${casehistory_item.submissionDate.year}', // "4",
                    style: AppTypographyData.primaryWhite()
                        .sourceSansProBodySmall),
                Text(casehistory_item.name, // "Cheek Strentheing",
                    style:
                        AppTypographyData.primaryWhite().sourceSansProBodyBold),
                const VerticalGap(num: 8),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    casehistory_item.content,
                    softWrap: true,
                    maxLines: 2,
                    style:
                        AppTypographyData.primaryWhite().sourceSansProBodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const VerticalGap(num: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const AppRadiusData.regular()
                            .asBorderRadius()
                            .allRegular,
                        color: AppColorsData.regular().orangeTints_5,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Text(
                          casehistory_item.isReviewed
                              ? 'To be reviewed'
                              : 'Reviewed',
                          style: AppTypographyData.primaryWhite()
                              .sourceSansProBodySmall),
                    ),
                    AppSolidRoundButtonSmall(title: 'View', onPressed: () {})
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
