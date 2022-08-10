import 'package:beta_version/models/news_model.dart';
import 'package:custom_ui/custom_ui.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.news,
    required this.color,
    required this.ontap,
  }) : super(key: key);

  final News news;
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
          height: 120,
          decoration: BoxDecoration(
            color: color, // AppColorsData.regular().orangeTints_4,
            image: DecorationImage(
              image: AssetImage(news.image), // 'assets/images/thinking.png'
              colorFilter: ColorFilter.mode(
                color, // AppColorsData.regular().orangeTints_4,
                BlendMode.hardLight,
              ),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomRight,
              repeat: ImageRepeat.noRepeat,
            ),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(news.date, // "4",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
                Text(news.title, // "Cheek Strentheing",
                    style:
                        AppTypographyData.primaryWhite().sourceSansProBodyBold),
                Text('by ${news.author}', // "4",
                    style: AppTypographyData.greyShades_6()
                        .sourceSansProBodySmall),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
