
import "build.dart";
import 'client_version.dart';
import 'git_commit_id.dart';

// ignore: non_constant_identifier_names
BUILD_DESC_FROM_COMMIT(maj,min,rev,build,commit) => "v$maj.$min.$rev.$build-g$commit";

// ignore: non_constant_identifier_names
BUILD_DESC_FROM_UNKNOWN(maj,min,rev,build) => "v$maj.$min.$rev.$build-unk";

//#ifndef BUILD_DESC
//#    ifdef GIT_COMMIT_ID
// ignore: non_constant_identifier_names
BUILD_DESC() => BUILD_DESC_FROM_COMMIT(CLIENT_VERSION_MAJOR, CLIENT_VERSION_MINOR, CLIENT_VERSION_REVISION, CLIENT_VERSION_BUILD, GIT_COMMIT_ID());
//#    else
//#        define BUILD_DESC BUILD_DESC_FROM_UNKNOWN(CLIENT_VERSION_MAJOR, CLIENT_VERSION_MINOR, CLIENT_VERSION_REVISION, CLIENT_VERSION_BUILD)

//#ifndef BUILD_DATE
//#    ifdef GIT_COMMIT_DATE
// ignore: non_constant_identifier_names
BUILD_DATE() => GIT_COMMIT_DATE();
//#    else
//#        define BUILD_DATE __DATE__ ", " __TIME__

// ignore: non_constant_identifier_names
final String CLIENT_BUILD = '${BUILD_DESC()} $CLIENT_VERSION_SUFFIX';
// ignore: non_constant_identifier_names
final String CLIENT_DATE = BUILD_DATE();

class ClientModel {
  formatFullVersion() => CLIENT_BUILD;
}