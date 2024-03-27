import 'package:flutter/material.dart';


class AdvisorProfile extends StatelessWidget {
  AdvisorProfile({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                  ),
                  backgroundColor: Colors.black,
                  body: SingleChildScrollView(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/selfstack.png',
                          width: MediaQuery.of(context).size.width * 8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Container(
                            color: Colors.grey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 70.0,
                                  child: ClipOval(

                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Advisor: ',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                 'email',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                SizedBox(
                                  child: ElevatedButton.icon(
                                    onPressed: () async {
                                    
                                    },
                                    icon: Icon(Icons.logout, color: Colors.red),
                                    label: Text('Logout',
                                        style: TextStyle(color:Colors.white)),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      backgroundColor:Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } }