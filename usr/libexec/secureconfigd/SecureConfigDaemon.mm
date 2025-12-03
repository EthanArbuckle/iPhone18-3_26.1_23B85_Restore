@interface SecureConfigDaemon
- (void)registerConfigWithInputData:(id)data metadata:(id)metadata reply:(id)reply;
- (void)registerParametersWithParametersJson:(id)json securityPolicy:(id)policy reply:(id)reply;
@end

@implementation SecureConfigDaemon

- (void)registerConfigWithInputData:(id)data metadata:(id)metadata reply:(id)reply
{
  v8 = _Block_copy(reply);
  dataCopy = data;
  metadataCopy = metadata;

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v8);
  sub_100003140(v11, v13, v14, self, v8);
  _Block_release(v8);
  _Block_release(v8);

  sub_100001FD8(v11, v13);
}

- (void)registerParametersWithParametersJson:(id)json securityPolicy:(id)policy reply:(id)reply
{
  v7 = _Block_copy(reply);
  jsonCopy = json;

  policyCopy = policy;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (policyCopy)
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