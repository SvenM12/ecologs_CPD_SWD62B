import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class LogFormScreen extends StatefulWidget {
  const LogFormScreen({super.key});

  @override
  State<LogFormScreen> createState() => _LogFormScreenState();
}

class _LogFormScreenState extends State<LogFormScreen>
{
  final _formKey = GlobalKey<FormState>();
  String _caption = "";
  String _description = "";
  final ImagePicker _picker = ImagePicker();
  File? _image;


@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.lightGreen,
    appBar: AppBar(title: const Text('Eco Log Form'),
    backgroundColor: Colors.lightGreen,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Form(
            key: _formKey,
            child: Column(
              children: [
                _image == null ?
                ElevatedButton(onPressed: (){}, child: const Text('Take Photo'))
                : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.file(_image!, height: 250, width: 250),
                    ElevatedButton(onPressed: (){}, child: const Text('Retake Photo'))
                  ],
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: ("Insert caption")),
                  onSaved: (val) => _caption == val ?? '',
                  validator: (val) => val == null || val.isEmpty ? "Enter a caption" : null,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: ("Insert description of the activity")),
                  onSaved: (val) => _description == val ?? '',
                  validator: (val) => val == null || val.isEmpty ? "Enter a caption" : null,
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: (){}, child: const Text('Submit Log'))
              ],
            ),            
            )
        ],
      ),),
  );
}

}