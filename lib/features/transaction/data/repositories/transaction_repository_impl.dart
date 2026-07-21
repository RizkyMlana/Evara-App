import 'package:evara_app/features/transaction/domain/entities/transaction.dart';

abstract interface class TransactionRepository {
  Future<void> addTransaction(TransactionEntity transaction);

  Future<List<TransactionEntity>> getTransaction();

  Future<void> deleteTransaction(String id);

  Future<void> updateTransaction(TransactionEntity transaction);
}