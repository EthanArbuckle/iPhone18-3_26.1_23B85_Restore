@interface TransparencyVRFVerifier
+ (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof key:(id)key error:(id *)error;
+ (id)saltMessage:(id)message salt:(id)salt;
+ (id)verifierOfType:(int)type key:(id)key;
- (BOOL)verifyMessage:(id)message output:(id)output proof:(id)proof error:(id *)error;
- (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof error:(id *)error;
- (TransparencyVRFVerifier)initWithKey:(id)key;
@end

@implementation TransparencyVRFVerifier

+ (id)verifierOfType:(int)type key:(id)key
{
  keyCopy = key;
  if (type == 3)
  {
    v6 = [[TransparencyECVRFVerifier alloc] initWithKey:keyCopy];
    if (v6)
    {
      goto LABEL_12;
    }

    if (qword_10039CD68 != -1)
    {
      sub_10025F598();
    }

    v7 = qword_10039CD70;
    if (os_log_type_enabled(qword_10039CD70, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create ECVRF_ED25519_SHA512_Elligator2 verifier, falling back to unknown algorithm", v10, 2u);
    }
  }

  if (qword_10039CD68 != -1)
  {
    sub_10025F5AC();
  }

  v8 = qword_10039CD70;
  if (os_log_type_enabled(qword_10039CD70, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109120;
    v10[1] = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unknown VRF algorithm: %d", v10, 8u);
  }

  v6 = [[TransparencyVRFVerifier alloc] initWithKey:keyCopy];
LABEL_12:

  return v6;
}

- (TransparencyVRFVerifier)initWithKey:(id)key
{
  keyCopy = key;
  v8.receiver = self;
  v8.super_class = TransparencyVRFVerifier;
  v5 = [(TransparencyVRFVerifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TransparencyVRFVerifier *)v5 setKey:keyCopy];
  }

  return v6;
}

- (BOOL)verifyMessage:(id)message output:(id)output proof:(id)proof error:(id *)error
{
  proofCopy = proof;
  outputCopy = output;
  messageCopy = message;
  v13 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(error) = [TransparencyVRFVerifier verifyMessage:messageCopy salt:0 output:outputCopy proof:proofCopy key:v13 error:error];

  return error;
}

- (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof error:(id *)error
{
  proofCopy = proof;
  outputCopy = output;
  saltCopy = salt;
  messageCopy = message;
  v16 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(error) = [TransparencyVRFVerifier verifyMessage:messageCopy salt:saltCopy output:outputCopy proof:proofCopy key:v16 error:error];

  return error;
}

+ (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof key:(id)key error:(id *)error
{
  if (error)
  {
    *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-135 description:@"unknown VRF algorithm", proof, key];
  }

  return 0;
}

+ (id)saltMessage:(id)message salt:(id)salt
{
  messageCopy = message;
  saltCopy = salt;
  v7 = +[NSMutableData data];
  if (saltCopy)
  {
    v8 = +[NSData kt_dataWithUint64:length:](NSData, "kt_dataWithUint64:length:", [saltCopy length], 8);
    [v7 appendData:v8];

    [v7 appendData:saltCopy];
    v9 = +[NSData kt_dataWithUint64:length:](NSData, "kt_dataWithUint64:length:", [messageCopy length], 8);
    [v7 appendData:v9];
  }

  [v7 appendData:messageCopy];

  return v7;
}

@end