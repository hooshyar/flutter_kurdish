# Flutter Kurdish ☀️

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

A comprehensive Flutter package for **Central Kurdish (Sorani)** localization with complete RTL support and proper Kurdish cultural conventions.

## ✨ Features

- 🔥 **Complete localization** for Material, Cupertino, and Widget components
- 🌍 **RTL (Right-to-Left) text direction** support
- 📅 **Kurdish date formats** and cultural conventions
- ⌨️ **Full keyboard key translations** (70+ keys)
- 🎯 **Accessibility support** with proper semantic labels
- 🚫 **Zero crashes** - All `UnimplementedError` issues fixed
- 📱 **Modal dialogs support** (showModalBottomSheet, etc.)

## 📋 About This Package

This package is a **fork and significant enhancement** of the original [`flutter_kurdish_localization`](https://pub.dev/packages/flutter_kurdish_localization) by [Amin Samad](https://github.com/aminsamad). 

### What's New in This Fork:
- ✅ **Fixed critical crashes** in modal dialogs and bottom sheets
- ✅ **Complete implementation** of all missing translations (78+ methods)
- ✅ **Enhanced accessibility** with proper Kurdish semantic labels
- ✅ **Improved date/time formatting** for Kurdish locale with correct weekend (Friday-Saturday)
- ✅ **Standardized terminology** across Material, Cupertino, and Widget delegates
- ✅ **Comprehensive keyboard support** for all key types
- ✅ **Better documentation** and enhanced example app with Cupertino widgets
- ✅ **Cultural accuracy** with proper Kurdish month names and RTL support

## 🚀 Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_kurdish:
    git:
      url: https://github.com/hooshyar/flutter_kurdish.git
  flutter_localizations:
    sdk: flutter
```

Then run:

```bash
flutter pub get
```

## 📖 Usage

### Basic Setup

Import the package and add the Kurdish localization delegates to your `MaterialApp`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_kurdish/flutter_kurdish.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurdish Localization Demo',
      
      // Add Kurdish localization delegates
      localizationsDelegates: [
        // Kurdish delegates
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        KurdishCupertinoLocalizations.delegate,
        
        // Flutter's built-in delegates
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      // Support Kurdish locale
      supportedLocales: [
        Locale('en'), // English
        Locale('ku'), // Kurdish
      ],
      
      // Set Kurdish as default locale
      locale: Locale('ku'),
      
      home: MyHomePage(),
    );
  }
}
```

### With Cupertino App

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_kurdish/flutter_kurdish.dart';

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      localizationsDelegates: [
        KurdishCupertinoLocalizations.delegate,
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ku'),
        Locale('en'),
      ],
      locale: Locale('ku'),
      home: MyHomePage(),
    );
  }
}
```

### Advanced Usage with Locale Switching

```dart
class LocalizedApp extends StatefulWidget {
  @override
  _LocalizedAppState createState() => _LocalizedAppState();
}

class _LocalizedAppState extends State<LocalizedApp> {
  Locale _currentLocale = Locale('ku');

  void _changeLocale(String languageCode) {
    setState(() {
      _currentLocale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        KurdishCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ku', ''), // Kurdish
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
      ],
      locale: _currentLocale,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kurdish Localization'),
          actions: [
            PopupMenuButton<String>(
              onSelected: _changeLocale,
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(value: 'ku', child: Text('کوردی')),
                PopupMenuItem(value: 'en', child: Text('English')),
                PopupMenuItem(value: 'ar', child: Text('العربية')),
              ],
            ),
          ],
        ),
        body: YourContent(),
      ),
    );
  }
}
```

## 🎯 Supported Components

### Material Design Components
- ✅ All Material buttons and dialogs
- ✅ Date and time pickers with Kurdish formatting
- ✅ Snackbars, tooltips, and overlays
- ✅ Navigation components (AppBar, Drawer, BottomSheet)
- ✅ Form elements with Kurdish labels
- ✅ Data tables and selection controls

### Cupertino (iOS-style) Components
- ✅ Cupertino dialogs and action sheets
- ✅ Date and time pickers
- ✅ Navigation bars and tab bars
- ✅ Form elements and text fields
- ✅ Activity indicators and sliders

### Accessibility Features
- ✅ Screen reader support with Kurdish labels
- ✅ Semantic descriptions for all UI elements
- ✅ Keyboard navigation hints
- ✅ Proper RTL text direction handling

## 🗓️ Date and Time Formatting

The package includes proper Kurdish date and time formatting:

- **Date Format**: `dd/mm/yyyy` (Kurdish convention)
- **Time Format**: 12-hour with Kurdish AM/PM (`پ.ن` / `د.ن`)
- **Calendar**: Gregorian calendar with Kurdish month names
- **Weekend**: Thursday-Friday (common in Kurdish regions)
- **First Day of Week**: Friday

### Kurdish Month Names
- کانونی دووەم (January)
- شوبات (February)  
- ئازار (March)
- نیسان (April)
- مایس (May)
- حوزەیران (June)
- تەمموز (July)
- ئاب (August)
- ئەیلوول (September)
- تشرینی یەکەم (October)
- تشرینی دووەم (November)
- کانونی یەکەم (December)

## ⌨️ Keyboard Support

Complete keyboard key translations including:

- **Basic Keys**: Alt, Ctrl, Shift, Space, Enter, Delete, etc.
- **Numpad**: All numbers (0-9) and operators (+, -, *, /, =)
- **Function Keys**: Home, End, Page Up/Down, Print Screen
- **Navigation**: Arrow keys with proper RTL orientation
- **International**: Support for various keyboard layouts

## 🐛 Bug Fixes from Original Package

This fork addresses several critical issues:

1. **🔥 Fixed `scrimLabel` crash** - Modal dialogs now work properly
2. **✅ Completed 78+ missing translations** - No more `UnimplementedError`s
3. **📅 Fixed date formats** - Proper Kurdish date conventions
4. **🎯 Enhanced accessibility** - Better semantic labels
5. **⌨️ Added keyboard support** - Complete key translations
6. **📱 Modal support** - `showModalBottomSheet` and dialogs work correctly

## 🤝 Contributing

Contributions are welcome! If you find any issues or want to add new features:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Areas for Contribution
- Additional Kurdish dialects support
- More cultural date/time formats
- Enhanced accessibility features
- Better RTL layout support
- Performance optimizations

## 📄 License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Original Author**: [Amin Samad](https://github.com/aminsamad) for the original [`flutter_kurdish_localization`](https://pub.dev/packages/flutter_kurdish_localization) package
- **Kurdish Language Community** for feedback and translations
- **Flutter Team** for the excellent internationalization framework

## 📞 Support

- 🐛 **Issues**: [GitHub Issues](https://github.com/hooshyar/flutter_kurdish/issues)
- 💬 **Discussions**: [GitHub Discussions](https://github.com/hooshyar/flutter_kurdish/discussions)
- 📧 **Email**: For private inquiries

## 📊 Stats

- **Languages**: Kurdish (Central/Sorani), with RTL support
- **Components**: 100+ UI components with complete translations
- **Accessibility**: Full screen reader and keyboard navigation support
- **Platform Support**: iOS, Android, Web, Desktop
- **Flutter Version**: Compatible with Flutter 3.0+

---

**Made with ❤️ for the Kurdish community**

*بۆ کۆمەڵگای کوردی دروستکراوە* ☀️