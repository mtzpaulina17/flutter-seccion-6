import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SilderScreen extends StatefulWidget {
   
  const SilderScreen({Key? key}) : super(key: key);

  @override
  State<SilderScreen> createState() => _SilderScreenState();
}

class _SilderScreenState extends State<SilderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Silders and checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnable ? ( value ) {
               _sliderValue = value;
               setState(() {
                 
               } );
            }
            : null
          ),

          Checkbox(
            value: _sliderEnable, 
            onChanged: ( value ) {
              _sliderEnable = value ?? true;
              setState(() {
                
              });
            }
          ),
          

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('habilitar slider'),
            value: _sliderEnable,
            onChanged: ( value ) => setState(() { _sliderEnable = value ?? true;})
          ),


          Switch(
            value: _sliderEnable, 
            onChanged: ( value ) => setState(() {
             _sliderEnable = value; 
            })
          ),

          SwitchListTile.adaptive(
            title:  const Text('Habilitar slinder '),
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: ( value ) => setState(() {
              _sliderEnable = value ?? true;
            })
          ),

          const AboutListTile(),

          SingleChildScrollView(
            child: Image(
                image: const NetworkImage('https://www.aboutespanol.com/thmb/I3eRj6snF-BYCb4HeJe7d2QrDws=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/jenni-rivera-grijalbo2-56a5a5363df78cf772893dca.JPG'),
                fit: BoxFit.contain,
                width: _sliderValue,
            ),
            
          ),
        ]
        )
      )
    );
  }
}