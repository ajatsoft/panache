import 'package:flutter/material.dart';
import 'package:flutterial_components/flutterial_components.dart';
import 'package:scoped_model/scoped_model.dart';

class FlutterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildThemeEditor(),
        AppPreviewContainer(kIPhone6),
      ],
    );
  }

  Widget _buildThemeEditor() =>
      ScopedModelDescendant<ThemeModel>(builder: (context, child, model) {
        return Expanded(child: ThemeEditor(model.theme));
      });
}