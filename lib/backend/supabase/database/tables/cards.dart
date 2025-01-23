import '../database.dart';

class CardsTable extends SupabaseTable<CardsRow> {
  @override
  String get tableName => 'cards';

  @override
  CardsRow createRow(Map<String, dynamic> data) => CardsRow(data);
}

class CardsRow extends SupabaseDataRow {
  CardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get accountId => getField<String>('account_id');
  set accountId(String? value) => setField<String>('account_id', value);

  String? get ownerName => getField<String>('owner_name');
  set ownerName(String? value) => setField<String>('owner_name', value);

  int? get number => getField<int>('number');
  set number(int? value) => setField<int>('number', value);

  int? get cvc => getField<int>('cvc');
  set cvc(int? value) => setField<int>('cvc', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get expireDate => getField<DateTime>('expire_date');
  set expireDate(DateTime? value) => setField<DateTime>('expire_date', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
