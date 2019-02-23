import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
class AppHeader extends StatelessWidget {
  final Function setState;
  Color _primaryColor;

  AppHeader(this.setState, this._primaryColor);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.color_lens),
      tooltip: 'Change Color',
      onPressed: () {
        Color pickerColor = _primaryColor;
        changeColor(var color) {
          setState(color);
        }
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertCreator(changeColor,pickerColor);
            });
      },
    );
  }
}

class AlertCreator extends StatelessWidget{
  final Function changeColor;
  final Color pickerColor;
  AlertCreator(this.changeColor,this.pickerColor);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      title: const Text('Pick a color!'),
      content: SingleChildScrollView(
        child: MaterialColorPicker(
          onMainColorChange: (var color) {
            changeColor(color);
          },
          onColorChange: (var color) {
            changeColor(color);
          },
          selectedColor: pickerColor,
          colors: Colors.primaries,
        )
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('Got it'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
