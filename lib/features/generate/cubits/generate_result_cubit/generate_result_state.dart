part of 'generate_result_cubit.dart';

@freezed
class GenerateResultState with _$GenerateResultState {
  const factory GenerateResultState.initial() = _Initial;
  const factory GenerateResultState.loding() = _Loding;
  const factory GenerateResultState.error() = _Error;
  const factory GenerateResultState.success() = _Success;

  const GenerateResultState._();

  bool get loding => maybeWhen(
        orElse: () => false,
        loding: () => true,
      );
}
