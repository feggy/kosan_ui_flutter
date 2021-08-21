import 'package:flutter/material.dart';
import 'package:kosan/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Profile Picture',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: primary,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/primary.png',
                height: 140,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Feggy Muhammad Pitma',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 16,
                  color: greyColor,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Wrap(
                spacing: 38,
                runSpacing: 40,
                children: [
                  Image.asset(
                    'assets/images/item1.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item2.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item3.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item4.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item5.png',
                    width: 80,
                  ),
                  Image.asset(
                    'assets/images/item6.png',
                    width: 80,
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 290,
                          padding: EdgeInsets.symmetric(
                            vertical: 50,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16),
                                bottom: Radius.circular(16),
                              )),
                          child: Column(
                            children: [
                              Text(
                                'Update Profile',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                'You are only able to change\nthe picture profile once',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: greyColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 224,
                                height: 55,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(orangeColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Update Profile',
                    style: TextStyle(
                      color: primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
