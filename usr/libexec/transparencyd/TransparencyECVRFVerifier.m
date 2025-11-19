@interface TransparencyECVRFVerifier
+ (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 key:(id)a7 error:(id *)a8;
- (BOOL)verifyMessage:(id)a3 output:(id)a4 proof:(id)a5 error:(id *)a6;
- (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 error:(id *)a7;
- (TransparencyECVRFVerifier)initWithKey:(id)a3;
@end

@implementation TransparencyECVRFVerifier

- (TransparencyECVRFVerifier)initWithKey:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TransparencyECVRFVerifier;
  v5 = [(TransparencyVRFVerifier *)&v11 initWithKey:v4];
  if (v5 && (ccvrf_factory_irtfdraft03_default(), v6 = ccvrf_sizeof_public_key(), [v4 vrfKey], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6 != v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (BOOL)verifyMessage:(id)a3 output:(id)a4 proof:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(a6) = [TransparencyECVRFVerifier verifyMessage:v12 salt:0 output:v11 proof:v10 key:v13 error:a6];

  return a6;
}

- (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(a7) = [TransparencyECVRFVerifier verifyMessage:v15 salt:v14 output:v13 proof:v12 key:v16 error:a7];

  return a7;
}

+ (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 key:(id)a7 error:(id *)a8
{
  v11 = a7;
  v12 = a6;
  v13 = [TransparencyVRFVerifier saltMessage:a3 salt:a4];
  ccvrf_factory_irtfdraft03_default();
  v14 = [v11 vrfKey];
  [v14 length];
  v15 = [v11 vrfKey];

  [v15 bytes];
  [v13 length];
  [v13 bytes];
  [v12 length];
  [v12 bytes];

  v16 = ccvrf_verify();
  if (v16)
  {
    if (a8)
    {
      *a8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-2 description:@"ECVRF verification failed with result %d", v16];
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