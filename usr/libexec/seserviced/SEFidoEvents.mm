@interface SEFidoEvents
+ (NSString)baaError;
+ (NSString)callerError;
+ (NSString)fidoKeyCreated;
+ (NSString)fidoKeyFound;
+ (NSString)fidoKeyNotFound;
+ (NSString)fidoKeySignatureGenerated;
+ (NSString)fidoVerificationFailed;
+ (NSString)fidoVerificationSucceeded;
+ (NSString)keyAttestationError;
+ (NSString)keyCreationError;
+ (NSString)keyDecodeError;
+ (NSString)keyExportError;
+ (NSString)keychainAddError;
+ (NSString)keychainNotEnabledError;
+ (NSString)keychainQueryError;
+ (NSString)serviceError;
+ (NSString)signatureError;
+ (NSString)unspecifiedError;
+ (NSString)viewNotSyncedError;
- (_TtC10seserviced12SEFidoEvents)init;
@end

@implementation SEFidoEvents

+ (NSString)fidoKeyCreated
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)fidoKeySignatureGenerated
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)fidoKeyFound
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)fidoKeyNotFound
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)fidoVerificationSucceeded
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)fidoVerificationFailed
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)callerError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)serviceError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)viewNotSyncedError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keychainNotEnabledError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keyCreationError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keyExportError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keyAttestationError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keyDecodeError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)signatureError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keychainAddError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)keychainQueryError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)baaError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)unspecifiedError
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC10seserviced12SEFidoEvents)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SEFidoEvents *)&v3 init];
}

@end