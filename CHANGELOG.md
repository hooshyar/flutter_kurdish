# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2024-07-22

### 🎉 Initial Release as `flutter_kurdish`

This is a **fork and significant enhancement** of the original [`flutter_kurdish_localization`](https://pub.dev/packages/flutter_kurdish_localization) by [Amin Samad](https://github.com/aminsamad).

### 🔥 Critical Bug Fixes
- **MAJOR FIX**: Fixed critical `scrimLabel` crash in `showModalBottomSheet` and other modal dialogs
- **Complete implementation**: Fixed all 78+ `UnimplementedError` methods across all delegates
- **Modal support**: All modal dialogs, bottom sheets, and overlays now work correctly

### ✨ New Features
- **Complete keyboard support**: Added comprehensive Kurdish translations for 70+ keyboard keys
  - Basic keys: Alt, Ctrl, Shift, Space, Enter, Delete, Home, End, etc.
  - Numpad: All numbers (0-9) and operators (+, -, *, /, =, Enter, Decimal, etc.)
  - Function keys: Page Up/Down, Print Screen, Power, Channel controls
  - International keys: Hiragana, Katakana, Romaji, Hangul, Hanja, etc.
- **Enhanced accessibility**: Proper Kurdish semantic labels for all UI components
- **RTL improvements**: Better right-to-left text direction handling

### 🛠️ Improvements
- **Date format fixes**: Updated from US format (mm/dd/yyyy) to Kurdish conventions (dd/mm/yyyy)
- **Cupertino enhancements**: Fixed empty `clearButtonLabel` and improved semantic labels
- **Widget delegate**: Complete reorder item accessibility (up, down, left, right, start, end)
- **Documentation**: Corrected references from Norwegian (nn) to Kurdish (ku) locale
- **Package structure**: Renamed from `flutter_kurdish_localization` to `flutter_kurdish`

### 📱 UI Components Coverage
- **Material Design**: All buttons, dialogs, date pickers, navigation, forms, overlays
- **Cupertino**: iOS-style dialogs, pickers, navigation, forms, controls
- **Accessibility**: Screen reader support, keyboard navigation, semantic descriptions

### 🎯 Quality Assurance
- **Zero crashes**: No remaining `UnimplementedError` exceptions
- **Flutter analyzer**: Clean analysis with no issues
- **Validation**: Package validates successfully for publication
- **Complete translations**: All user-facing strings properly localized

### 🙏 Acknowledgments
- Original package: [`flutter_kurdish_localization`](https://pub.dev/packages/flutter_kurdish_localization) by [Amin Samad](https://github.com/aminsamad)
- Kurdish language community for feedback and validation
- Flutter team for the excellent internationalization framework

---

## Previous Versions (from original package)

### [1.1.2] - Original Package
- Fix Cupertino Localization
- Update example project

### [1.0.0] - Original Package
- Fix Cupertino Localization  
- Update example project

### [0.0.9] - Original Package
- Adding new words

### [0.0.8] - Original Package
- Change ckb to ku

### [0.0.7] - Original Package
- Updated to latest version 
- Fixing some problems

### [0.0.5] - Original Package
- Added Demo app and new example

### [0.0.4] - Original Package
- Add new words

### [0.0.3] - Original Package
- Correct grammatical errors

### [0.0.2] - Original Package
- Support null safety

### [0.0.1] - Original Package
- Initial release with basic Kurdish localization support