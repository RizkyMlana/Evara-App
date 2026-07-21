import 'package:evara_app/features/transaction/data/models/transaction_model.dart';

abstract interface class TransactionRemoteDatasource {
  Future<void> addTransaction(TransactionModel, transaction);
  
}