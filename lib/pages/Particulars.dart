import 'package:flutter/material.dart';

class ParticularsPage extends StatefulWidget {
  const ParticularsPage({Key? key, required this.selectedCollege}) : super(key: key);

  final String selectedCollege;
  @override
  _ParticularsPageState createState() => _ParticularsPageState();
}

class _ParticularsPageState extends State<ParticularsPage> {
  int? _selectedCriteria;

  @override
  void initState() {
    super.initState();
    _selectedCriteria = 1; // Set the default selected criteria here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700], // Background color for the app bar
        title: Container(
          padding: const EdgeInsets.all(10.0), // Padding around the title
          child: const Text(
            'Particulars',
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          PopupMenuButton<int>(
            initialValue: _selectedCriteria,
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text('CRITERIA 1'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text('CRITERIA 2'),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text('CRITERIA 3'),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text('CRITERIA 4'),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text('CRITERIA 5'),
              ),
              const PopupMenuItem(
                value: 6,
                child: Text('CRITERIA 6'),
              ),
              const PopupMenuItem(
                value: 7,
                child: Text('CRITERIA 7'),
              ),
              // Add more PopupMenuItems as needed
            ],
            onSelected: (value) {
              setState(() {
                _selectedCriteria = value;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: _selectedCriteria != null
            ? _buildContentForCriteria(_selectedCriteria!)
            : const Text('No criteria selected'),
      ),
    );
  }

  Widget _buildContentForCriteria(int criteria) {
    switch (criteria) {
      case 1:
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150, // Adjust the height as needed
                width: 150, // Adjust the width as needed
                child: Image.asset(
                  'assets/images/img.png',
                  fit: BoxFit.cover, // You can adjust the fit as needed
                ),
              ),
              const SizedBox(height: 15),
              const Card(
                color: Color(0xFFCECFCC),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "CRITERIA 1 : ACADEMICS - A",
                      style: TextStyle(
                        color: Color(0xFF0C0C0C),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adjust the horizontal padding as needed
                    child: Table(
                      border: TableBorder.all(),
                      columnWidths: const {
                        0: FlexColumnWidth(4), // Adjust column widths as needed
                        1: FlexColumnWidth(1.5),
                        2: FlexColumnWidth(1.5),
                      },
                      children: const [
                        TableRow(
                          children: [
                            TableCell(child: Center(child: Text("PARTICULARS"))),
                            TableCell(child: Center(child: Text("DETAILS"))),
                            TableCell(child: Center(child: Text("WEITAGE"))),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                child: Center(
                                  child: Text(
                                      "Student Feedback (Out Of 100)"
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF4C7B9),
                                    contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                  ),
                                ),
                              ),
                            ),
                            TableCell(child: Center(child: Text("12"))),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                child: Center(
                                  child: Text(
                                    "Average Result Of All The Class Conducted\n - In Percentage(100) \n (Average Result Of Previous Odd and Even Semester",
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF4C7B9),
                                    contentPadding: EdgeInsets.symmetric(vertical: 46.0),
                                  ),
                                ),
                              ),
                            ),
                            TableCell(child: Center(child: Text("17"))),
                          ],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                child: Center(
                                  child: Text(
                                    "1st Class (%) or Avg.IESA Score of all Subjects /\n Papers taught\n Odd and Even Semester End Exam",
                                  ),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF4C7B9),
                                    contentPadding: EdgeInsets.symmetric(vertical: 46.0),
                                  ),
                                ),
                              ),
                            ),
                            TableCell(child: Center(child: Text("6"))),
                          ],
                        ),
                      ],
                    ),
                  )


                ],
              ),
            ],
          ),
        );
      case 2:
        return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 150, // Adjust the height as needed
                  width: 150, // Adjust the width as needed
                  child: Image.asset(
                    'assets/images/img_1.png',
                    fit: BoxFit.cover, // You can adjust the fit as needed
                  ),
                ),
                const Card(
                  color: Color(0xFFCECFCC),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "CRITERIA 2 : ACADEMICS - B",
                      style: TextStyle(
                        color: Color(0xFF0C0C0C),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder.all(),
                    columnWidths: const {
                      0: FlexColumnWidth(4), // Adjust column widths as needed
                      1: FlexColumnWidth(1.5),
                      2: FlexColumnWidth(1.5),
                    },
                    children: const [
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "PARTICULARS",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "DETAILS",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "WEITAGE",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Punctuality : \nYearly Biometric Report \n(Total No. of Hours Shortage)",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF4C7B9),
                                  contentPadding: EdgeInsets.symmetric(vertical: 30.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Library Usage In College Library (Total No. Of Hours)",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF4C7B9),
                                  contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Percentage of Seats Filled in 1st Semester",
                                ),
                                Text(
                                  "UG College: Applicable for all the subjects",
                                ),
                                Text(
                                  "UG Section Ayurveda: Consider college %.",
                                ),
                                Text(
                                  "PG Section / College: Applicable for all the courses",
                                ),
                                Text(
                                  "Engg. College: Applicable for all the branches. For basic science consider college %.",
                                ),
                              ],
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child:
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF4C7B9),
                                  contentPadding: EdgeInsets.symmetric(vertical: 110.0), // Adjust the vertical padding to change the height
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "3",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  "Percentage of Placement",
                                ),
                                Text(
                                  "(On-Campus & Off-Campus)",
                                ),
                                Text(
                                  "(Course-Wise %)",
                                ),
                              ],
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(0.0),
                              child:
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF4C7B9),
                                  contentPadding: EdgeInsets.symmetric(vertical: 33.0), // Adjust the vertical padding to change the height
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "3",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      // Add more TableRows as needed
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      case 3:
        return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 150, // Adjust the height as needed
                  width: 150, // Adjust the width as needed
                  child: Image.asset(
                    'assets/images/img_2.png',
                    fit: BoxFit.cover, // You can adjust the fit as needed
                  ),
                ),
                const Card(
                  color: Color(0xFFCECFCC),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "CRITERIA 3 :",
                            style: TextStyle(
                              color: Color(0xFF0C0C0C),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "RESEARCH - A (Publications & Projects)",
                            style: TextStyle(
                              color: Color(0xFF0C0C0C),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0), // Adjust the padding as needed
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(4), // Adjust column widths as needed
                            1: FlexColumnWidth(3), // Adjust column widths as needed
                          },
                          children: const [
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0), // Adjust the padding as needed
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "PARTICULARS",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 8), // Adding vertical space between the texts and divider
                                        Divider(), // Add a Divider to separate the texts
                                        SizedBox(height: 8), // Adding vertical space between the texts and divider
                                        Text(
                                          "Research activities", // Add your second line of text here
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        "DETAILS",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Research Paper Publications (In The Name Of Own Institution)",
                                        ),
                                        Text(
                                          "FIRST / CORRESPONDING & CO-AUTHORS",
                                          style: TextStyle(
                                            color: Colors.red, // Text color
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0),
                                  ),
                                ),
                              ],
                            ),
                            // Your table rows
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(4), // Adjust column widths as needed
                            1: FlexColumnWidth(3), // Adjust column widths as needed
                          },
                          children: [
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Container(
                                      color: Colors.lightBlue,
                                      child: const Column(
                                        children: [
                                          Text(
                                            "# PAPERS",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Your table rows
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Adjust the horizontal padding as needed
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(4), // Adjust column widths as needed
                            1: FlexColumnWidth(1.5),
                            2: FlexColumnWidth(1.5),
                          },
                          children: const [
                            TableRow(
                              children: [
                                TableCell(child: Center(child: Text(""))),
                                TableCell(child: Center(child: Text("1st / Corresp."))),
                                TableCell(child: Center(child: Text("Co-Author"))),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                    child: Center(
                                      child: Text(
                                          "1.1) Published in UGC Care List Journals"
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF4C7B9),
                                        contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF4C7B9),
                                        contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                    child: Center(
                                      child: Text(
                                          "1.2) Published in NON-UGC Journals"
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF4C7B9),
                                        contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF4C7B9),
                                        contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(4), // Adjust column widths as needed
                            1: FlexColumnWidth(3), // Adjust column widths as needed
                          },
                          children: [
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Any Ongoing Research Projects (Excluding Student Research Projects) for the Grant Period. (2021 - 2023) :",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      color: Colors.lightBlue,
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 30.0), // Add contentPadding here
                                        child: Column(
                                          children: [
                                            Text(
                                              "# PROJECTS",
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Your table rows
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0), // Adjust the horizontal padding as needed
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(3), // Adjust column widths as needed
                            1: FlexColumnWidth(1.2),
                            2: FlexColumnWidth(1),
                          },
                          children:  [
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                    child: Center(
                                      child: Text(
                                          "2.1) No. of Projects With Funds Less Than Rs 3 Lakhs (< 3 lakhs)"
                                      ),
                                    ),
                                  ),
                                ),
                                Table(
                                  children: [
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Title 1",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    TableRow(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Title 2",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),


                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF4C7B9),
                                        contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0), // Adjust inner padding as needed
                                    child: Center(
                                      child: Text(
                                          ""
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: Center(
                                      child: Text(
                                          "Co-Investigator	2018"
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: EdgeInsets.all(0.0), // Adjust inner padding as needed
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF4C7B9),
                                        contentPadding: EdgeInsets.symmetric(vertical: 17.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        );



    // Handle other cases similarly
      default:
        return const Text('Invalid criteria');
    }
  }

}

void main() {
  runApp(const MaterialApp(
    home: ParticularsPage(selectedCollege: "Some College"),
  ));
}
