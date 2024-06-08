import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buttons',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo buttons'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String buttonPulse = 'Ninguno';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         title: Text(widget.title),
         backgroundColor: Colors.blue,
       ),

      body: Center(
        child: Column(
          children: [
            const Text('El boton pulsado es:'),
            Text(buttonPulse),
            const Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(
                onPressed: _elevatedButton,
                child: const Text('Elevated button')
            ),

            const Padding(padding: EdgeInsets.all(5)),
            TextButton(
                onPressed: _textButton,
                child: const Text('Text button')
            ),

            const Padding(padding: EdgeInsets.all(5)),
            IconButton(
                onPressed: _iconButton,
                icon: const Icon(Icons.settings)
            ),

            const Padding(padding: EdgeInsets.all(5)),
            Ink(
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: Colors.cyan,
              ),
              child: IconButton(
                onPressed: _iconButton,
                icon: const Icon(Icons.settings),
              ),
            ),

            const Padding(padding: EdgeInsets.all(5)),
            OutlinedButton(
                onPressed: _outlineButton,
                child: const Text('Outline'),
            ),

            const Padding(padding: EdgeInsets.all(5)),
            CupertinoButton(
                onPressed: _cupertinoButton,
                child: const Text('Cupertino')
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _floatingButton,
        tooltip: 'Presiona',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _floatingButton(){
    _whatButton('flo');
  }

  void _elevatedButton(){
    _whatButton('elevated');
  }

  void _textButton(){
    _whatButton('text');
  }

  void _iconButton(){
    _whatButton('icon');
  }

  void _outlineButton(){
    _whatButton('outline');
  }

  void _cupertinoButton(){
    _whatButton('cupertino');
  }

  void _whatButton(String button){
    setState(() {
      switch(button){
        case 'flo':
          buttonPulse = 'Floating action button';
          break;
        case 'elevated':
          buttonPulse = 'Elevated button';
          break;
        case 'text':
          buttonPulse = 'Text button';
          break;
        case 'icon':
          buttonPulse = 'Icon button';
          break;
        case 'outline':
          buttonPulse = 'Outline button';
          break;
        case 'cupertino':
          buttonPulse = 'Cupertino button';
          break;
      }
    });
  }
}
