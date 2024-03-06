import 'package:flutter/material.dart';
import 'Particulars.dart';

class EmpDetailPage extends StatefulWidget {
  final String selectedCollege;
  const EmpDetailPage({super.key, required this.selectedCollege});

  @override
  State<EmpDetailPage> createState() => _EmpDetailPageState();
}

class _EmpDetailPageState extends State<EmpDetailPage> {


  String? selectedDept;

  Map<String, List<String>> dept = {
    'SDM College, Ujire': ['BBA', 'Biotechnology', 'Botany', 'Chemistry', 'Commerce', 'Computer Science', 'Economics', 'English', 'Hindi', 'History', 'Home Science', 'Journalism', 'Kannada', 'Mathematics', 'NCC', 'Physics', 'Political Science', 'Psychology', 'Sanskrit', 'Statistics' ,'Bvoc - Software And App Development', 'Bvoc - Digital Media And Film Making', 'Bvoc - Retail And Supply Chain Management'],
    'SDMC BBM, Mangaluru': ['Business Management', 'Computer Application', 'English', 'Hindi', 'Kannada', 'Sankrit'],
    'SDM Law College, Mangaluru': ['Economics', 'Commerce', 'English', 'Hindi', 'Kannada', 'Sankrit'],
    'SDM MMK, Mysore': ['Chemistry', 'Commerce And Busi.Mgmt', 'Computer Science', 'Electronics', 'English', 'Hindi', 'Kannada', 'Mathematics', 'MicroBiology', 'Physics', 'Sanskrit'],
    'SDM PG Centre, Ujire': ['Biotechnology', 'Chemistry', 'CIRHS', 'Economics', 'English', 'MCJ', 'Mcom', 'MSW', 'Physics', 'Psychology', 'Statistics'],
    'SDM MBA College, Mangaluru': ['MBA'],
    'SDM IT, Ujire': ['AI And Data Science', 'Mechanical', 'ISE', 'EEE', 'ECE', 'CSE', 'Civil', 'Mathematics', 'Chemistry', 'Physics', 'Humanities And Language', 'Library'],
    'SDM CET Dharwad': ['Civil Engg.', 'Chemical Engg.', 'CSE', 'E And E', 'E And C', 'ISE', 'Mechanical', 'AI And ML', 'MBA', 'Physics', 'Chemistry', 'Mathematics', 'Humanities And Social Sci.'],
    'SDMCAH (Non-Clinical), Udupi': ['Ayurveda Samhita And Siddhanta', 'Rachana Shareera', 'Kriya Sharira', 'Dravyaguna', 'Rasashastra And Bhaishajya Kalpana', 'Agada Tantra Evam Vidhi Vaidyak', 'Rog Nidan Avum Vikriti Vigyan', 'Swasthavritta And Yoga', 'Kayachikista', 'Shalya Tantra', 'Shalakya Tantra', 'Kaumarabhritya', 'Panchakarma', 'Prasuti Tantra And Stri Roga' 'Mano Vijnana Avum Manasa Roga'],
    'SDMCAH (Non-Clinical), Hassan': ['Agada Tantra Evam Vidhi Vaidyak', 'Dravyaguna', 'Kaumarabhritya', 'Kayachikista', 'Kriya Sharira', 'Mano Vijnana Avum Manasa Roga', 'Panchakarma', 'Prasuti Tantra And Stri Roga', 'Rasashastra And Bhaishajya Kalpana', 'Rog Nidan Avum Vikriti Vigyan', 'Ayurveda Samhita And Siddhanta', 'Shalya Tantra', 'Shalakya Tantra', 'Swasthavritta And Yoga', 'Rachana Shareera'],
    'SDMIAH (Non-Clinical), Bangalore': ['Agada Tantra Evam Vidhi Vaidyak', 'Dravyaguna', 'Kaumarabhritya', 'Kayachikista', 'Kriya Sharira', 'Panchakarma', 'Prasuti Tantra And Stri Roga', 'Rasashastra And Bhaishajya Kalpana', 'Rog Nidan Avum Vikriti Vigyan', 'Ayurveda Samhita And Siddhanta', 'Shalya Tantra', 'Shalakya Tantra', 'Swasthavritta And Yoga', 'Rachana Shareera'],
    'SDMCNYS (Non-Clinical), Ujire': ['Physiology And Biochemistry', 'Philosophy Of Naturopathy And Principles Of Yoga', 'Yoga And Mind Body Medicine', 'Pathology And Microbiology', 'Community Medicine', 'Energy Medicine And Color And Magneto Therapy', 'Manipulative Therapies And Physical Medicine With Rehabilitation', 'Allied Health Sciences Forensic Medicine And Toxicology, Pharmacy', 'Fasting, Dietics, Nutrition And Medicinal Herbs', 'Hydrotherapy And Mud Therapy', 'Modern Diagnostic Methods, Obstetrics And Gynecology', 'Naturopathy Diagnostic Methods, Clinical Naturopathy, Yoga'],

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emp Detail'), // Adjust title as needed
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1, // Adjust flex as needed
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: DropdownButtonFormField<String>(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select an item';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Select',
                        hintText: 'Select',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'Dr',
                          child: Text('Dr'),
                        ),
                        DropdownMenuItem(
                          value: 'Prof',
                          child: Text('Prof'),
                        ),
                        DropdownMenuItem(
                          value: 'Mr',
                          child: Text('Mr'),
                        ),
                        DropdownMenuItem(
                          value: 'Ms',
                          child: Text('Ms'),
                        ),
                        // Add other DropdownMenuItem widgets as needed
                      ],
                      onChanged: (value) {
                        // Do something with the selected value
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Add spacing between DropdownButtonFormField and TextFormField
                Expanded(
                  flex: 3, // Adjust flex as needed
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Your Name',
                      hintText: 'Enter Your Name',
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black12, // Default border color
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black12, // Default border color
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Designation';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Designation',
                hintText: 'Enter Your Designation',
                hintStyle: const TextStyle(
                  color: Colors.black26,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),


            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8), // Add spacing
                  Container(
                    height: 65, // Adjust the height to match other fields
                    width: double.infinity, // Make the container fill the available width
                    child: InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Department',
                        hintText: 'Select Department', // Change the hint text to "Select Department"
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedDept,
                        onChanged: (newValue) {
                          setState(() {
                            selectedDept = newValue!;
                          });
                        },
                        items: dept[widget.selectedCollege]?.map((String city) {
                          return DropdownMenuItem<String>(
                            value: city,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding to align text
                              child: Text(city),
                            ),
                          );
                        }).toList(),
                        underline: Container(), // Remove underline
                      ),
                    ),
                  ),
                ],
              ),
            ),



            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Experience (In Years)'),
                hintText: 'Enter Experience (In Years)',
                hintStyle: const TextStyle(
                  color: Colors.black26,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Email Id (Official)'),
                hintText: 'Enter Email Id (Official)',
                hintStyle: const TextStyle(
                  color: Colors.black26,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: const Text('Mobile Number'),
                hintText: 'Enter Mobile Number',
                hintStyle: const TextStyle(
                  color: Colors.black26,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black12, // Default border color
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Clear all entered values
                      setState(() {
                        // Reset selectedDept to null
                        selectedDept = null;

                        // Reset other fields to empty strings or default values
                        // For example, if you have a TextFormField named 'nameController', you can reset it like this:
                        // nameController.text = '';
                      });
                    },
                    child: const Text('Clear All'),
                  ),
                  const SizedBox(width: 10), // Add spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the ParticularsPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ParticularsPage(selectedCollege: '',)),
                      );
                    },
                    child: const Text('Fill Your PBSA'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.7,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
