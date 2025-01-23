import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_amount_widget.dart' show TransferAmountWidget;
import 'package:flutter/material.dart';

class TransferAmountModel extends FlutterFlowModel<TransferAmountWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AmountTextField widget.
  FocusNode? amountTextFieldFocusNode;
  TextEditingController? amountTextFieldTextController;
  String? Function(BuildContext, String?)?
      amountTextFieldTextControllerValidator;
  String? _amountTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Le montant est requis';
    }

    return null;
  }

  // State field(s) for ReasonTextField widget.
  FocusNode? reasonTextFieldFocusNode;
  TextEditingController? reasonTextFieldTextController;
  String? Function(BuildContext, String?)?
      reasonTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    amountTextFieldTextControllerValidator =
        _amountTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    amountTextFieldFocusNode?.dispose();
    amountTextFieldTextController?.dispose();

    reasonTextFieldFocusNode?.dispose();
    reasonTextFieldTextController?.dispose();
  }
}
