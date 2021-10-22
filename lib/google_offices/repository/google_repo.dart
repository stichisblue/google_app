import 'package:dio/dio.dart';
import 'package:project2211/google_offices/models/google_offices_model.dart';

const googleUrl = "https://about.google/static/data/locations.json";

class GoogleRepo {
  final Dio dio = Dio();

  Future<GoogleOffices> getGoogleOffices() async {
    final res = await dio.get(googleUrl);
    GoogleOffices googleOffices = GoogleOffices.fromJson(res.data);
    return googleOffices;
  }
}
