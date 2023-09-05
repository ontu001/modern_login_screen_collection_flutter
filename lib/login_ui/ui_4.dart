import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_login_screen_collection_flutter/widgets/custom_buttton.dart';
import 'package:modern_login_screen_collection_flutter/widgets/custom_form.dart';
import 'package:modern_login_screen_collection_flutter/widgets/sign_option.dart';

class LoginUIfour extends StatefulWidget {
  @override
  State<LoginUIfour> createState() => _LoginUIfourState();
}

class _LoginUIfourState extends State<LoginUIfour> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  bool rememberuser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          SizedBox(
            height: 100,
          ),

          //Logo
          Image.network(
            'https://laz-img-cdn.alicdn.com/images/ims-web/TB1WLktrNYaK1RjSZFnXXa80pXa.png',
            height: 100,
            width: 100,
          ),

          //Login text
          Text(
            'Welcome From Daraz',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          ),

          //space
          SizedBox(
            height: 80,
          ),

          //Email field
          customForm(
              controller: emailController,
              hintText: 'Email',
              obsecureText: false,
              suffixIcon: Icon(
                Icons.email_outlined,
                size: 30,
              )),

          //space
          SizedBox(
            height: 16,
          ),

          //PAssword filed
          customForm(
              controller: passwordController,
              hintText: 'Password',
              obsecureText: true,
              suffixIcon: Icon(Icons.remove_red_eye_outlined)),

          //space
          SizedBox(
            height: 25,
          ),

          //checkbox and forgetpassword
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: rememberuser,
                      onChanged: (value) {
                        setState(() {
                          rememberuser = value!;
                        });
                      }),
                  Text('Remember me')
                ],
              ),
              TextButton(
                  onPressed: () => print('clicked'),
                  child: Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),

          //space
          SizedBox(
            height: 80,
          ),

          //signup button
          buTton('Log In', () {}),

          //space
          SizedBox(
            height: 80,
          ),

          //other sign in option
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 2,
              )),
              Text('  Or Sign in with  '),
              Expanded(
                  child: Divider(
                thickness: 2,
              )),
            ],
          ),
          //space
          SizedBox(
            height: 30,
          ),

          SizedBox(
            width: 20,
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

          //space
          SizedBox(
            height: 120.0,
          ),

          //Register Alert
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a member?'),
              GestureDetector(
                  onTap: () {
                    print('Clicked');
                  },
                  child: Text(
                    ' Register Now',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
