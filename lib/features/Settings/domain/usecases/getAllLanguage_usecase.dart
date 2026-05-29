import 'package:app_template/features/Settings/domain/repositories/language_repositories.dart';

class GetAllLanguageUseCase {
  final LanguageRepository repository;
  GetAllLanguageUseCase(this.repository);
  Future<List<String>> execute() async {
    return await repository.getAllLanguages();  
  }
}