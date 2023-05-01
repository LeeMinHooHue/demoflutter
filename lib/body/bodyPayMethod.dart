import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyPayMethod extends StatefulWidget {
  const BodyPayMethod({super.key});

  @override
  State<BodyPayMethod> createState() => _BodyPayMethodState();
}

class _BodyPayMethodState extends State<BodyPayMethod> {
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment Method',
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
          height: 231,
          width: 315,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isCheck1,
                    onChanged: (bool? value) {
                      isCheck1 = value!;
                      setState(() {});
                    },
                    shape:
                        const CircleBorder(), // Đặt hình dạng checkbox thành hình tròn
                    checkColor: Colors.white,
                  ),
                  SvgPicture.asset(
                    'lib/icons/giftCard.svg',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Card',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheck2,
                    onChanged: (value) {
                      isCheck2 = value!;
                      setState(() {});
                    },
                    shape:
                        const CircleBorder(), // Đặt hình dạng checkbox thành hình tròn
                    checkColor: Colors.white,
                  ),
                  SvgPicture.asset(
                    'lib/icons/Bank.svg',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Bank Account'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isCheck3,
                    onChanged: (value) {
                      isCheck3 = value!;
                      setState(() {});
                    },
                    shape:
                        const CircleBorder(), // Đặt hình dạng checkbox thành hình tròn
                    checkColor: Colors.white,
                  ),
                  SvgPicture.asset(
                    'lib/icons/Bank.svg',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('PayPal'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
