import 'package:flutter/material.dart';
import '../models/job_entity.dart';

class JobCard extends StatelessWidget {
  final JobEntity job;
  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(job.title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(job.company),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          // Navigate to details
        },
      ),
    );
  }
}
