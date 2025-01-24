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

import 'package:nfc_manager/nfc_manager.dart';
import 'dart:convert';
import 'dart:async';

Future<NFCDataStruct> startNFCScan() async {
  final completer = Completer<NFCDataStruct>(); // Création d'un Completer

  try {
    // Vérifie si le NFC est disponible sur l'appareil
    bool isAvailable = await NfcManager.instance.isAvailable();
    if (!isAvailable) {
      print('==========================================');
      print('Le NFC n\'est pas disponible sur cet appareil.');
      print('==========================================');
      return NFCDataStruct(
        result: null,
        error: "Le NFC n'est pas disponible sur cet appareil.",
      );
    }

    // Démarre une session de lecture NFC
    await NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
      try {
        final ndef = Ndef.from(tag);
        if (ndef == null) {
          print('==========================================');
          print('Cette étiquette ne supporte pas le format NDEF.');
          print('==========================================');
          await NfcManager.instance
              .stopSession(errorMessage: "Format NDEF non supporté");
          completer.complete(NFCDataStruct(
            result: null,
            error: "Format NDEF non supporté.",
          ));
          return;
        }

        // Lit le message NDEF
        final ndefMessage = await ndef.read();
        if (ndefMessage.records.isEmpty) {
          print('==========================================');
          print('Aucun enregistrement NDEF trouvé sur cette étiquette.');
          print('==========================================');
          await NfcManager.instance
              .stopSession(errorMessage: "Aucun enregistrement trouvé");
          completer.complete(NFCDataStruct(
            result: null,
            error: "Aucun enregistrement trouvé.",
          ));
          return;
        }

        // Parcourt les enregistrements NDEF et extrait le texte
        for (var record in ndefMessage.records) {
          if (utf8.decode(record.type) == 'T') {
            final payload = record.payload;
            final languageCodeLength = payload[0];
            final nfcText =
                utf8.decode(payload.sublist(1 + languageCodeLength));
            print('==========================================');
            print('Texte : $nfcText');
            print('==========================================');
            await NfcManager.instance.stopSession();
            completer.complete(NFCDataStruct(
              result: nfcText,
              error: null,
            ));
            return;
          }
        }

        // Si aucun texte n'a été trouvé
        await NfcManager.instance
            .stopSession(errorMessage: "Aucun texte lisible trouvé");
        completer.complete(NFCDataStruct(
          result: null,
          error: "Aucun texte lisible trouvé.",
        ));
      } catch (e) {
        // Gestion des erreurs dans onDiscovered
        await NfcManager.instance.stopSession(errorMessage: "Erreur : $e");
        completer.complete(NFCDataStruct(
          result: null,
          error: "Erreur lors de la lecture NFC : $e",
        ));
      }
    });

    return completer.future; // Attend que le Completer soit complété
  } catch (e) {
    print('Erreur lors de la lecture NFC : $e');
    return NFCDataStruct(
      result: null,
      error: "Erreur lors de la lecture NFC : $e",
    );
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
