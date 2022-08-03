class CaseHistoryItem {
  /// Creates a [CaseHistoryItem].
  CaseHistoryItem({
    required this.id,
    required this.name,
    required this.content,
    required this.submissionDate,
    required this.isReviewed,
  });

  /// The id of the CaseHistoryItem.
  final String id;

  /// The name of the CaseHistoryItem.
  final String name;

  /// The category of the CaseHistoryItem.
  final String content;
  final DateTime submissionDate;
  final bool isReviewed;
}
