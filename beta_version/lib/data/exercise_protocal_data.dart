import 'package:beta_version/models/exercise_instruction_model.dart';

/// dummy data of [ExerciseInstruction]
class ExerciseProtocal {
  ExerciseProtocal._();

  /// The data.
  static final List<ExerciseInstruction> data = <ExerciseInstruction>[
    ExerciseInstruction(
      id: 1,
      name: ' 伸出舌頭',
      description: '向左伸出舌頭，數五秒，然後向右伸出舌頭，數五秒\n頭部盡量保持不動',
      image: 'assets/images/badges/badge1.png',
    ),
    ExerciseInstruction(
      id: 2,
      name: '向前嘟嘴',
      description: '數5秒',
      image: 'assets/images/badges/badge2.png',
    ),
    ExerciseInstruction(
      id: 3,
      name: '張嘴',
      description: '保持微笑的，嘴型如同唸E(依)字一樣，數五秒',
      image: 'assets/images/badges/badge3.png',
    ),
    ExerciseInstruction(
      id: 4,
      name: '向上伸出舌頭',
      description: '想像把舌頭伸至碰到鼻尖，數五秒',
      image: 'assets/images/badges/badge4.png',
    ),
    ExerciseInstruction(
      id: 5,
      name: '張嘴',
      description: '下巴盡量往下，動作像大叫「呀」一樣，數五秒。',
      image: 'assets/images/badges/badge5.png',
    ),
    ExerciseInstruction(
      id: 6,
      name: '舌頭頂向面頰',
      description: '用舌頭頂著左面頰，數五秒，再把舌頭頂著右面頰',
      image: 'assets/images/badges/badge6.png',
    ),
  ];

  /// Looks up a t_category in the data.
  static ExerciseInstruction id(int no) => data.id(no);

  static int getlength() {
    return data.length;
  }
}

extension on List<ExerciseInstruction> {
  ExerciseInstruction id(int no) => singleWhere(
        (c) => c.id == no,
        orElse: () => throw Exception('unknown instruction $no'),
      );
}
