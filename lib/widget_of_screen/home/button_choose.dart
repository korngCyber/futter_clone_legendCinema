import 'package:flutter/material.dart';

class MyCinema extends StatelessWidget {
  const MyCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[500],
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )
          ),
          onPressed: () {
            // Get.bottomSheet(
            //   Container(
            //       height: 150,
            //       color: Colors.greenAccent,
            //       child:const Column(
            //         children: [
            //           Text('Hii 1', textScaleFactor: 2),
            //           Text('Hii 2',  textScaleFactor: 2),
            //           Text('Hii 3',  textScaleFactor: 2),
            //           Text('Hii 4',  textScaleFactor: 2),
            //         ],
            //       )
            //   ),
            //   barrierColor: Colors.red[50],
            //   // isDismissible: false,
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(35),
            //       side: const BorderSide(
            //           width: 5,
            //           color: Colors.black
            //       )
            //   ),
            //   // enableDrag: false,
            //
            // );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Choose you Cenima"),
              Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
