import '../../barrel.dart';
import 'environment.dart';

void main() {
  final Environment environment =
  Environment.newInstance(EnvironmentType.DEVELOPMENT);
  environment.run();
}
