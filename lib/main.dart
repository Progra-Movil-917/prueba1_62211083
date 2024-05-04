import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Change Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorChangeWidget(),
    );
  }
}

class ColorChangeWidget extends StatefulWidget {
  const ColorChangeWidget({Key? key}) : super(key: key);

  @override
  _ColorChangeWidgetState createState() => _ColorChangeWidgetState();
}

class _ColorChangeWidgetState extends State<ColorChangeWidget> {
  // Almacena el color
  Color _currentColor = Colors.blue;

  List<Color> _colorOptions = [Colors.blue, Colors.red];
  int _colorIndex = 0;

  //Metodo del cambio de color
  void _changeColor() {
    setState(() {
      _currentColor = _colorOptions[_colorIndex];
      _colorIndex = (_colorIndex + 1) % _colorOptions.length;
    });
  }

//llamando al metodo de cambiar color en el contenedor
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Color'),
      ),
      body: GestureDetector(
        onTap: _changeColor,
        child: Container(
          width: 200,
          height: 200,
          color: _currentColor,
        ),
      ),
    );
  }
}
