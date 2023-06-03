import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Ipsum minim elit proident non enim quis ullamco mollit velit excepteur labore aliquip cupidatat esse.'),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){},
                 child: const Text('Cancel')

                 ),

                 TextButton(onPressed: (){},
                 child: const Text('ok')


                 ),
                 
              ]

            ),
          )
        ],
      ),
    );
  }
}