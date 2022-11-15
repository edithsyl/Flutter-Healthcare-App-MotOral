To transition efficiently from visual prototypes in Figma to Flutter widgets, "custom_ui", which is a custom design system library, is created to provide an API for theming data such as colours, typography, radius, backgrounds, page transitions effects e.t.c.

## Features Most Used in the project

### color

lib/source/theme/data/colors.dart

### typography

lib/source/theme/data/typography.dart

example from leaderboard_row.dart

```dart
Text(
    '$index.',
    style: AppTypographyData.greyShades_4().sourceSansProBodySmall,
),
```

### gap

`\lib\source\gap.dart`

- VerticalGap
- HorizontalGap

example from login_screen.dart in `\lib\screens\auth`

```dart
Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
    Text(
        'Log in',
        style: TextStyle(
            color: AppColorsData.regular().greyShades_5,
            fontWeight: FontWeight.w800,
            fontFamily: "SourceSansPro",
            fontStyle: FontStyle.normal,
            fontSize: 32.0),
    ),
    const VerticalGap(num: 24),
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
            'welcome back! ',
            style: AppTypographyData.primaryOrange()
                .sourceSansProBodySemibold,
        ),
        Text(
            'tell us your',
            style: AppTypographyData.greyShades_4()
                .sourceSansProBodySemibold,
        ),
        ],
    ),
    const VerticalGap(num: 45),
    // and so on
```

### radius

lib/source/theme/data/radius.dart

## Additional information

Inspiration from
https://www.youtube.com/watch?v=lTy8odHcS5s
https://github.com/aloisdeniel/asgard_shop
