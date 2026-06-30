import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soldnet/app/app.dart';

void main() => runApp(ProviderScope(child: const App()));

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.06.28 | Add sounds to the app.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// 2026.06.29 | 1. Home sections: find at least 6 sections (create).
//            | 2. Profile: minimal profile.
//     =D     | 3. Chat: textChat, audioCall, videoCall, groups.
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
