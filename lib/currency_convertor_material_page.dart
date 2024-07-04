import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
  _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState extends State<CurrencyConvertorMaterialPage>{

  final TextEditingController tec = TextEditingController();
    double result = 0; 

  @override
  void dispose() {
    tec.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyan,
        title: const Text("CURRENCY CONVERTOR APP",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('INR ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 55,
                color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tec ,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    hintText: "please enter the amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    result = double.parse(tec.text)*81;
                    setState(() {
                    });
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity, 60)),
                  ),  
                 child: const Text("Click",style: TextStyle(fontSize: 20),)
                 ),
              ),
            ],
          ),
        ),
      );
  }

}

  