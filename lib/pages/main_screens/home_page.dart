import 'package:flutter/material.dart';
import 'package:flutter_app5/utillz/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/Download Free Vectors, Images, Photos & Videos _ Vecteezy.jpeg",
                      width: 50,
                    ),
                  ),
                  Text(
                    "treatMeddo",
                    style:
                        TextStyle(fontSize: 28, color: AppColors.primaryPurple),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text("Select the category to start explore"),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryPurple.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FilterChip(
                          label: Text("All"),
                          onSelected: (value) {},
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        FilterChip(
                          label: Text("MIndfullness"),
                          onSelected: (value) {},
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        FilterChip(
                          label: Text("Meditation"),
                          onSelected: (value) {},
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        FilterChip(
                          label: Text("Sleep Stories"),
                          onSelected: (value) {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
