import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField()
  static String SUPABASE_URL = _Env.SUPABASE_URL;
  @EnviedField()
  static String SUPABASE_ANON_KEY = _Env.SUPABASE_ANON_KEY;
  @EnviedField()
  static String SUPABASE_SERVICE_ROLE_KEY = _Env.SUPABASE_SERVICE_ROLE_KEY;
}
