import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_iban_widget.dart' show TransferIbanWidget;
import 'package:flutter/material.dart';

class TransferIbanModel extends FlutterFlowModel<TransferIbanWidget> {
  ///  Local state fields for this page.

  bool recipientIsFind = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RecipientIBAN widget.
  FocusNode? recipientIBANFocusNode;
  TextEditingController? recipientIBANTextController;
  String? Function(BuildContext, String?)? recipientIBANTextControllerValidator;
  String? _recipientIBANTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'L\'IBAN est requis';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<BankAccountRow>? bankAccountOutput;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ClientsRow>? recipientOutput;

  @override
  void initState(BuildContext context) {
    recipientIBANTextControllerValidator =
        _recipientIBANTextControllerValidator;
  }

  @override
  void dispose() {
    recipientIBANFocusNode?.dispose();
    recipientIBANTextController?.dispose();
  }
}
