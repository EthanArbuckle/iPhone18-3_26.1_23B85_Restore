@interface SecureConfigDaemon
- (void)registerConfigWithInputData:(id)a3 metadata:(id)a4 reply:(id)a5;
- (void)registerParametersWithParametersJson:(id)a3 securityPolicy:(id)a4 reply:(id)a5;
@end

@implementation SecureConfigDaemon

- (void)registerConfigWithInputData:(id)a3 metadata:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v8);
  sub_100003140(v11, v13, v14, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  sub_100001FD8(v11, v13);
}

- (void)registerParametersWithParametersJson:(id)a3 securityPolicy:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a3;

  v9 = a4;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v9)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  _Block_copy(v7);
  sub_10000340C(v10, v12, v13, v15, v7);
  _Block_release(v7);
  _Block_release(v7);

  sub_100001FD8(v10, v12);
}

@end