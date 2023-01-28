import 'package:beta_version/models/exercise_instruction_model.dart';
import 'package:beta_version/models/exercise_model_new.dart';

import '../models/exercise_categories_enum.dart';

final List<Exercise_new> Exercises = <Exercise_new>[
  Exercise_new(
    id: 'en0',
    name: 'Cheek Strengthening',
    category: ExerciseCategories.cheek,
    description: '用舌頭頂著左面頰，數五秒，再把舌頭頂著右面頰。',
    image: 'assets/images/test_exercise_thumbnail/6_tongue_and_cheek.png',
    duration: '1',
    isDailyExercise: true,
    exerciseInstruction: ExerciseInstruction(
      id: 6,
      name: '舌頭頂向面頰',
      description: '用舌頭頂著左面頰，數五秒，再把舌頭頂著右面頰。',
      image: 'assets/images/test_exercise_thumbnail/6_tongue_and_cheek.png',
      vid: 'assets/videos/test_exercise_breakdown/6_tongue_and_cheek.mp4',
    ),
  ),
  Exercise_new(
    id: 'en1',
    name: 'Jaw Range of Movement',
    category: ExerciseCategories.jaw,
    description: '下巴盡量往下，動作像大叫「呀」一樣，數五秒。',
    image: 'assets/images/test_exercise_thumbnail/5_mouth_opening.png',
    duration: '1',
    isDailyExercise: false,
    exerciseInstruction: ExerciseInstruction(
      id: 5,
      name: '張嘴',
      description: '下巴盡量往下，動作像大叫「呀」一樣，數五秒。',
      image: 'assets/images/test_exercise_thumbnail/5_mouth_opening.png',
      vid: 'assets/videos/test_exercise_breakdown/5_mouth_opening.mp4',
    ),
  ),
  Exercise_new(
    id: 'en2',
    name: 'Smile',
    category: ExerciseCategories.lip,
    description: '保持微笑的，嘴型如同唸E(依)字一樣，數五秒。',
    image: 'assets/images/test_exercise_thumbnail/3_smile.png',
    duration: '4',
    isDailyExercise: true,
    exerciseInstruction: ExerciseInstruction(
      id: 3,
      name: '微笑',
      description: '保持微笑的，嘴型如同唸E(依)字一樣，數五秒。',
      image: 'assets/images/test_exercise_thumbnail/3_smile.png',
      vid: 'assets/videos/test_exercise_breakdown/3_smile.mp4',
    ),
  ),
  Exercise_new(
    id: 'en3',
    name: 'Lips Rounding',
    category: ExerciseCategories.lip,
    description: '數5秒。',
    image: 'assets/images/test_exercise_thumbnail/2_lip_protuding.png',
    duration: '1',
    isDailyExercise: false,
    exerciseInstruction: ExerciseInstruction(
      id: 2,
      name: '向前嘟嘴',
      description: '數5秒。',
      image: 'assets/images/test_exercise_thumbnail/2_lip_protuding.png',
      vid: 'assets/videos/test_exercise_breakdown/2_lip_protuding.mp4',
    ),
  ),
  Exercise_new(
    id: 'en4',
    name: 'Tongue Elevation',
    category: ExerciseCategories.tongue,
    description: '想像把舌頭伸至碰到鼻尖，數五秒。',
    image: 'assets/images/test_exercise_thumbnail/4_tongue_tip_to_nose.png',
    duration: '1',
    isDailyExercise: false,
    exerciseInstruction: ExerciseInstruction(
      id: 4,
      name: '向上伸出舌頭',
      description: '想像把舌頭伸至碰到鼻尖，數五秒。',
      image: 'assets/images/test_exercise_thumbnail/4_tongue_tip_to_nose.png',
      vid: 'assets/videos/test_exercise_breakdown/4_tongue_tip_to_nose.mp4',
    ),
  ),
  Exercise_new(
    id: 'en5',
    name: 'Tongue Lateral Movement',
    category: ExerciseCategories.tongue,
    description: 'strengthen your tongue muscles',
    image: 'assets/images/test_exercise_thumbnail/1_tongue.png',
    duration: '1',
    isDailyExercise: false,
    exerciseInstruction: ExerciseInstruction(
      id: 1,
      name: ' 伸出舌頭',
      description: '向左伸出舌頭，數五秒，然後向右伸出舌頭，數五秒\n頭部盡量保持不動',
      image: 'assets/images/test_exercise_thumbnail/1_tongue.png',
      vid: 'assets/videos/test_exercise_breakdown/1_tongue.mp4',
    ),
  ),
];
