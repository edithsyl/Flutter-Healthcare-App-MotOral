import 'package:custom_ui/source/utils/named.dart';
import 'package:equatable/equatable.dart';

class AppDurationsData extends Equatable {
  const AppDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory AppDurationsData.regular() => const AppDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 300),
        quick: Duration(milliseconds: 200),
      );

  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  @override
  List<Object?> get props => [
        areAnimationEnabled,
        regular.named('regular'),
        quick.named('quick'),
      ];
}
