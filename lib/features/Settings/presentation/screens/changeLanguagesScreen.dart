import 'package:app_template/app/injection_container.dart';
import 'package:app_template/core/services/local_storage.dart';
import 'package:app_template/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:app_template/features/Settings/presentation/bloc/changeLanguages/language_bloc.dart';
import 'package:go_router/go_router.dart';

class ChangeLanguagesScreen extends StatefulWidget {
  const ChangeLanguagesScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLanguagesScreen> createState() => _ChangeLanguagesScreenState();
}

class _ChangeLanguagesScreenState extends State<ChangeLanguagesScreen> {
  String? _selectedLang;

  @override
  void initState() {
    super.initState();
    // Request the available languages from the bloc
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ChangeLanguageBloc>().add(
        ChangeLanguageEvent.GetAllLanguagesEvent(),
      );
    });
  }

  String _languageLabel(String code) {
    switch (code) {
      case 'ar':
        return 'العربية';
      case 'en':
      default:
        return 'English';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangeLanguageBloc, LanguageChangedState>(
      listenWhen: (previous, current) =>
          previous.selected_language != current.selected_language,
      listener: (context, state) async {
        final savedLang = di<AppLocalStorage>().getAppLanguage();
        if (savedLang == state.selected_language) {
          await di.reset();
          await initAppDI();
          context.go('/');
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<ChangeLanguageBloc, LanguageChangedState>(
            builder: (context, state) {
              final languages = state.language_list;
              final current = state.selected_language;
              var key = UniqueKey();
              if (current != _selectedLang) {
                key = UniqueKey();
              }
              _selectedLang = current;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.select_language.tr(),
                    key: key,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    initialValue: _selectedLang,
                    items: languages
                        .map(
                          (code) => DropdownMenuItem<String>(
                            value: code,
                            child: Text(_languageLabel(code)),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() => _selectedLang = value);
                      context.read<ChangeLanguageBloc>().add(
                        ChangeLanguageEvent.AppLanguageChangedEvent(value),
                      );
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
