import 'package:beta_version/models/case_history_model.dart';
import 'package:beta_version/models/models.dart';

/// dummy data of [CaseHistoryItem]
class CaseHistoryItems {
  CaseHistoryItems._();

  /// The data.
  static final List<CaseHistoryItem> data = <CaseHistoryItem>[
    CaseHistoryItem(
      id: 'ch1',
      name: 'Report',
      content:
          'feeling siegnobs seoignosn bsoeig esoooei g esogsg, symptoms include siegnobs seoignosn bsoeig esoooei g esogsg',
      submissionDate: DateTime.now(),
      isReviewed: true,
    ),
    CaseHistoryItem(
      id: 'ch2',
      name: 'Report',
      content:
          'feeling siegnobs seoignosn bsoeig esoooei g esogsg, symptoms include siegnobs seoignosn bsoeig esoooei g esogsg',
      submissionDate: DateTime.now(),
      isReviewed: true,
    ),
    CaseHistoryItem(
      id: 'ch3',
      name: 'Report',
      content:
          'feeling siegnobs seoignosn bsoeig esoooei g esogsg, symptoms include siegnobs seoignosn bsoeig esoooei g esogsg',
      submissionDate: DateTime.now(),
      isReviewed: true,
    ),
    CaseHistoryItem(
      id: 'ch4',
      name: 'Report',
      content:
          'feeling siegnobs seoignosn bsoeig esoooei g esogsg, symptoms include siegnobs seoignosn bsoeig esoooei g esogsg',
      submissionDate: DateTime.now(),
      isReviewed: true,
    ),
    CaseHistoryItem(
      id: 'ch5',
      name: 'Report',
      content:
          'feeling siegnobs seoignosn bsoeig esoooei g esogsg, symptoms include siegnobs seoignosn bsoeig esoooei g esogsg',
      submissionDate: DateTime.now(),
      isReviewed: true,
    ),
  ];

  /// Looks up a t_category in the data.
  static CaseHistoryItem id(String chid) => data.id(chid);
}

extension on List<CaseHistoryItem> {
  CaseHistoryItem id(String chid) => singleWhere(
        (c) => c.id == chid,
        orElse: () => throw Exception('unknown case history item $chid'),
      );
}
