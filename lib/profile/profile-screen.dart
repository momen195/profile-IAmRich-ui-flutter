import 'package:flutter/material.dart';
import 'package:i_am_rich/componants/components.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  final GlobalKey<FormState> FormKye = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          size: 30.0,
          color: Colors.white,
        ),
        title: Text(
          'MY PROFILE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 20.0,
            fontFamily: 'Pear Amigo Demo',
          ),
        ),
        actions: [
          Icon(
            color: Colors.white,
            size: 30.0,
            Icons.density_medium_sharp,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.red[500],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage('images/formal.jpeg'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt, size: 30.0, color: Colors.white),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Add Your Photo',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pear Amigo Demo',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: FormKye,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultFormField(
                        controller: TextEditingController(),
                        type: TextInputType.text,
                        label: 'First Name',
                        prefix: Icons.drive_file_rename_outline,
                      ),
                      SizedBox(height: 12.0,),
                      defaultFormField(
                        controller: TextEditingController(),
                        type: TextInputType.text,
                        label: 'Last Name',
                        prefix: Icons.drive_file_rename_outline,
                      ),
                      SizedBox(height: 12.0,),
                      defaultFormField(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validate: (String? value){
                          if(value ==null || value.trim().length <= 3){
                            return 'Email Address must not Empity';
                          }
                          return null;
                        },
                        label: 'Email Address',
                        prefix: Icons.email,
                      ),
                      SizedBox(
                        height:12.0,),
                      defaultFormField(
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        validate: (String? value){
                          if(value ==null || value.trim().length <= 3){
                            return 'Password must not Empity';
                          }
                          return null;
                        },
                        label: 'Password',
                        prefix: Icons.lock,
                        isPassword: isPassword,
                        suffix: isPassword ? Icons.visibility :Icons.visibility_off,
                        suffixPressed: (){
                          setState(() {
                            isPassword = !isPassword;
                          });
                        },
                      ),
                      SizedBox(
                        height:12.0,),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
