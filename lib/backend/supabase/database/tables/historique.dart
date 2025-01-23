import '../database.dart';

class HistoriqueTable extends SupabaseTable<HistoriqueRow> {
  @override
  String get tableName => 'historique';

  @override
  HistoriqueRow createRow(Map<String, dynamic> data) => HistoriqueRow(data);
}

class HistoriqueRow extends SupabaseDataRow {
  HistoriqueRow(super.data);

  @override
  SupabaseTable get table => HistoriqueTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idSource => getField<String>('id_source');
  set idSource(String? value) => setField<String>('id_source', value);

  String? get idDestinataire => getField<String>('id_destinataire');
  set idDestinataire(String? value) =>
      setField<String>('id_destinataire', value);

  double? get montant => getField<double>('montant');
  set montant(double? value) => setField<double>('montant', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get raison => getField<String>('raison');
  set raison(String? value) => setField<String>('raison', value);
}
