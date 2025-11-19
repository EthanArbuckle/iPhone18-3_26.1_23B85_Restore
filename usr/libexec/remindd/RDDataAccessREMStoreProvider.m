@interface RDDataAccessREMStoreProvider
- (BOOL)rd_isPersonIDSaltInitiallyNilError:(id)a3;
- (id)rd_base64EncodedHMACStringFromString:(id)a3 usingPersonIDSalt:(id)a4;
- (id)rd_observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:(id)a3 successHandler:(id)a4 errorHandler:(id)a5;
- (id)rem_saveRequestForDataAccess;
- (id)rem_storeForDataAccess;
- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges:(id)a3;
@end

@implementation RDDataAccessREMStoreProvider

- (id)rem_storeForDataAccess
{
  v2 = *self->rdDaemonController;
  v3 = objc_allocWithZone(REMStore);

  v4 = [v3 initWithDaemonController:v2];
  [v4 setMode:2];

  return v4;
}

- (id)rem_saveRequestForDataAccess
{
  v2 = *self->rdDaemonController;
  v3 = objc_allocWithZone(REMStore);

  v4 = [v3 initWithDaemonController:v2];
  [v4 setMode:2];
  v5 = [objc_allocWithZone(REMSaveRequest) initWithStore:v4];

  [v5 setAuthor:DADREMSaveRequestAuthorKey];

  return v5;
}

- (id)rd_observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:(id)a3 successHandler:(id)a4 errorHandler:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = a3;

  v12 = sub_10075BCA8(v11, sub_10075CA8C, v9, sub_10075CAE4, v10);

  return v12;
}

- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges:(id)a3
{
  type metadata accessor for RDAccountPersonIDSaltObserver();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *self->storeController;

    [v6 unobservePrimaryCloudKitAccountPersonIDSaltChanges:v5];
  }

  else
  {
    v7 = qword_100936860;
    swift_unknownObjectRetain();

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100951C70);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("Implementation of REMDAAccountPropertiesObserving must be actually RDAccountPersonIDSaltObserver", 96, 2);
    __break(1u);
  }
}

- (BOOL)rd_isPersonIDSaltInitiallyNilError:(id)a3
{
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v4 = a3;
  v5 = _convertErrorToNSError(_:)();
  if (qword_1009365C0 != -1)
  {
    swift_once();
  }

  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

- (id)rd_base64EncodedHMACStringFromString:(id)a3 usingPersonIDSalt:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  String.base64EncodedHMACString(using:)();
  v10 = v9;
  sub_10001BBA0(v6, v8);

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end