class TransactionEntity {
  final String id;
  final String userId;
  final String? familyId;
  final double amount;
  final String categoryId;
  final String? note;
  final DateTime transactionDate;
  final DateTime createdAt;

  const TransactionEntity({
    required this.id,
    required this.userId,
    this.familyId,
    required this.amount,
    required this.categoryId,
    this.note,
    required this.transactionDate,
    required this.createdAt,
  });
}