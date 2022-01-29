
import 'package:flutter/material.dart';
import 'page2.dart';
import 'classes/functions.dart';


class FoodApp2 extends StatelessWidget {
  const FoodApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                      image: AssetImage('assets/intro.jpg'),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Text(
                    'Hola!\n'
                    'Emad HB',
                    style: TextStyle(height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 50),
                  ),
                  SizedBox(height: doubleHeight(3),),
                  const Text(
                    'Best restaurants, offering\n'
                    'discounts on food & drinks.',
                    style: TextStyle(height: 1,
                        color: Colors.white,
//                      fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(height: doubleHeight(2),),
                  RawMaterialButton(
                    onPressed: () {
                      Go.pushSlideRightAnim(context, Page2());
                      statusSet(
                          statusBar: Colors.white, statusBarIconIsWhite: false);
                    },
                    fillColor: const Color.fromRGBO(228, 40, 61, 1),
//                    fillColor: Colors.deepOrange,
                    splashColor: Colors.deepOrange,
                    shape: const StadiumBorder(),
                    elevation: 0,
                    child: Padding(
                      padding:
                      const EdgeInsets.only(right: 10, top: 10, bottom: 10, left: 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Let\' Go',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}



