

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/views/screens/SignUpScreen/widgets/CustomButton.dart';
import 'package:hllive/views/screens/SignUpScreen/widgets/CustomTextField.dart';




class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Side - Text
          Expanded(
            flex: 2,
            child: Container(
              color: const Color(0xff161F2C),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Sign Up to HL LIVE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  SizedBox(height: 20,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'HL LIVE ',
                          style: TextStyle(color: Color(0xffDD234B),fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'is the leading diversified  online casino and one of the  largest gambling companies in the world.',
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                  ),
               Text(
                     '1. Deposit bonus for new users: +100% bonus up to 800BRL.\n2. Unlimited Invitation Bonus: For each invited depositor user, you will receive up to R\$12. Themore friends you invite, the more bonuses you will receive.\n3. Join our Telegram channel and be the first to stay abreast ofthe latest  activities and benefits.',style: TextStyle(color: Colors.white),),
                  Text('https://t.me/Hllive',style: TextStyle(color: Color(0xff066FEC)),),
                  // Text('May all players have fun at HL LIVE!'),
                      Text(
                        'May all players have fun at HL LIVE!',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Right Side - Form
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xff10151E),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40.0),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Sign up to get ',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '100% BONUS',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Color(0xffF4973F),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  CustomTextField1(
                    width: context.width/4,
                    height: Get.height*0.05,
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.email_outlined,size: 20,color: Colors.white.withOpacity(0.5))),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.incomplete_circle,size: 20,color: Colors.white.withOpacity(0.5))),
                    labelText: 'Email',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 10.0),
                  CustomTextField1(
                    width: context.width/4,
                    height: Get.height*0.05,
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.lock,size: 20,color: Colors.white.withOpacity(0.5))),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off,size: 20,color: Colors.white.withOpacity(0.5))),
                    labelText: 'Password',
                    obscureText: false,
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 30.0),
                  SizedBox(
                    width: context.width/4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          'Invitation Code',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  CustomTextField1(
                    width: context.width/4,
                    height: Get.height*0.05,
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.email_outlined,size: 20,color: Colors.white.withOpacity(0.5),)),
                    labelText: 'Invitation Code',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: context.width/4,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              side: const BorderSide(color: Color(0xFF9F9F9F)),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'I certify that I am over 18 and agree \nto the',
                                    style: TextStyle(color: Color(0xff3F5773)),
                                  ),
                                  TextSpan(
                                    text: ' Terms of Service',
                                    style: TextStyle(color: Color(0xff2283F6)),
                                  ),
                                ],
                              ),
                            )
                            // Text('',style: TextStyle(color: Color(0xff3F5773)),),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            Checkbox(
                              side: const BorderSide(color: Color(0xFF9F9F9F)),
                              value: false,
                              onChanged: (value) {},
                            ),
                            const Text('Receive promotions by email',style: TextStyle(color: Color(0xff3F5773)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: context.width/4,
                    child: CustomButton(
                      fontSize: 20,
                      text: 'Sign Up',
                      onPressed: () {
                        // Handle sign-up logic
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Already have an account?',style: TextStyle(color: Color(0xff3F5773),fontSize: 16,)),
                      SizedBox(width: 5.0),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xffDD234B),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: context.width/4,
                    child: CustomButton(
                      prefix: const Icon(Icons.g_mobiledata),
                      fontSize: 17,
                      isFilled: false,
                      text: 'Sign Up with Google',
                      onPressed: () {
                        // Handle sign-up with Google logic
                      },
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: context.width/4,
                    child: CustomButton(
                      prefix: const Icon(Icons.facebook,color: Colors.blue,),
                      fontSize: 17,
                      isFilled: false,
                      text: 'Sign Up with Facebook',
                      onPressed: () {
                        // Handle sign-up with Facebook logic
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}