import 'package:evara_app/features/transaction/domain/entities/transaction.dart';

class TransactionModel extends TransactionEntity{
  const TransactionModel({
    required super.id,
    required super.userId,
    super.familyId,
    required super.amount,
    required super.categoryId,
    super.note,
    required super.transactionDate,
    required super.createdAt,
  });


  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'] as String, 
      userId: json['user_id'] as String,
      familyId: json['family_id'] as String?, 
      amount: (json['amount'] as num).toDouble() , 
      categoryId: json['category_id'] as String,
      note: json['note'] as String?,
      transactionDate: DateTime.parse(json['transaction_date'] as String), 
      createdAt: DateTime.parse(json['created_at'] as String)
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'family_id': familyId,
      'amount': amount,
      'category_id': categoryId,
      'note': note,
      'transaction_date': transactionDate.toIso8601String(),
      'created_at': createdAt.toIso8601String()
    };
  }

  factory TransactionModel.fromEntity(TransactionEntity entity) {
    return TransactionModel(
      id: entity.id, 
      userId: entity.userId,
      familyId: entity.familyId, 
      amount: entity.amount, 
      categoryId: entity.categoryId, 
      transactionDate: entity.transactionDate, 
      createdAt: entity.createdAt
    );
  }
}