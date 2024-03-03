import 'package:flutter/material.dart';

class ReviewUpdatingPage extends StatefulWidget {
  @override
  _ReviewUpdatingPageState createState() => _ReviewUpdatingPageState();
}

class _ReviewUpdatingPageState extends State<ReviewUpdatingPage> {
  String selectedMark = '';
  String selectedReviewStatus = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 82, 203, 86),
        child: Column(
          children: [
            AppBar(
              toolbarHeight: 100,
              backgroundColor: const Color.fromARGB(255, 82, 203, 86),
              title: const Text(
                'Review Updating',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviewer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter reviewer name',
                            labelStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                onTap: () async {
                                  DateTime? selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101),
                                  );

                                  if (selectedDate != null) {
                                    // Update the TextField or perform any other actions
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: 'Enter date',
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () async {
                                      DateTime? selectedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2101),
                                      );

                                      if (selectedDate != null) {
                                        // Update the TextField or perform any other actions
                                      }
                                    },
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mark',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                readOnly: true,
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Select Mark'),
                                        content: Column(
                                          children: [
                                            ListTile(
                                              title: Text(
                                                'Option 1',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              tileColor: Colors.red,
                                              onTap: () {
                                                setState(() {
                                                  selectedMark = 'Option 1';
                                                });
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              title: Text(
                                                'Option 2',
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              tileColor: Colors.green,
                                              onTap: () {
                                                setState(() {
                                                  selectedMark = 'Option 2';
                                                });
                                                Navigator.pop(context);
                                              },
                                            ),
                                            // Add more options as needed
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                decoration: InputDecoration(
                                  labelText: 'Select mark',
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                ),
                                controller: TextEditingController(text: selectedMark),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Review Status',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3.0,
                          ),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              color: getReviewStatusColor1(index),
                              child: RadioListTile<String>(
                                title: Text(
                                  getReviewStatusText(index),
                                  style: TextStyle(color: Colors.white),
                                ),
                                value: getReviewStatusText(index),
                                groupValue: selectedReviewStatus,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedReviewStatus = value!;
                                  });
                                },
                                tileColor: Colors.transparent,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getReviewStatusText(int index) {
    switch (index) {
      case 0:
        return 'Task Completed';
      case 1:
        return 'Not Completed';
      case 2:
        return 'Need Improvement';
      case 3:
        return 'Not Attended';
      case 4:
        return 'Review Repeat';
      case 5:
        return 'Next Review';
      default:
        return '';
    }
  }

  Color getReviewStatusColor1(int index) {
    switch (index) {
      case 0:
        return Colors.green;
      case 1:
        return Colors.yellow;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.blue;
      case 4:
        return Colors.pink;
      case 5:
        return Color.fromARGB(255, 237, 133, 168);
      default:
        return Colors.transparent;
    }
  }
}
