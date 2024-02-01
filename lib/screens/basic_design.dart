
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
     
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),

          Title(),

          ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Sunt laborum deserunt ullamco laboris laboris amet tempor elit duis. Quis deserunt deserunt laborum irure elit. In eiusmod non non adipisicing ullamco.Nisi ex duis in minim. Proident laborum anim do ullamco in. Pariatur minim enim cillum aliqua anim fugiat enim exercitation. Ex cupidatat sit nisi irure nulla qui sit veniam. Adipisicing duis adipisicing deserunt occaecat aliquip minim cupidatat excepteur anim elit ex. Excepteur commodo culpa id et excepteur minim proident deserunt do enim. Pariatur consequat sit tempor eiusmod duis esse consequat et laboris velit duis dolor sit.'))
        ],
      ),
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
       
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
          Text('Oeschinen Lake Campground',style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Kandersteg, Switzerland',style: TextStyle(color: Colors.black45)),
      
          ],
        ),
        Expanded(
          child: Container(),
        ),    
        // para poner la estrella
        Icon(Icons.star,color: Colors.red),
        Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         CustomButton(icon: Icons.call,text: 'Call'),
         CustomButton(icon: Icons.map_sharp,text: 'Route'),
         CustomButton(icon: Icons.share,text: 'Share'),
      
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    super.key,  
    required this.icon, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Icon(this.icon,color: Colors.blue,size:30,),
       Text(this.text,style: TextStyle(color: Colors.blue))
     ],
    );
  }
}