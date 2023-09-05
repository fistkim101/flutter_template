import '../../barrel.dart';
import 'environment.dart';

void main() {
  final Environment environment =
  Environment.newInstance(EnvironmentType.PRODUCTION);
  environment.run();
}
