import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_recap_widget.dart' show TransferRecapWidget;
import 'package:flutter/material.dart';

class TransferRecapModel extends FlutterFlowModel<TransferRecapWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - toggleTransfer] action in Button widget.
  ResponseDataStruct? transferFunctionOutput;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<BankAccountRow>? bankDataOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
