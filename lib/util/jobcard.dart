import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final double hourlyRate;
  final bool darkMode;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
    required this.darkMode

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(15),
          color: darkMode ? Colors.grey[900] : Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      height: 60,
                      child: Image.asset(logoImagePath),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: const Text(
                        'Meio período',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: darkMode ? Colors.grey[800] : Colors.grey[500],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  jobTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: darkMode ? Colors.white : Colors.black
                  ),
                ),
              ),
              Text(
                  'R\$'+hourlyRate.toStringAsFixed(3)+'/mês',
                  style: TextStyle(
                    color: darkMode ? Colors.grey[600] : Colors.black
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
