import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context ){
    
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text('este es el contenido de la alerta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100)
          ]
          ),
          actions: [
            TextButton(
             onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar')
            ),
            TextButton(
             onPressed: () => Navigator.pop(context),
              child: const Text('Ok')
            )
          ],
        );
      }
    );

  }



  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: ( context ) {

        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text('este es el contenido de la alerta'),
              SizedBox( height: 10),
              FlutterLogo( size: 100)
            ],
          ),
          actions: [
            TextButton(
             onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar')
            )
          ],
        );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Mostrar alerta', style: TextStyle( fontSize: 20),),
          ),
          //onPressed: () => displayDialogAndroid( context )
          onPressed: () => !Platform.isAndroid ? displayDialogAndroid( context ) : displayDialogIOS( context )
         )
      ),
      floatingActionButton: FloatingActionButton(
        
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}