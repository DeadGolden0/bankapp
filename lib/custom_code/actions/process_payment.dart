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

Future<ResponseDataStruct> processPayment(
  String cardId, // ID de la carte
  String destinationAccountId, // ID du compte destinataire
  double amount, // Montant à transférer
) async {
  final supabase = SupaFlow.client;
  try {
    print('Démarage du paiment!');
    // Appel de la fonction RPC à Supabase pour exécuter le transfert
    final response = await supabase.rpc('transfer_funds', params: {
      'p_card_id': cardId, // ID de la carte source
      'p_destinataire_client_id':
          destinationAccountId, // ID du compte destinataire
      'p_amount': amount, // Montant à transférer
    });

    if (response == null) {
      throw Exception('Response is null or empty');
    }

    // Vérification de la réponse (on suppose ici que la fonction retourne un booléen)
    final isSuccess = response as bool;

    // Retourne une structure de réponse selon le statut
    return ResponseDataStruct(
      status: isSuccess ? 'success' : 'error',
      message: isSuccess
          ? 'Le transfert a été effectué avec succès.'
          : 'Le transfert a échoué.',
    );
  } catch (e) {
    // Gestion des exceptions en cas d'erreur
    return ResponseDataStruct(
      status: 'error',
      message: 'Une erreur s\'est produite : $e',
    );
  }
}
