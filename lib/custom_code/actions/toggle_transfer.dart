// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<ResponseDataStruct> toggleTransfer(
  String senderId,
  String recipientId,
  String recipientIBAN,
  double amount,
  String? reason,
) async {
  final supabase = SupaFlow.client;

  try {
    // Appel RPC à Supabase pour basculer le statut de la certification
    final response = await supabase.rpc('execute_money_transfer', params: {
      'p_sender_id': senderId, // ID de l'expéditeur
      'p_recipient_id': recipientId, // ID du destinataire
      'p_recipient_iban': recipientIBAN, // IBAN du destinataire
      'p_amount': amount, // Montant du transfert
      'p_reason': reason, // Raison du transfert
    });

    if (response == null) {
      throw Exception('Response is null or empty');
    }

    // Vérification et conversion des données de réponse en Map
    final data = response as Map<String, dynamic>;

    return ResponseDataStruct(
      status: data['status'],
      message: data['message'],
    );
  } catch (e) {
    // Gestion des exceptions en cas d'erreur
    return ResponseDataStruct(
      status: 'error',
      message: 'An error occurred, please try again later.',
    );
  }
}
