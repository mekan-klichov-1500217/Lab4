import 'dart:async';

Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => 'Report generated!');
}

Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Report generated!';
}

Future<int> fetchUserId() {
  return Future.delayed(Duration(seconds: 1), () => 123);
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return 'User name for ID $userId is Mekan';
}

Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Config OK';
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Resources Loaded';
}

Future<void> main() async {
  //Task 2
  generateReport().then((result) {
    print('$result');
  });

  //Task 3
  String report = await generateReportAsync();
  print('$report');

  //Task 4
  fetchUserId().then((id) {
    return fetchUserDetails(id);
  }).then((details) {
    print('$details');
  });

  //Task 5
  var results = await Future.wait([
    fetchConfiguration(),
    loadResources(),
  ]);
  print('System Ready with -> ${results[0]} & ${results[1]}');
}
