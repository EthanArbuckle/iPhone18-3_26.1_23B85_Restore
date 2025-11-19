@interface TransparencyConsistencyProofVerifier
- (BOOL)verifyConsistencyProof:(id)a3 startHash:(id)a4 startSize:(unint64_t)a5 endHash:(id)a6 endSize:(unint64_t)a7 error:(id *)a8;
- (TransparencyConsistencyProofVerifier)initWithTrustedKeyStore:(id)a3;
- (unint64_t)verifyConsistencyProof:(id)a3 startLogHead:(id)a4 endLogHead:(id)a5 error:(id *)a6;
@end

@implementation TransparencyConsistencyProofVerifier

- (TransparencyConsistencyProofVerifier)initWithTrustedKeyStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransparencyConsistencyProofVerifier;
  v6 = [(TransparencyConsistencyProofVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustedKeyStore, a3);
  }

  return v7;
}

- (BOOL)verifyConsistencyProof:(id)a3 startHash:(id)a4 startSize:(unint64_t)a5 endHash:(id)a6 endSize:(unint64_t)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = v15;
  if (!a5 || a7 <= a5)
  {
    if (a8)
    {
      *a8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-180 description:@"first size (%llu) is <= 0 or second size (%llu) is <= first", a5, a7];
    }

    if (qword_100156030 != -1)
    {
      sub_1000F264C();
    }

    v37 = qword_100156038;
    if (os_log_type_enabled(qword_100156038, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v60 = a5;
      v61 = 2048;
      v62 = a7;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "first size (%llu) is <= 0 or second size (%llu) is <= first", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v49 = v15;
  context = objc_autoreleasePoolPush();
  v17 = [v13 mutableCopy];
  v18 = v17;
  v19 = a5 - 1;
  if ((a5 & (a5 - 1)) == 0)
  {
    [v17 insertObject:v14 atIndex:0];
  }

  v20 = a7 - 1;
  v50 = v14;
  v51 = v13;
  v47 = a8;
  if (v19)
  {
    do
    {
      v21 = v19 >> 1;
      v20 >>= 1;
      v22 = v19;
      v19 >>= 1;
    }

    while ((v22 & 2) != 0);
  }

  else
  {
    v21 = a5 - 1;
  }

  v23 = [v18 objectAtIndexedSubscript:0];
  v24 = [v18 objectAtIndexedSubscript:0];
  [v18 removeObjectAtIndex:0];
  buf[0] = 1;
  v25 = [NSData dataWithBytes:buf length:1];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v18;
  v26 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v26)
  {
    v27 = v26;
    v53 = *v55;
    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v55 != v53)
        {
          objc_enumerationMutation(obj);
        }

        if (!v20)
        {

          v14 = v50;
          goto LABEL_32;
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        v30 = [v25 mutableCopy];
        v31 = [v25 mutableCopy];
        v32 = v31;
        if ((v21 & 1) != 0 || v21 == v20)
        {
          [v30 appendData:v29];
          [v30 appendData:v23];
          [v32 appendData:v29];
          [v32 appendData:v24];
          v34 = [v30 kt_sha256];

          v35 = [v32 kt_sha256];

          if ((v21 & 1) == 0)
          {
            do
            {
              v36 = v21;
              v21 >>= 1;
              v20 >>= 1;
            }

            while (v36 && (v36 & 2) == 0);
          }

          v24 = v35;
          v23 = v34;
        }

        else
        {
          [v31 appendData:v24];
          [v32 appendData:v29];
          v33 = [v32 kt_sha256];

          v24 = v33;
        }

        v21 >>= 1;
        v20 >>= 1;
      }

      v27 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v14 = v50;
  if (v20)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (![v23 isEqualToData:v14])
  {
LABEL_35:

    objc_autoreleasePoolPop(context);
    v16 = v49;
    goto LABEL_36;
  }

  v16 = v49;
  v38 = [v24 isEqualToData:v49];

  objc_autoreleasePoolPop(context);
  if ((v38 & 1) == 0)
  {
LABEL_36:
    v13 = v51;
    if (v47)
    {
      v40 = [v14 kt_hexString];
      v41 = [v16 kt_hexString];
      *v47 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-179 description:@"failed to verify consistency proof from head %@ to head %@", v40, v41];
    }

    if (qword_100156030 != -1)
    {
      sub_1000F2660();
    }

    v42 = qword_100156038;
    if (os_log_type_enabled(qword_100156038, OS_LOG_TYPE_ERROR))
    {
      v43 = v42;
      v44 = [v14 kt_hexString];
      v45 = [v16 kt_hexString];
      *buf = 138412546;
      v60 = v44;
      v61 = 2112;
      v62 = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "failed to verify consistency proof from head %@ to head %@", buf, 0x16u);
    }

LABEL_42:
    v39 = 0;
    goto LABEL_43;
  }

  v39 = 1;
  v13 = v51;
LABEL_43:

  return v39;
}

- (unint64_t)verifyConsistencyProof:(id)a3 startLogHead:(id)a4 endLogHead:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 verifyWithError:a6];
  if (v13 == 1 && (v13 = [v12 verifyWithError:a6], v13 == 1))
  {
    v24 = [v11 parsedLogHead];
    v23 = [v24 logHeadHash];
    v14 = [v11 parsedLogHead];
    v15 = [v14 logSize];
    v16 = [v12 parsedLogHead];
    v17 = [v16 logHeadHash];
    v18 = [v12 parsedLogHead];
    v19 = -[TransparencyConsistencyProofVerifier verifyConsistencyProof:startHash:startSize:endHash:endSize:error:](self, "verifyConsistencyProof:startHash:startSize:endHash:endSize:error:", v10, v23, v15, v17, [v18 logSize], a6);

    v20 = v19;
  }

  else
  {
    v20 = v13;
    if (a6)
    {
      *a6 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-188 underlyingError:*a6 description:@"SLH in consistency proof failed signature verification"];
    }

    if (qword_100156030 != -1)
    {
      sub_1000F2688();
    }

    v21 = qword_100156038;
    if (os_log_type_enabled(qword_100156038, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SLH in consistency proof failed signature verification", buf, 2u);
    }
  }

  return v20;
}

@end