import 'package:flutter/material.dart';

class SmallContainer extends StatefulWidget {
  final String text;
  final String image;
  final Color? color;
  final Color? textColor;


  const SmallContainer({super.key,
  required this.text,
  required this.image,
  required this.color,
  required this.textColor
  });

  @override
  State<SmallContainer> createState() => _SmallContainerState();
}

class _SmallContainerState extends State<SmallContainer> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: widget.color??Colors.grey.withAlpha((0.1*255).round()),
            borderRadius:BorderRadius.circular(20)
            ),
            child: Padding(padding: const EdgeInsets.all(8),
            child: Image.asset(widget.image),
            ),
        ),
        const SizedBox(height: 4),
        Text(
          widget.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: widget.textColor ?? Colors.black
           ),
        )
      ],
    );
  }
}
