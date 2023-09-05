import '../../barrel.dart';
import 'environment.dart';

void main() {
  final Environment environment =
      Environment.newInstance(EnvironmentType.LOCAL);
  environment.run();
}
