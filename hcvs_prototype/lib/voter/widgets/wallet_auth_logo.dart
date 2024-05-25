import 'package:flutter/material.dart';

class WalletAuthLogo extends StatelessWidget {
  const WalletAuthLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 200.0,
          height: 120.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: Image.asset(
                "asset/wallet_icon.jpeg",
              ).image,
            ),
          ),
        ),
        Positioned(
          top: 60.0,
          bottom: 10.0,
          left: 70.0,
          child: Container(
            width: 50.0,
            height: 40.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 0.7,
              ),
              image: DecorationImage(
                image: Image.asset(
                  "asset/user_authentication.jpeg",
                ).image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
