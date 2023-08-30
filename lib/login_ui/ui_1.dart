import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modern_login_screen_collection_flutter/widgets/my_button.dart';
import 'package:modern_login_screen_collection_flutter/widgets/sign_option.dart';
import 'package:modern_login_screen_collection_flutter/widgets/text_filed.dart';

class LoginUIone extends StatelessWidget{
  @override


  //controller
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                //logo
                SizedBox(height: 80,),
                Icon(Icons.lock,size: 100,),
                SizedBox(height: 80,),

                //welcome message
                Text("Welcome back you've been missed!",style: TextStyle(fontSize: 18,color: Colors.grey[700]),),
                SizedBox(height: 25,),

                //user name textfiled
                MyTextField(
                  hintText: 'Username or Email',
                  obsecurreText: false,
                  controller: userNameController,

                ),
                SizedBox(height: 25.0,),


                //password textfiled
                MyTextField(
                  hintText: 'Password',
                  obsecurreText: true,
                  controller: passwordController,
                ),


                //forget password
                Padding(
                  padding: EdgeInsets.only(top: 10,right: 20),
                  child: Align(

                      alignment: Alignment.topRight,
                      child: Text('Forgot Password?')),
                ),
                SizedBox(height: 25.0,),


                //sign in button
                MyButton('Sign Up', (){}),
                SizedBox(height: 80,),




                // sign in method
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(child: Divider(thickness: 2.5,color: Colors.grey[400],)),
                      Text('  Or continue with  '),
                      Expanded(child: Divider(thickness: 2.5,color: Colors.grey[400],)),
                    ],
                  ),
                ),
                SizedBox(height: 50.0,),

                //google and apple image
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignOption(Link: 'https://scontent.fdac136-1.fna.fbcdn.net/v/t1.15752-9/372380283_918799266242736_7732336278092395984_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHIFqwcEVvAsw7vgN3xzSjhMkVPmnA-Iw0yRU-acD4jDVuwe-nm5PDcs1wgXsH2Yj2KBg6SCIrHHLlk2ETtPxub&_nc_ohc=D7e9TDl-1skAX8aNIp8&_nc_ht=scontent.fdac136-1.fna&oh=03_AdSTLh7q3OQTf5W7-YPoC39H2-sPazjG0oc7_VJlIkzB1Q&oe=6516BA84'),
                    SizedBox(width: 25.0,),
                    SignOption(Link: 'https://scontent.fdac136-1.fna.fbcdn.net/v/t1.15752-9/373051663_1705359086634391_5901888177070844807_n.png?_nc_cat=109&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEo2c6QwywBgqlSy1Gf9n01IzZqa1V8gfkjNmprVXyB-RGd4NeHFIdSZ4to6KvH9bF5zMEEDG9QlPSiqa6ZmDF8&_nc_ohc=fhQNIdYfkF4AX_kuIna&_nc_ht=scontent.fdac136-1.fna&oh=03_AdQYnCMUZp7H-yu-PBOHPsUfJNlLadx8Rr1IMpgCqweKwA&oe=6516D40D')
                  ],
                ),
                SizedBox(height: 200.0,),




                //Register Alert
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Not a member?'),
                     GestureDetector(
                         onTap: (){
                           print('Clicked');
                         },
                         child: Text(' Register Now',style: TextStyle(color: Colors.blue),)),
                   ],
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}