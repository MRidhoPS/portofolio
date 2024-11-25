import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            height: 200,
            color: Colors.amber,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                color: Colors.blue,
              );
            },
          ),
        ),
      ],
    );
  }
}
