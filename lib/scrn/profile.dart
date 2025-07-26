import 'package:flutter/material.dart';
import 'package:tlmdcin/common%20wiget/fullscrnimage.dart';
import 'package:tlmdcin/model/userModel.dart';
import 'package:tlmdcin/scrn/medicalHistory.dart';

class Profile extends StatefulWidget {
  final UserModel user;
  const Profile({super.key, required this.user});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isExpandedInfo = false;
  @override
  Widget build(BuildContext context) {
    final double expandedHeight = 250;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: expandedHeight,
            backgroundColor: const Color.fromARGB(255, 243, 234, 206),
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // Scroll percentage হিসেব করে নিচ্ছি
                var top = constraints.biggest.height;
                bool isCollapsed = top <= kToolbarHeight + 50;

                return FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(
                    left: isCollapsed ? 14 : 0,
                    bottom: 10,
                  ),
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (isCollapsed) ...[
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(widget.user.image),
                        ),
                        SizedBox(width: 12),
                        Text(
                          widget.user.name,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 9, 70, 151),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: const Color.fromARGB(255, 9, 70, 151),
                          ),
                        ),
                      ],
                    ],
                  ),
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FullscreenImage(imagePath: widget.user.image),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(widget.user.image),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.user.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 9, 70, 151),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 234, 206),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 9, 70, 151),
                      ),
                    ),

                    SizedBox(height: 10),
                    AnimatedContainer(
                      duration: Duration(
                        milliseconds: 200,
                      ), // microseconds -> milliseconds

                      height: isExpandedInfo ? 500 : 180,
                      width: double.infinity,
                      child: Card(
                        color: const Color.fromARGB(255, 243, 234, 206),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              // 👇 এই Expanded এর মধ্যে থাকবে scrollable content
                              Expanded(
                                child: SingleChildScrollView(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isExpandedInfo = !isExpandedInfo;
                                      });
                                    },
                                    child: Column(
                                      children: [
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            'Name',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.name,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            "Age",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.age,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            "Sex",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.sex,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            'Email',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.email,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            'Phone',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.phone,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            'Address',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.address,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            "Blood Group",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.bloodGroup,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            "Blood Pressure",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.bloodPressure,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        ListTile(
                                          dense: true,
                                          title: Text(
                                            "Diabetes",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          subtitle: Text(
                                            widget.user.diabetes,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),

                                        // Add more fields as needed
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              // 👇 Toggle Arrow Button
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isExpandedInfo = !isExpandedInfo;
                                    });
                                  },
                                  child: Icon(
                                    isExpandedInfo
                                        ? Icons.expand_less
                                        : Icons.expand_more,
                                    size: 20,
                                    color: isExpandedInfo
                                        ? const Color.fromARGB(
                                            255,
                                            230,
                                            108,
                                            15,
                                          )
                                        : const Color.fromARGB(255, 9, 70, 151),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Medicalhistory(),
                          ),
                        );
                      },
                      child: Card(
                        color: const Color.fromARGB(255, 243, 234, 206),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text(
                                "Medical History",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 9, 70, 151),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 14,
                                color: const Color.fromARGB(255, 9, 70, 151),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 800), // Dummy scrollable content
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
