import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:footer/footer.dart';

void main() {
  runApp(const FeedbackView());
}

class FeedbackView extends StatelessWidget {
  static var primaryColor = primaryblue;

  static var borderColor = burntgold;

  const FeedbackView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bureaucracy Hax',
      theme: ThemeData(
        primarySwatch: primaryblue,
        fontFamily: 'InriaSerif',
        highlightColor: primaryblue,
      ),
      home: const MyHomePage(title: 'Register Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  bool hovering1 = false;
  bool hovering2 = false;
  bool hovering3 = false;
  bool hovering4 = false;

  @override
  Widget build(BuildContext context) {
    double appBarHeight = kToolbarHeight + 3.0;
    final screenWidth = MediaQuery.of(context).size.width;

    var primaryColor = primaryblue;
    var borderColor = burntgold;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
        Image(image: AssetImage('assets/images/logo-ip.png'),
                height: screenWidth < 700 ? 40.0 : 60.0),
          ],
        ),
        backgroundColor: primaryColor,
        toolbarHeight: screenWidth < 700 ? 60.0 : 70.0,
        actions: [
          MouseRegion(
            onHover: (PointerEvent details) {
              setState(() {
                hovering1 = true;
              });
            },
            onExit: (PointerEvent details) {
              setState(() {
                hovering1 = false;
              });
            },
            child: ElevatedButton(
              onPressed: () {
                //home button press
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 0.0)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth < 700 ? 0.0 : 30.0),
                child: Text(
                  'Home',
                  style: TextStyle(
                      fontSize: screenWidth < 700 ? 13 : 17,
                      color: hovering1 ? borderColor : Colors.white),
                ),
              ),
            ),
          ),
          MouseRegion(
            onHover: (PointerEvent details) {
              setState(() {
                hovering2 = true;
              });
            },
            onExit: (PointerEvent details) {
              setState(() {
                hovering2 = false;
              });
            },
            child: ElevatedButton(
                onPressed: () {
                  //institution button press
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 5.0)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth < 700 ? 0.0 : 30.0),
                  child: Text(
                    'Institutions',
                    style: TextStyle(
                        fontSize: screenWidth < 700 ? 13 : 17,
                        color: hovering2 ? borderColor : Colors.white),
                  ),
                )),
          ),
          MouseRegion(
            onHover: (PointerEvent details) {
              setState(() {
                hovering3 = true;
              });
            },
            onExit: (PointerEvent details) {
              setState(() {
                hovering3 = false;
              });
            },
            child: ElevatedButton(
                onPressed: () {
                  //contact button press
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 5.0)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth < 700 ? 0.0 : 30.0),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                        fontSize: screenWidth < 700 ? 13 : 17,
                        color: hovering3 ? borderColor : Colors.white),
                  ),
                )),
          ),
          MouseRegion(
            onHover: (PointerEvent details) {
              setState(() {
                hovering4 = true;
              });
            },
            onExit: (PointerEvent details) {
              setState(() {
                hovering4 = false;
              });
            },
            child: ElevatedButton(
                onPressed: () {
                  //My Account button press
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 0.0)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth < 700 ? 7.0 : 30.0),
                  child: Text(
                    'My Account',
                    style: TextStyle(
                        fontSize: screenWidth < 700 ? 13 : 17,
                        color: hovering4 ? borderColor : Colors.white),
                  ),
                )),
          ),
        ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(3.0),
              child: Container(
                height: 3.0,
                color: burntgold.shade700,
              )
          )
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: primaryblue.shade400,
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(top: kToolbarHeight),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width > 800 ? 800 : null,
                      height: MediaQuery.of(context).size.height/1.3 ,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: primaryblue.shade500,
                        border: Border.all(
                          color: burntgold.shade700,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: FeedbackVisualizationPage()),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: SizedBox(
        height: 50,
        child: Footer(
          backgroundColor: const Color(0XFF101C2B),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Email: groupA3@gmail.com',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'InriaSerif'),
              ),
              Text(
                'Phone: 0710293847',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'InriaSerif'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackVisualizationPage extends StatefulWidget {
  @override
  _FeedbackVisualizationPageState createState() =>
      _FeedbackVisualizationPageState();
}

class _FeedbackVisualizationPageState extends State<FeedbackVisualizationPage> {
  List<Map<String, dynamic>> feedbacks = [
    {
      'institution': 'City Hall',
      'feedback': [
        {
          'user': 'User1',
          'document': 'Identity Card',
          'comment':
              'The service was fast and efficient, I got my ID card in less than 30 minutes! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
        {
          'user': 'User2',
          'document': 'Propriety Tax',
          'comment':
              'The online platform for paying my propriety tax was easy to use, but I wish there were more payment options available. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
        {
          'user': 'User3',
          'document': 'Complaint',
          'comment':
              'I had a complaint about a pothole on my street and the City Hall responded promptly and fixed it within a week. Thank you! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
      ]
    },
    {
      'institution': 'Municipal Police',
      'feedback': [
        {
          'user': 'User1',
          'document': 'Complaint',
          'comment':
              'I had a complaint about noise pollution in my neighborhood and the Municipal Police took care of it in a timely manner. Great job! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
        {
          'user': 'User2',
          'document': 'Complaint',
          'comment':
              'I reported a theft in my apartment and the Municipal Police investigated it thoroughly and recovered my stolen items. Thank you for your hard work! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
      ]
    },
    {
      'institution': 'Court House',
      'feedback': [
        {
          'user': 'User1',
          'document': 'Divorce Certificate',
          'comment':
              'The process of getting a divorce certificate was smooth and hassle-free. Thank you! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
        {
          'user': 'User2',
          'document': 'Marriage Certificate',
          'comment':
              'The Court House staff were very helpful in guiding me through the process of getting a marriage certificate. Thank you! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
      ]
    },
    {
      'institution': 'D.R.P.C.I.V',
      'feedback': [
        {
          'user': 'User1',
          'document': 'Driver\'s License',
          'comment':
              'The process of getting a driver\'s license was straightforward and the staff were helpful in answering my questions. Thank you! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
        {
          'user': 'User2',
          'document': 'Vehicle Registration',
          'comment':
              'I had to register my new car and the online platform for doing so was easy to use and saved me a lot of time. Thank you! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
        {
          'user': 'User3',
          'document': 'Driver\'s License',
          'comment':
              'I had to renew my driver\'s license and the process was quick and efficient. Thank you! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed commodo sit amet felis a egestas. Sed eu nisi quis dolor suscipit eleifend. Praesent faucibus ultricies sem vitae gravida. Quisque lacinia faucibus arcu vel tincidunt. Suspendisse potenti. Pellentesque id sodales sapien. '
        },
      ]
    }
  ];

// List of available institutions
  final List<String> institutions = [
    'City Hall',
    'Municipal Police',
    'Court House',
    'D.R.P.C.I.V'
  ];

// Currently selected institution
  String selectedInstitution = 'City Hall';

// Feedback text controller
  final TextEditingController feedbackController = TextEditingController();

  // Display the feedback for the currently selected institution
  List<Widget> displayFeedback(List<Map<String, dynamic>> feedbackList) {
    return feedbackList.map((feedback) {
      return Card(
        margin: const EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            width: 2,
            color: burntgold,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${feedback['user']} - ${feedback['document']} ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 25),
              Text(
                feedback['comment'],
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: DropdownButton(
                    hint: Text('Select Institution'),
                    value: selectedInstitution,
                    items: institutions
                        .map(
                          (institution) => DropdownMenuItem(
                            child: Text('Feedback for ' + institution,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            value: institution,
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedInstitution = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: MediaQuery.of(context).size.height,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.height*0.65,
                            child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: feedbacks.length,
                            itemBuilder: (context, index) {
                              final feedback = feedbacks[index];
                              if (feedback['institution'] ==
                                  selectedInstitution) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: burntgold,
                                        width: 3.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: burntgold.shade900,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ...displayFeedback(
                                            feedback['feedback']),
                                      ],
                                    ),
                                  ),
                                );
                              }
                              return Container();
                            },
                          ),
                        ),
                    ),
                    );
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Feedback',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your feedback here...',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 5,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Add code here to handle user feedback
                        },
                        child: Text('Submit'),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackListPage extends StatefulWidget {
  @override
  _FeedbackListPageState createState() => _FeedbackListPageState();
}

class _FeedbackListPageState extends State<FeedbackListPage> {
  List<Map<String, dynamic>> feedbacks = [
    {
      'institution': 'City Hall',
      'feedbackEntries': [
        {
          'user': 'User1',
          'document': 'Identity Card',
          'feedback': 'Great service!'
        },
        {
          'user': 'User2',
          'document': 'Propriety Tax',
          'feedback': 'Long waiting times.'
        },
        {
          'user': 'User3',
          'document': 'Complaint',
          'feedback': 'Prompt response.'
        },
      ],
    },
    {
      'institution': 'Municipal Police',
      'feedbackEntries': [
        {
          'user': 'User1',
          'document': 'Complaint',
          'feedback': 'Handled professionally.'
        },
        {
          'user': 'User4',
          'document': 'Identity Card',
          'feedback': 'Friendly staff.'
        },
      ],
    },
    // add more institutions and feedback entries here
  ];

  void _deleteFeedbackEntry(String institution, int index) {
    setState(() {
      feedbacks
          .firstWhere(
              (data) => data['institution'] == institution)['feedbackEntries']
          .removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: ListView.builder(
        itemCount: feedbacks.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> institutionData = feedbacks[index];
          List<Map<String, String>> feedbackEntries =
              List<Map<String, String>>.from(
                  institutionData['feedbackEntries']);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.grey[300],
                child: Text(
                  institutionData['institution'],
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: feedbackEntries.length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, String> feedbackEntry = feedbackEntries[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text(feedbackEntry['feedback']!),
                      subtitle: Text(
                          'User: ${feedbackEntry['user']}, Document: ${feedbackEntry['document']}'),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteFeedbackEntry(
                            institutionData['institution'], index),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
