import 'package:flutter/material.dart';
import 'package:project2211/google_offices/models/google_offices_model.dart';
import 'package:project2211/google_offices/repository/google_repo.dart';

class GoogleOfficesScreen extends StatefulWidget {
  const GoogleOfficesScreen({Key? key}) : super(key: key);

  @override
  _GoogleOfficesScreenState createState() => _GoogleOfficesScreenState();
}

class _GoogleOfficesScreenState extends State<GoogleOfficesScreen> {
  bool isLoading = false;
  bool showData = false;
  GoogleRepo googleRepo = GoogleRepo();
  late GoogleOffices googleOffices;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Offices"),
      ),
      body: isLoading
          ? Center(
              child: Icon(IconData(int.parse('04n04n'))),
            )
          : showData
              ? ListView(
                  children: List.generate(
                    googleOffices.offices.length,
                    (index) => ListTile(
                      leading: Image.network(
                        googleOffices.offices[index].image,
                      ),
                      title: Text(googleOffices.offices[index].address),
                      subtitle: Text(googleOffices.offices[index].name),
                    ),
                  ),
                )
              : Center(
                  child: ElevatedButton(
                    child: const Text("Get offices"),
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      googleOffices = await googleRepo.getGoogleOffices();
                      setState(() {
                        isLoading = false;
                        showData = true;
                      });
                    },
                  ),
                ),
    );
  }
}
