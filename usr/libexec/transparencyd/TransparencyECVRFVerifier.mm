@interface TransparencyECVRFVerifier
+ (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof key:(id)key error:(id *)error;
- (BOOL)verifyMessage:(id)message output:(id)output proof:(id)proof error:(id *)error;
- (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof error:(id *)error;
- (TransparencyECVRFVerifier)initWithKey:(id)key;
@end

@implementation TransparencyECVRFVerifier

- (TransparencyECVRFVerifier)initWithKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = TransparencyECVRFVerifier;
  v5 = [(TransparencyVRFVerifier *)&v11 initWithKey:keyCopy];
  if (v5 && (ccvrf_factory_irtfdraft03_default(), v6 = ccvrf_sizeof_public_key(), [keyCopy vrfKey], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6 != v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (BOOL)verifyMessage:(id)message output:(id)output proof:(id)proof error:(id *)error
{
  proofCopy = proof;
  outputCopy = output;
  messageCopy = message;
  v13 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(error) = [TransparencyECVRFVerifier verifyMessage:messageCopy salt:0 output:outputCopy proof:proofCopy key:v13 error:error];

  return error;
}

- (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof error:(id *)error
{
  proofCopy = proof;
  outputCopy = output;
  saltCopy = salt;
  messageCopy = message;
  v16 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(error) = [TransparencyECVRFVerifier verifyMessage:messageCopy salt:saltCopy output:outputCopy proof:proofCopy key:v16 error:error];

  return error;
}

+ (BOOL)verifyMessage:(id)message salt:(id)salt output:(id)output proof:(id)proof key:(id)key error:(id *)error
{
  keyCopy = key;
  proofCopy = proof;
  v13 = [TransparencyVRFVerifier saltMessage:message salt:salt];
  ccvrf_factory_irtfdraft03_default();
  vrfKey = [keyCopy vrfKey];
  [vrfKey length];
  vrfKey2 = [keyCopy vrfKey];

  [vrfKey2 bytes];
  [v13 length];
  [v13 bytes];
  [proofCopy length];
  [proofCopy bytes];

  v16 = ccvrf_verify();
  if (v16)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-2 description:@"ECVRF verification failed with result %d", v16];
    }

    if (qword_10039CD68 != -1)
    {
      sub_10025F5D4();
    }

    v17 = qword_10039CD70;
    if (os_log_type_enabled(qword_10039CD70, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "VRF verification failed with result %d", buf, 8u);
    }
  }

  return v16 == 0;
}

@end