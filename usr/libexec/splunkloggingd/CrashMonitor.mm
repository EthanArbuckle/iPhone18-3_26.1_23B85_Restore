@interface CrashMonitor
- (_TtC14splunkloggingd12CrashMonitor)init;
- (void)didWriteDiagnosticLog:(id)log logId:(id)id logFilePath:(id)path logInfo:(id)info error:(id)error;
@end

@implementation CrashMonitor

- (_TtC14splunkloggingd12CrashMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didWriteDiagnosticLog:(id)log logId:(id)id logFilePath:(id)path logInfo:(id)info error:(id)error
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (path)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    path = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  errorCopy = error;
  selfCopy = self;
  sub_10000CA24(v10, v12, v13, v15, v16, path, v18, error);
}

@end