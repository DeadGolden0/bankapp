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

Future<ResponseDataStruct> toggleCard(
  String senderId,
) async {
  final supabase = SupaFlow.client;

  try {
    // Appel RPC à Supabase pour basculer le statut de la certification
    final response =
        await supabase.rpc('toggle_card_status_by_client', params: {
      'p_client_id': senderId, // ID de l'expéditeur
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
          ? 'Blocage de la carte effectué avec succès.'
          : 'Une erreur est survenue.',
    );
  } catch (e) {
    // Gestion des exceptions en cas d'erreur
    return ResponseDataStruct(
      status: 'error',
      message: 'An error occurred, please try again later.',
    );
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
