import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }
    return Scaffold(
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
           Center(
             child: TextButton(
               onPressed: () { },
               child: Text('TextButton'),
             ),
           ),
           TextButton(
             style: ButtonStyle(

               //this is used to control splash of the button
              splashFactory: NoSplash.splashFactory,
               // this is used to give the padding im the button
               padding:MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(10)) ,
               //this is used to give button text color
               foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
               //this is used to give button background color
               backgroundColor: MaterialStateProperty.all<Color>(Colors.black87),
               //this is used to give color when we click on the button
               overlayColor: MaterialStateProperty.all<Color>(Colors.yellow),
               //this is used to give the elevation to button
               elevation: MaterialStateProperty.all<double>(5),
               //this is used to give the shadow color to elevation property
               shadowColor: MaterialStateProperty.all<Color>(Colors.blue),
               // this is used to give the border to button
                side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.purple)),
               // this is used to provide the border radius to the button
               shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)),

               )





             ),
             onPressed: () { },
             child: Text('TextButton'),
           ),
           TextButton(
             style: ButtonStyle(

               //this properties is used to different states of the button
               overlayColor: MaterialStateProperty.resolveWith<Color?>(
                       (Set<MaterialState> states) {
                     if (states.contains(MaterialState.focused))
                       return Colors.red;
                     if (states.contains(MaterialState.hovered))
                       return Colors.green;
                     if (states.contains(MaterialState.pressed))
                       return Colors.blue;
                     return null; // Defer to the widget's default.
                   }),
             ),
             onPressed: () { },
             child: Text('TextButton'),
           ),
      TextButton(
        style: ButtonStyle(
          //this property is used when we are developing the web with flutter
          foregroundColor: MaterialStateProperty.resolveWith(getColor),
        ),
        onPressed: () {},
        child: const Text('TextButton'),
      ),
            ElevatedButton(
                style: ButtonStyle(



                    // this is used to give the padding im the button
                    padding:MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(15)) ,
                    //this is used to give button text color
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),


                    //this is used to give color when we click on the button
                    overlayColor: MaterialStateProperty.all<Color>(Colors.red),
                    //this is used to give the elevation to button
                    elevation: MaterialStateProperty.all<double>(5),


                    // this is used to give the border to button
                    side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.purple)),
                    // this is used to provide the border radius to the button
                    shape: MaterialStateProperty.all<OutlinedBorder>(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),

                    )





                ),


                onPressed: (){}, child: Text("Elevated button")),
            ElevatedButton(
                style: ButtonStyle(



                  // this is used to give the padding im the button
                    padding:MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(15)) ,



                    //this is used to give color when we click on the button
                    overlayColor: MaterialStateProperty.all<Color>(Colors.red),
                    //this is used to give the elevation to button
                    elevation: MaterialStateProperty.all<double>(5),


                    // this is used to give the border to button

                    // this is used to provide the border radius to the button
                    shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder(
                        side:BorderSide(color: Colors.green)),

                    )





                ),


                onPressed: (){}, child: Icon(Icons.add)),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor:  Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
    onPressed: (){}, child: Text("Elevated button")),
          ],
        )

      ),
    );
  }
}

