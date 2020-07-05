import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_adoption/src/models/pet_model.dart';
import 'package:provider/provider.dart';

class PetTypeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: _CategoriesList(),
    );
  }
}

class _CategoriesList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return _CategorieBox(index);
      },
    );
  }
}

class _CategorieBox extends StatelessWidget {

  final int index;

  const _CategorieBox(this.index);

  @override
  Widget build(BuildContext context) {

    final petModel = Provider.of<PetModel>(context);
    
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            final petModel = Provider.of<PetModel>(context, listen: false);
            petModel.typePet = categories[this.index]['name'];
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 30),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: (categories[this.index]['name'] == petModel.typePet) ? Color(0xff416D6C) : Colors.white,
              borderRadius: BorderRadiusDirectional.circular(20.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 30.0,
                  offset: Offset(0, 10)
                )
              ]
            ),
            child: FaIcon(
              categories[this.index]['icon'],
              size: 40,
              color: (categories[this.index]['name'] == petModel.typePet) ? Colors.white : Colors.grey
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          children: <Widget>[
            SizedBox(width: 25),
            Text(
              '${categories[this.index]['name']}',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.bold
              )
            )
          ]
        )
      ],
    );
  }
}

List<Map> categories = [
  {'name': 'Dogs', 'icon' : FontAwesomeIcons.dog},
  {'name': 'Cats', 'icon' : FontAwesomeIcons.cat},
  {'name': 'Fishes', 'icon' : FontAwesomeIcons.fish},
  {'name': 'Birds', 'icon' : FontAwesomeIcons.kiwiBird},
  {'name': 'Frogs', 'icon' : FontAwesomeIcons.frog},
];

