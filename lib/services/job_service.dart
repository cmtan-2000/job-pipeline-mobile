import 'package:dio/dio.dart';
import '../models/job_entity.dart';

class JobService {
  final Dio _dio = Dio(BaseOptions(
    // 10.0.2.2 is the special address for Android Emulator to hit localhost
    baseUrl: 'http://localhost:5179/api',
    connectTimeout: const Duration(seconds: 5),
  ));

  Future<List<JobEntity>> fetchJobs() async {
    try {
      final response = await _dio.get('/jobs');

      // Mapping the JSON list to our JobEntity models
      return (response.data as List)
          .map((json) => JobEntity.fromJson(json))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch jobs: $e');
    }
  }

  Future<void> createJob(JobEntity job) async {
    try {
      await _dio.post('/jobs', data: job.toJson());
    } catch (e) {
      throw Exception('Failed to create job: $e');
    }
  }
}
