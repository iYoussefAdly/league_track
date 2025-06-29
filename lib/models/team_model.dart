import 'package:hive/hive.dart';
part 'team_model.g.dart';

@HiveType(typeId: 0)
class TeamModel extends HiveObject {
  @HiveField(0)
  final String teamName;
  @HiveField(1)
  int points;
  TeamModel({required this.teamName, this.points = 0});
}
