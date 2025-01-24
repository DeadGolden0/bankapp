import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String convertEmailToLowercase(String email) {
  return email.toLowerCase();
}

bool isCurrentUserUidEqual(String compareValue) {
  // Récupérer l'instance Supabase
  final supabase = SupaFlow.client;

  try {
    // Récupérer l'UID de l'utilisateur authentifié
    final currentUserUid = supabase.auth.currentUser?.id;

    // Vérifier si l'utilisateur est authentifié
    if (currentUserUid == null) {
      print('Utilisateur non authentifié.');
      return false;
    }

    // Comparer l'UID actuel à la valeur passée en paramètre
    final isEqual = currentUserUid == compareValue;

    // Retourner le résultat de la comparaison
    return isEqual;
  } catch (e) {
    // Gérer les erreurs
    print('Erreur lors de la vérification de l\'UID: $e');
    return false;
  }
}
