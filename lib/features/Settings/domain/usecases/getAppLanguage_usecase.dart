import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';

class GetAppLanguageUseCase {
  final LanguageRepository repository;

  GetAppLanguageUseCase(this.repository);

  Future<String?> execute() async {
    return await repository.getAppLanguage();
  }
}