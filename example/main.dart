import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_kurdish/flutter_kurdish.dart';

void main() {
  runApp(KurdishLocalizationDemo());
}

class KurdishLocalizationDemo extends StatefulWidget {
  @override
  _KurdishLocalizationDemoState createState() => _KurdishLocalizationDemoState();
}

class _KurdishLocalizationDemoState extends State<KurdishLocalizationDemo> {
  Locale _currentLocale = Locale('ku');

  void _changeLocale(String languageCode) {
    setState(() {
      _currentLocale = Locale(languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Kurdish Localization Demo',
      
      // Kurdish localization delegates
      localizationsDelegates: [
        // Kurdish delegates - the star of the show!
        KurdishMaterialLocalizations.delegate,
        KurdishWidgetLocalizations.delegate,
        KurdishCupertinoLocalizations.delegate,
        
        // Flutter's built-in delegates
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      // Supported locales
      supportedLocales: [
        Locale('ku'), // Kurdish (Central/Sorani)
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      
      // Current locale
      locale: _currentLocale,
      
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Arial', // You can use Kurdish fonts here
      ),
      
      home: DemoHomePage(onLocaleChange: _changeLocale),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  final Function(String) onLocaleChange;
  
  const DemoHomePage({Key? key, required this.onLocaleChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kurdish Localization Demo'),
        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.language),
            onSelected: onLocaleChange,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: 'ku',
                child: Row(
                  children: [
                    Text('🇰🇷'),
                    SizedBox(width: 8),
                    Text('کوردی'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'en',
                child: Row(
                  children: [
                    Text('🇺🇸'),
                    SizedBox(width: 8),
                    Text('English'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'ar',
                child: Row(
                  children: [
                    Text('🇸🇦'),
                    SizedBox(width: 8),
                    Text('العربية'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter Kurdish',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'بۆ کۆمەڵگای کوردی',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Welcome Card
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Icon(Icons.language, size: 48, color: Colors.green),
                    SizedBox(height: 16),
                    Text(
                      'Welcome to Kurdish Localization',
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This demo showcases the Kurdish localization package with complete RTL support and proper Kurdish cultural conventions.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            
            SizedBox(height: 20),
            
            // Buttons Demo
            Text(
              'Button Examples',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () => _showSnackBar(context),
                  child: Text('Show SnackBar'),
                ),
                OutlinedButton(
                  onPressed: () => _showDialog(context),
                  child: Text('Show Dialog'),
                ),
                TextButton(
                  onPressed: () => _showBottomSheet(context),
                  child: Text('Show Bottom Sheet'),
                ),
              ],
            ),
            
            SizedBox(height: 20),
            
            // Date Picker Demo
            Text(
              'Date & Time Examples',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.calendar_today),
                    label: Text('Pick Date'),
                    onPressed: () => _showDatePicker(context),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.access_time),
                    label: Text('Pick Time'),
                    onPressed: () => _showTimePicker(context),
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20),
            
            // Form Demo
            Text(
              'Form Examples',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 10),
            
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 20),
            
            // Kurdish Text Examples
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kurdish Text Examples',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'سڵاو، ئەمە نموونەیەکی کوردییە بۆ پاکێجی فلاتەر کوردی.',
                      style: TextStyle(fontSize: 16),
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'ئەم پاکێجە پشتگیری تەواوی زمانی کوردی دەکات.',
                      style: TextStyle(fontSize: 14),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showBottomSheet(context),
        tooltip: 'Show Bottom Sheet',
        child: Icon(Icons.add),
      ),
    );
  }
  
  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('This is a SnackBar with Kurdish localization!'),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {},
        ),
      ),
    );
  }
  
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Kurdish Dialog'),
          content: Text('This dialog demonstrates Kurdish localization in action. All buttons and labels are properly translated.'),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
  
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Modal Bottom Sheet',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 16),
              Text(
                'This bottom sheet demonstrates the fixed scrimLabel issue. Previously, this would crash with UnimplementedError.',
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  ElevatedButton(
                    child: Text('Done'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
  
  void _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    
    if (picked != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected date: ${picked.day}/${picked.month}/${picked.year}')),
      );
    }
  }
  
  void _showTimePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    
    if (picked != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Selected time: ${picked.format(context)}')),
      );
    }
  }
}