import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key, this.name}) : super(key: key);
  final String? name;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal:  20, vertical: 10),
        children: const [

            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2( imageUrl: 'https://img.freepik.com/foto-gratis/paisaje-niebla-matutina-montanas-globos-aerostaticos-al-amanecer_335224-794.jpg?w=2000', name: 'paisaje',),
            SizedBox( height: 10),
            CustomCardType2(imageUrl: 'https://img.freepik.com/foto-gratis/paisaje-niebla-matutina-montanas-globos-aerostaticos-al-amanecer_335224-794.jpg?w=2000', name: 'segundo paisaje',),
            SizedBox( height: 10),
            CustomCardType2(imageUrl: 'https://img.freepik.com/foto-gratis/paisaje-niebla-matutina-montanas-globos-aerostaticos-al-amanecer_335224-794.jpg?w=2000', name: 'tercer paisaje',),
            SizedBox( height: 10),

        ],
      )
    );
  }
}

