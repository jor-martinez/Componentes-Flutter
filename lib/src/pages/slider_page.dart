import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _valorCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10.0, 
      max: 400.0,
      onChanged: (_valorCheckBox) ? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://1.bp.blogspot.com/-HpZwQn1viFs/Wo3ZkE6Q8lI/AAAAAAAA5f4/r4bjhGpXDxs-jV4ljxTShrbmd3Q5p2kEACLcBGAs/s1600/145003.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox(){
    // return Checkbox(
    //   value: _valorCheckBox,
    //   onChanged:  (check){
    //     setState(() {
    //       _valorCheckBox = check;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _valorCheckBox,
      onChanged: (check){
        setState(() {
          _valorCheckBox = check;
        });
      },
    );

  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _valorCheckBox,
      onChanged: (check){
        setState(() {
          _valorCheckBox = check;
        });
      },
    );
  }
}