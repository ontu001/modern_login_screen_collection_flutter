import 'package:flutter/material.dart';
import 'package:modern_login_screen_collection_flutter/widgets/my_button.dart';
import 'package:modern_login_screen_collection_flutter/widgets/my_button2.dart';
import 'package:modern_login_screen_collection_flutter/widgets/sign_option.dart';
import 'package:modern_login_screen_collection_flutter/widgets/simple_filed.dart';

class LoginUIthree extends StatefulWidget {
  @override
  State<LoginUIthree> createState() => _LoginUIthreeState();
}

class _LoginUIthreeState extends State<LoginUIthree> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(30)),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/1816714/pexels-photo-1816714.jpeg?auto=compress&cs=tinysrgb&w=1600',
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.purple.withOpacity(0.5), BlendMode.dstATop))),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    size: 60,
                    color: Colors.purple,
                  ),
                  Text(
                    'GO MAP',
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            //login input part
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 35, right: 50, left: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome',
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.bold)),
                      Text('The newest map for the modern world'),
                      SizedBox(
                        height: 50,
                      ),
                      SimpleForm(
                        controller: userNameController,
                        hintText: 'Email',
                        obsecureText: false,
                        suffixIcon: Icon(Icons.email),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      SimpleForm(
                        controller: passwordController,
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        obsecureText: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  value: rememberUser,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberUser = value!;
                                    });
                                  }),
                              Text('Remember me')
                            ],
                          ),
                          Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.purple),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MyButtonT('Sign Up'),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 2,
                          )),
                          Text('  Or sighn in with  '),
                          Expanded(
                              child: Divider(
                            thickness: 2,
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SignOption(
                              Link:
                                  'https://scontent.fdac136-1.fna.fbcdn.net/v/t1.15752-9/372380283_918799266242736_7732336278092395984_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHIFqwcEVvAsw7vgN3xzSjhMkVPmnA-Iw0yRU-acD4jDVuwe-nm5PDcs1wgXsH2Yj2KBg6SCIrHHLlk2ETtPxub&_nc_ohc=D7e9TDl-1skAX8aNIp8&_nc_ht=scontent.fdac136-1.fna&oh=03_AdSTLh7q3OQTf5W7-YPoC39H2-sPazjG0oc7_VJlIkzB1Q&oe=6516BA84'),
                          SizedBox(
                            width: 25.0,
                          ),
                          SignOption(
                              Link:
                                  'https://scontent.fdac136-1.fna.fbcdn.net/v/t1.15752-9/373051663_1705359086634391_5901888177070844807_n.png?_nc_cat=109&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEo2c6QwywBgqlSy1Gf9n01IzZqa1V8gfkjNmprVXyB-RGd4NeHFIdSZ4to6KvH9bF5zMEEDG9QlPSiqa6ZmDF8&_nc_ohc=fhQNIdYfkF4AX_kuIna&_nc_ht=scontent.fdac136-1.fna&oh=03_AdQYnCMUZp7H-yu-PBOHPsUfJNlLadx8Rr1IMpgCqweKwA&oe=6516D40D')
                        ],
                      ),
                      SizedBox(
                        height: 90.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not a member? '),
                          Text(
                            'Register now!',
                            style: TextStyle(color: Colors.purple),
                          )
                        ],
                      )
                    ]),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
