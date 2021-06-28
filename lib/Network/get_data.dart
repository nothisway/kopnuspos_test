import 'package:http/http.dart' as http;
import 'package:kopnuspos_test/Models/covid_case_response.dart';
import 'package:kopnuspos_test/Utils/constant.dart';

class Services {

  Future<CovidCaseResponse> getData() async {
    var url = Uri.parse(ENDPOINT);
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    CovidCaseResponse covidCaseResponse = covidCaseResponseFromJson(response.body);
    return covidCaseResponse;
  }
}