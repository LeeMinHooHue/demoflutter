import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyInformation extends StatefulWidget {
  const BodyInformation({super.key});

  @override
  State<BodyInformation> createState() => _BodyInformationState();
}

class _BodyInformationState extends State<BodyInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Information',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          height: 150,
          width: 315,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('lib/icons/Avatar.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Marvis Ighedosa',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('dosamarvis@gmail.com'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'No 15 uti street off ovie palace\nroad effurun delta state')
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
