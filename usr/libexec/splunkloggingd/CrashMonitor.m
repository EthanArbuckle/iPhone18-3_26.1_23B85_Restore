@interface CrashMonitor
- (_TtC14splunkloggingd12CrashMonitor)init;
- (void)didWriteDiagnosticLog:(id)a3 logId:(id)a4 logFilePath:(id)a5 logInfo:(id)a6 error:(id)a7;
@end

@implementation CrashMonitor

- (_TtC14splunkloggingd12CrashMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didWriteDiagnosticLog:(id)a3 logId:(id)a4 logFilePath:(id)a5 logInfo:(id)a6 error:(id)a7
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (a5)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = a7;
  v20 = self;
  sub_10000CA24(v10, v12, v13, v15, v16, a5, v18, a7);
}

@end