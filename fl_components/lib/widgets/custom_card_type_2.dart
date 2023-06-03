import 'package:flutter/material.dart';


class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String name;
  
  const CustomCardType2({
    super.key, required this.imageUrl, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
        ),
      elevation: 30,
      shadowColor: Colors.green,
      child: Column(
        
        children: [

         FadeInImage(
            image: NetworkImage( imageUrl ),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),


        // ignore: unnecessary_null_comparison
        if ( name != null)
          Container (
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom:5),
            child: Text( name ),
        )
        ]
      )
    ); 
  }
}