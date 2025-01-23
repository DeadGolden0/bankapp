import '/flutter_flow/flutter_flow_util.dart';
import 'profile_edit_profile_widget.dart' show ProfileEditProfileWidget;
import 'package:flutter/material.dart';

class ProfileEditProfileModel
    extends FlutterFlowModel<ProfileEditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yourEmail widget.
  FocusNode? yourEmailFocusNode;
  TextEditingController? yourEmailTextController;
  String? Function(BuildContext, String?)? yourEmailTextControllerValidator;
  // State field(s) for yourAge widget.
  FocusNode? yourAgeFocusNode;
  TextEditingController? yourAgeTextController;
  String? Function(BuildContext, String?)? yourAgeTextControllerValidator;
  // State field(s) for yourTitle widget.
  FocusNode? yourTitleFocusNode;
  TextEditingController? yourTitleTextController;
  String? Function(BuildContext, String?)? yourTitleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourEmailFocusNode?.dispose();
    yourEmailTextController?.dispose();

    yourAgeFocusNode?.dispose();
    yourAgeTextController?.dispose();

    yourTitleFocusNode?.dispose();
    yourTitleTextController?.dispose();
  }
}
