@interface TransparencyLogEntryVerifier
- (BOOL)verifyInclusionOfLogLeaf:(id)a3 position:(unint64_t)a4 treeSize:(unint64_t)a5 treeHead:(id)a6 hashPath:(id)a7 error:(id *)a8;
- (TransparencyLogEntryVerifier)initWithTrustedKeyStore:(id)a3;
- (unint64_t)verifyLogEntryWithLogLeaf:(id)a3 position:(unint64_t)a4 hashesToRoot:(id)a5 signedLogHead:(id)a6 error:(id *)a7;
@end

@implementation TransparencyLogEntryVerifier

- (TransparencyLogEntryVerifier)initWithTrustedKeyStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransparencyLogEntryVerifier;
  v6 = [(TransparencyLogEntryVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustedKeyStore, a3);
  }

  return v7;
}

- (BOOL)verifyInclusionOfLogLeaf:(id)a3 position:(unint64_t)a4 treeSize:(unint64_t)a5 treeHead:(id)a6 hashPath:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if (a4 >= a5)
  {
    if (a8)
    {
      *a8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-49 description:@"leaf index is too big for tree size"];
    }

    if (qword_100156020 != -1)
    {
      sub_1000F25FC();
    }

    v30 = qword_100156028;
    if (os_log_type_enabled(qword_100156028, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "leaf index is too big for tree size", buf, 2u);
    }

    goto LABEL_33;
  }

  v43 = a8;
  context = objc_autoreleasePoolPush();
  buf[0] = 0;
  v50 = 1;
  v16 = [NSMutableData dataWithBytes:buf length:1];
  v45 = v13;
  [v16 appendData:v13];
  v41 = v16;
  v17 = a5 - 1;
  v40 = SecSHA256DigestCreateFromData();
  v18 = [v40 copy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v44 = v15;
  v19 = v15;
  v20 = [v19 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v47;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        v24 = v18;
        if (*v47 != v22)
        {
          objc_enumerationMutation(v19);
        }

        if (!v17)
        {

          v29 = v43;
          goto LABEL_25;
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        v26 = [NSMutableData dataWithBytes:&v50 length:1];
        v27 = v26;
        if ((a4 & 1) != 0 || a4 == v17)
        {
          [v26 appendData:v25];
          [v27 appendData:v24];
          v18 = SecSHA256DigestCreateFromData();
          if ((a4 & 1) == 0)
          {
            do
            {
              v28 = a4;
              a4 >>= 1;
              v17 >>= 1;
            }

            while (v28 && (v28 & 2) == 0);
          }
        }

        else
        {
          [v26 appendData:v24];
          [v27 appendData:v25];
          v18 = SecSHA256DigestCreateFromData();
        }

        a4 >>= 1;
        v17 >>= 1;
      }

      v21 = [v19 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v29 = v43;
  if (v17)
  {

    objc_autoreleasePoolPop(context);
    v13 = v45;
LABEL_27:
    if (v29)
    {
      v33 = [v13 kt_hexString];
      v34 = [v14 kt_hexString];
      *v29 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-45 description:@"failed to verify inclusion proof for leaf (%@) in head (%@)", v33, v34];
    }

    if (qword_100156020 != -1)
    {
      sub_1000F2610();
    }

    v15 = v44;
    v35 = qword_100156028;
    if (os_log_type_enabled(qword_100156028, OS_LOG_TYPE_ERROR))
    {
      v36 = v35;
      v37 = [v13 kt_hexString];
      v38 = [v14 kt_hexString];
      *buf = 138412546;
      v52 = v37;
      v53 = 2112;
      v54 = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof for leaf (%@) in head (%@)", buf, 0x16u);
    }

LABEL_33:
    v32 = 0;
    goto LABEL_34;
  }

  v24 = v18;
LABEL_25:
  v31 = [v24 isEqualToData:v14];

  objc_autoreleasePoolPop(context);
  v13 = v45;
  if ((v31 & 1) == 0)
  {
    goto LABEL_27;
  }

  v32 = 1;
  v15 = v44;
LABEL_34:

  return v32;
}

- (unint64_t)verifyLogEntryWithLogLeaf:(id)a3 position:(unint64_t)a4 hashesToRoot:(id)a5 signedLogHead:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [v14 verifyWithError:a7];
  if (v15 == 1)
  {
    v16 = [v14 parsedLogHead];
    v17 = [v16 logSize];
    v18 = [v14 parsedLogHead];
    v19 = [v18 logHeadHash];
    v20 = [(TransparencyLogEntryVerifier *)self verifyInclusionOfLogLeaf:v12 position:a4 treeSize:v17 treeHead:v19 hashPath:v13 error:a7];

    if (v20)
    {
      v15 = 1;
    }

    else
    {
      if (a7)
      {
        *a7 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-44 underlyingError:*a7 description:@"failed to verify inclusion proof for log leaf in log head"];
      }

      if (qword_100156020 != -1)
      {
        sub_1000F2638();
      }

      v21 = qword_100156028;
      if (os_log_type_enabled(qword_100156028, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof for log leaf in log head", v23, 2u);
      }

      v15 = 0;
    }
  }

  return v15;
}

@end