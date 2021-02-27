import 'package:flutter/material.dart';
import 'package:flutter_app_aula2_banco/firebase/model/car.dart';
import 'package:flutter_app_aula2_banco/nosql/model/book.dart';

class AddCar extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _brandController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Carro"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Nome",
                      labelText: "Nome"
                  ),
                  controller: _nameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Insira o nome do carro';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Marca",
                      labelText: "Marca"
                  ),
                  controller: _brandController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Insira o autor da marca';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Car car = Car(
                            _nameController.text,
                            _brandController.text
                        );
                        Navigator.pop(context, car);
                      }
                    },
                    child: Text('Salvar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}