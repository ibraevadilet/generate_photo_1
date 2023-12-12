part of 'auth_with_social_cubit.dart';

@freezed
class AuthWithSocialState with _$AuthWithSocialState {
  const factory AuthWithSocialState.initial() = _Initial;
  const factory AuthWithSocialState.googleLoading() = _GoogleLoading;
  const factory AuthWithSocialState.error() = _Error;
  const factory AuthWithSocialState.success() = _Success;

  const AuthWithSocialState._();

  bool get googleLoading => maybeWhen(
        orElse: () => false,
        googleLoading: () => true,
      );
}
