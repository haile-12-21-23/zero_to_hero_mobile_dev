import 'package:flutter_riverpod/legacy.dart';

enum AuthStatus {
  initial,
  loading,
  registered,
  loggedIn,
  loggedInFailure,
  registerFailure,
}

class AuthState {
  final AuthStatus status;
  final Map<String, dynamic>? userData;
  final String? errorMessage;

  AuthState({
    this.status = AuthStatus.initial,
    this.userData,
    this.errorMessage,
  });
  AuthState copyWith({
    AuthStatus? status,
    Map<String, dynamic>? userData,
    String? errorMessage,
  }) {
    return AuthState(
      status: status ?? this.status,
      userData: userData ?? this.userData,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider() : super(AuthState());

  void register(Map<String, dynamic> request) {
    state = state.copyWith(status: AuthStatus.loading);

    if (request.isEmpty) {
      state = state.copyWith(
        userData: null,
        errorMessage: "Something went wrong.",
        status: AuthStatus.registerFailure,
      );
      return;
    }

    state = state.copyWith(
      userData: request,
      status: AuthStatus.registered,
      errorMessage: null,
    );
  }

  void login(Map<String, dynamic> request) {
    state = state.copyWith(status: AuthStatus.loading);

    final user = state.userData;

    if (request.isEmpty || user == null) {
      state = state.copyWith(
        status: AuthStatus.loggedInFailure,
        errorMessage: "No registered user found.",
      );
      return;
    }

    if (request['email'] != user['email'] ||
        request['password'] != user['password']) {
      state = state.copyWith(
        status: AuthStatus.loggedInFailure,
        errorMessage: "Wrong credentials.",
      );
      return;
    }

    state = state.copyWith(status: AuthStatus.loggedIn, errorMessage: null);
  }

  void me() {
    final user = state.userData;

    if (user == null || user.isEmpty) {
      state = state.copyWith(
        status: AuthStatus.loggedInFailure,
        errorMessage: "User not found.",
      );
      return;
    }

    state = state.copyWith(
      status: AuthStatus.loggedIn,
      errorMessage: null,
      userData: user,
    );
  }
}

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  return AuthProvider();
});
