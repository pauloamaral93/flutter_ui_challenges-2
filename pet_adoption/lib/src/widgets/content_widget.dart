import 'package:flutter/material.dart';

import 'package:pet_adoption/src/widgets/custom_widgets.dart';

class CustomContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF6F6F6),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))
        ),
        child: Column(
          children: <Widget>[
            InputSearch(),
            PetTypeList(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    PetCard(
                      image: 'assets/img/dog-1.png',
                      name: 'Zeta',
                      raza: 'Jack Russell',
                      yearsOld: 2,
                    ),
                    PetCard(
                      image: 'assets/img/dog-2.png',
                      name: 'Nombre',
                      raza: 'Raza',
                      yearsOld: 20,
                    ),
                    PetCard(
                      image: 'assets/img/dog-3.png',
                      name: 'Nombre',
                      raza: 'Golden Retriever',
                      yearsOld: 1,
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}