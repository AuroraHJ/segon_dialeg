import 'package:flutter/material.dart';

void main() => runApp(const alertdialog());

// ignore: camel_case_types
class alertdialog extends StatelessWidget {
  const alertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recuperar el valor d''un camp de text',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm>{
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar el valor d\'un camp de text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(        
        backgroundColor: Colors.pinkAccent,
        hoverColor: Colors.pink,
        onPressed: () {
          showDialog(
            context: context, 
            builder: (BuildContext context){
              return AlertDialog(
                title: const Text('Alert Dialog'),
                content: const Text('Avís: No fer clic en el botó.'),
                actions: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  )
                ],
              );
            },
          );
        },
        tooltip: 'Mostra el valor!',
        child: const Text('Veure'),
      ),
    );
  }
}