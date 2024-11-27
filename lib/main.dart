import 'package:each_job/data/api_service_impl_mock.dart';
import 'package:each_job/di/di_container.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/table_data/table_data.dart';
import 'package:each_job/ui/bloc/job_bloc.dart';
import 'package:each_job/ui/job_page.dart';
import 'package:each_job/utils/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  final apiService = DiContainer().apiService;
  final [
    professions as List<Profession>,
    areas as List<Area>,
    grades as List<Grade>
  ] = await Future.wait([
    apiService.getProfessions(),
    apiService.getAreas(),
    apiService.getGrades()
  ]);
  runApp(
    BlocProvider<JobBloc>(
      create: (context) => JobBloc(
        tableData: TableData(areas: areas, professions: professions, grades: grades)
      ),
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Each job',
      theme: AppThemes.commonTheme,
      home: const JobPage(),
    );
  }
}