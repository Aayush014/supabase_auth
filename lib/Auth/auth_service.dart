import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  // Updated to use signInWithPassword method properly
  Future<void> signIn(String email, String password) async {
    final response = await _supabaseClient.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signUp(String email, String password) async {
    final response = await _supabaseClient.auth.signUp(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _supabaseClient.auth.signOut();
  }

  Stream<AuthState> get authStateChanges =>
      _supabaseClient.auth.onAuthStateChange;
}
