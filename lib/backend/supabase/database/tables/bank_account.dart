import '../database.dart';

class BankAccountTable extends SupabaseTable<BankAccountRow> {
  @override
  String get tableName => 'bank_account';

  @override
  BankAccountRow createRow(Map<String, dynamic> data) => BankAccountRow(data);
}

class BankAccountRow extends SupabaseDataRow {
  BankAccountRow(super.data);

  @override
  SupabaseTable get table => BankAccountTable();

  String get ownerId => getField<String>('owner_id')!;
  set ownerId(String value) => setField<String>('owner_id', value);

  double get balance => getField<double>('balance')!;
  set balance(double value) => setField<double>('balance', value);

  String get iban => getField<String>('iban')!;
  set iban(String value) => setField<String>('iban', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
