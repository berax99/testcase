part of 'auth_bloc_cubit.dart';

abstract class AuthBlocState extends Equatable {
  const AuthBlocState();

  @override
    List<Object> get props => [];
}

class AuthBlocInitialState extends AuthBlocState {
  const AuthBlocInitialState();
}

class AuthBlocLoadingState extends AuthBlocState {

}

class AuthBlocLoggedInState extends AuthBlocState {
  final User user;

  const AuthBlocLoggedInState({this.user});

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'LoggedIn { user: $user.username.toString() }';

}

class AuthBlocLoginState extends AuthBlocState {

}

class AuthBlocSuccesState extends AuthBlocState {

}

class AuthBlocLoadedState extends AuthBlocState {
    final data;

    AuthBlocLoadedState(this.data);

    @override
    List<Object> get props => [data];
}

class AuthBlocErrorState extends AuthBlocState {
    final error;

    AuthBlocErrorState(this.error);

    @override
    List<Object> get props => [error];
}
