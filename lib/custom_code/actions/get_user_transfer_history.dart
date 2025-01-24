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

Future<List<TransferHistoryStruct>> getUserTransferHistory() async {
  final supabase = SupaFlow.client; // Instance Supabase

  try {
    // Appel RPC pour récupérer l'historique des transferts
    final response = await supabase.rpc('get_user_transfer_history');

    if (response == null) {
      throw Exception('No data found or response is empty.');
    }

    // Conversion de la réponse en une liste dynamique
    final data = response as List<dynamic>;

    return data.map((item) {
      return TransferHistoryStruct(
        transferID: item['id'] ?? '', // ID du transfert
        sourceUserID: item['id_source'] ?? 'Unknown', // ID source
        destinationUserID:
            item['id_destinataire'] ?? 'Unknown', // ID destinataire
        transferAmount: (item['amount'] ?? 0.0) as double, // Montant
        transferReason: item['reason'] ?? 'No reason provided', // Raison
        transferDate: item['date'] != null
            ? DateTime.tryParse(item['date']) ?? DateTime.now()
            : DateTime.now(), // Date du transfert
        transferStatus: item['status'] ?? 'Pending', // Statut
      );
    }).toList();
  } catch (e) {
    print('Error fetching transfer history: $e');
    return [];
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
