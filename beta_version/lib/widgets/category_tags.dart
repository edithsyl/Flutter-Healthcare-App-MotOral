import 'package:custom_ui/custom_ui.dart';

import '../models/category_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: AppSolidRoundButtonSmall(
            title: categories[index].name,
            onPressed: () {},
          ),
        );
      },
    );
  }
}
