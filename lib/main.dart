import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  List photo = [
    'myimg/benz.jpg',
    'myimg/bmw.jpg',
    'myimg/bugatti.jpg',
    'myimg/ferrari.jpg',
    'myimg/fort.jpg',
    'myimg/rolls.jpg',
    'myimg/tesla.jpg',
    'myimg/toyota.png',
    'myimg/volks.jpg',
    'myimg/xuv700.jpg'
  ];
  List name = [
    'Mercedes Benz',
    'BMW',
    'Bugatti Veron',
    'Ferrari',
    'Fortuner',
    'Rolls Royce',
    'Tesla',
    'Toyota',
    'VolksWagen',
    'XUV 700'
  ];
  List country = [
    'Germany',
    'Germany',
    'France',
    'Italy',
    'India',
    'England',
    'America',
    'Japan',
    'Germany',
    'India',
  ];
  List price = [
    '₹ 42 lakh',
    '₹ 41 lakh',
    '₹ 11.39 crore',
    '₹ 7.50 crore',
    '₹ 32.40 lakh',
    '₹ 9.50 crore',
    '₹ 2 crore',
    '₹ 9 lakh',
    '₹ 32 lakh',
    '₹ 20 lakh'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car List'),
      ),
      body: ListView.builder(itemCount: photo.length,itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            photo[index],
            fit: BoxFit.fill,
          ),
          title: Text(
            name[index],
            style:
                GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black)),
          ),
          subtitle: Text(country[index],
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.black))),
          trailing: Text(price[index],
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.black))),
        );
      }),
    );
  }
}
