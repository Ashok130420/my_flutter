import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Map userData = {};
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // userData = ModalRoute.of(context)!.settings.arguments as Map;
    // print(userData);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Enter first name',
                        labelText: 'First name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        errorStyle: TextStyle(fontSize: 8.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'Please enter first name';
                    //   }else if(value.length<5){
                    //     return 'Please enter at least 5 characters';
                    //   }
                    //   return null;
                    // },
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter first name'),
                      MinLengthValidator(5, errorText: '5 characters')
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Enter Last name',
                        labelText: 'Last name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter last name'),
                      MinLengthValidator(5, errorText: '5 characters')
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Enter email ',
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter email'),
                      EmailValidator(errorText: 'valid email')
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Enter mobile number',
                        labelText: 'Mobile',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter mobile'),
                      PatternValidator(r'(^[0,9]{10}$)',
                          errorText: 'valid mobile number')
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular((10))),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print('Form submitted');


                        }
                      },
                      color: Colors.blue[500],
                      child: const Text(
                        'Update',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
