import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'empty_transaction_model.dart';
export 'empty_transaction_model.dart';

class EmptyTransactionWidget extends StatefulWidget {
  const EmptyTransactionWidget({super.key});

  @override
  State<EmptyTransactionWidget> createState() => _EmptyTransactionWidgetState();
}

class _EmptyTransactionWidgetState extends State<EmptyTransactionWidget> {
  late EmptyTransactionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyTransactionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Lottie.asset(
            'assets/jsons/CertificationEmpty.json',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.contain,
            animate: true,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: Text(
            'Oups, il semble que vous n\'ayez aucune transactions.',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Poppins',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
