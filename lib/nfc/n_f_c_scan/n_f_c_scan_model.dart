import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'n_f_c_scan_widget.dart' show NFCScanWidget;
import 'package:flutter/material.dart';

class NFCScanModel extends FlutterFlowModel<NFCScanWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - startNFCScan] action in NFC_Scan widget.
  NFCDataStruct? nFCScanResult;
  // Stores action output result for [Custom Action - processPayment] action in NFC_Scan widget.
  ResponseDataStruct? payementResult;
  InstantTimer? failToScan;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    failToScan?.cancel();
  }
}
