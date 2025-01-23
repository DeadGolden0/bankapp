import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'transfer_recap_widget.dart' show TransferRecapWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

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
