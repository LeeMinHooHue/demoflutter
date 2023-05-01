import 'package:flutter/material.dart';

class BtnFooter extends StatefulWidget {
  const BtnFooter({super.key});

  @override
  State<BtnFooter> createState() => _BtnFooterState();
}

class _BtnFooterState extends State<BtnFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(250, 74, 12, 1),
        border: Border.all(width: 1, color: Colors.orange),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Text(
          'Update',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
