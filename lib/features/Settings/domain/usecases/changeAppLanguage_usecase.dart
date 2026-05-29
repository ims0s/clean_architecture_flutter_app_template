import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';

class ChangeAppLanguageUseCase {
  final LanguageRepository _repository;

  ChangeAppLanguageUseCase(this._repository);

  Future<void> execute(String langCode) async {
    return await _repository.changeAppLanguage(langCode);
  }
}