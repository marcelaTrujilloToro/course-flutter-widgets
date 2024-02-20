import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// StateProvider : para mantener alguna pieza de estado
final isDarkModeProvider = StateProvider((ref) => true);

//Listado de colores inmutable
//Provider: para valores inmutables
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

// un objeto de tipo AppTheme (custom)

//StateNotifierProvider: cuando el estado es un objeto mas elavorado
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = nueva instancia del appTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
