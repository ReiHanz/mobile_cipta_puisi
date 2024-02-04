part of "../authentication.dart";

final isRemeberMeProvider = StateProvider.autoDispose<bool>((ref) => false);
final isObsecureProvider = StateProvider<bool>((ref) => true);
