@interface TransparencyVRFVerifier
+ (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 key:(id)a7 error:(id *)a8;
+ (id)saltMessage:(id)a3 salt:(id)a4;
+ (id)verifierOfType:(int)a3 key:(id)a4;
- (BOOL)verifyMessage:(id)a3 output:(id)a4 proof:(id)a5 error:(id *)a6;
- (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 error:(id *)a7;
- (TransparencyVRFVerifier)initWithKey:(id)a3;
@end

@implementation TransparencyVRFVerifier

+ (id)verifierOfType:(int)a3 key:(id)a4
{
  v5 = a4;
  if (a3 == 3)
  {
    v6 = [[TransparencyECVRFVerifier alloc] initWithKey:v5];
    if (v6)
    {
      goto LABEL_12;
    }

    if (qword_100155F00 != -1)
    {
      sub_1000F2534();
    }

    v7 = qword_100155F08;
    if (os_log_type_enabled(qword_100155F08, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to create ECVRF_ED25519_SHA512_Elligator2 verifier, falling back to unknown algorithm", v10, 2u);
    }
  }

  if (qword_100155F00 != -1)
  {
    sub_1000F2548();
  }

  v8 = qword_100155F08;
  if (os_log_type_enabled(qword_100155F08, OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109120;
    v10[1] = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unknown VRF algorithm: %d", v10, 8u);
  }

  v6 = [[TransparencyVRFVerifier alloc] initWithKey:v5];
LABEL_12:

  return v6;
}

- (TransparencyVRFVerifier)initWithKey:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TransparencyVRFVerifier;
  v5 = [(TransparencyVRFVerifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TransparencyVRFVerifier *)v5 setKey:v4];
  }

  return v6;
}

- (BOOL)verifyMessage:(id)a3 output:(id)a4 proof:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(a6) = [TransparencyVRFVerifier verifyMessage:v12 salt:0 output:v11 proof:v10 key:v13 error:a6];

  return a6;
}

- (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(TransparencyVRFVerifier *)self key];
  LOBYTE(a7) = [TransparencyVRFVerifier verifyMessage:v15 salt:v14 output:v13 proof:v12 key:v16 error:a7];

  return a7;
}

+ (BOOL)verifyMessage:(id)a3 salt:(id)a4 output:(id)a5 proof:(id)a6 key:(id)a7 error:(id *)a8
{
  if (a8)
  {
    *a8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-135 description:@"unknown VRF algorithm", a6, a7];
  }

  return 0;
}

+ (id)saltMessage:(id)a3 salt:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableData data];
  if (v6)
  {
    v8 = +[NSData kt_dataWithUint64:length:](NSData, "kt_dataWithUint64:length:", [v6 length], 8);
    [v7 appendData:v8];

    [v7 appendData:v6];
    v9 = +[NSData kt_dataWithUint64:length:](NSData, "kt_dataWithUint64:length:", [v5 length], 8);
    [v7 appendData:v9];
  }

  [v7 appendData:v5];

  return v7;
}

@end