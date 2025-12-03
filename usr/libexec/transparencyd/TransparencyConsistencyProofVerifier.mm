@interface TransparencyConsistencyProofVerifier
- (BOOL)verifyConsistencyProof:(id)proof startHash:(id)hash startSize:(unint64_t)size endHash:(id)endHash endSize:(unint64_t)endSize error:(id *)error;
- (TransparencyConsistencyProofVerifier)initWithTrustedKeyStore:(id)store;
- (unint64_t)verifyConsistencyProof:(id)proof startLogHead:(id)head endLogHead:(id)logHead error:(id *)error;
@end

@implementation TransparencyConsistencyProofVerifier

- (TransparencyConsistencyProofVerifier)initWithTrustedKeyStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = TransparencyConsistencyProofVerifier;
  v6 = [(TransparencyConsistencyProofVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustedKeyStore, store);
  }

  return v7;
}

- (BOOL)verifyConsistencyProof:(id)proof startHash:(id)hash startSize:(unint64_t)size endHash:(id)endHash endSize:(unint64_t)endSize error:(id *)error
{
  proofCopy = proof;
  hashCopy = hash;
  endHashCopy = endHash;
  v16 = endHashCopy;
  if (!size || endSize <= size)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-180 description:@"first size (%llu) is <= 0 or second size (%llu) is <= first", size, endSize];
    }

    if (qword_10039CD18 != -1)
    {
      sub_10025F3B8();
    }

    v37 = qword_10039CD20;
    if (os_log_type_enabled(qword_10039CD20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      sizeCopy = size;
      v61 = 2048;
      endSizeCopy = endSize;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "first size (%llu) is <= 0 or second size (%llu) is <= first", buf, 0x16u);
    }

    goto LABEL_42;
  }

  v49 = endHashCopy;
  context = objc_autoreleasePoolPush();
  v17 = [proofCopy mutableCopy];
  v18 = v17;
  v19 = size - 1;
  if ((size & (size - 1)) == 0)
  {
    [v17 insertObject:hashCopy atIndex:0];
  }

  v20 = endSize - 1;
  v50 = hashCopy;
  v51 = proofCopy;
  errorCopy = error;
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
    v21 = size - 1;
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

          hashCopy = v50;
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
          kt_sha256 = [v30 kt_sha256];

          kt_sha2562 = [v32 kt_sha256];

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

          v24 = kt_sha2562;
          v23 = kt_sha256;
        }

        else
        {
          [v31 appendData:v24];
          [v32 appendData:v29];
          kt_sha2563 = [v32 kt_sha256];

          v24 = kt_sha2563;
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

  hashCopy = v50;
  if (v20)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (![v23 isEqualToData:hashCopy])
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
    proofCopy = v51;
    if (errorCopy)
    {
      kt_hexString = [hashCopy kt_hexString];
      kt_hexString2 = [v16 kt_hexString];
      *errorCopy = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-179 description:@"failed to verify consistency proof from head %@ to head %@", kt_hexString, kt_hexString2];
    }

    if (qword_10039CD18 != -1)
    {
      sub_10025F3CC();
    }

    v42 = qword_10039CD20;
    if (os_log_type_enabled(qword_10039CD20, OS_LOG_TYPE_ERROR))
    {
      v43 = v42;
      kt_hexString3 = [hashCopy kt_hexString];
      kt_hexString4 = [v16 kt_hexString];
      *buf = 138412546;
      sizeCopy = kt_hexString3;
      v61 = 2112;
      endSizeCopy = kt_hexString4;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "failed to verify consistency proof from head %@ to head %@", buf, 0x16u);
    }

LABEL_42:
    v39 = 0;
    goto LABEL_43;
  }

  v39 = 1;
  proofCopy = v51;
LABEL_43:

  return v39;
}

- (unint64_t)verifyConsistencyProof:(id)proof startLogHead:(id)head endLogHead:(id)logHead error:(id *)error
{
  proofCopy = proof;
  headCopy = head;
  logHeadCopy = logHead;
  v13 = [headCopy verifyWithError:error];
  if (v13 == 1 && (v13 = [logHeadCopy verifyWithError:error], v13 == 1))
  {
    parsedLogHead = [headCopy parsedLogHead];
    logHeadHash = [parsedLogHead logHeadHash];
    parsedLogHead2 = [headCopy parsedLogHead];
    logSize = [parsedLogHead2 logSize];
    parsedLogHead3 = [logHeadCopy parsedLogHead];
    logHeadHash2 = [parsedLogHead3 logHeadHash];
    parsedLogHead4 = [logHeadCopy parsedLogHead];
    v19 = -[TransparencyConsistencyProofVerifier verifyConsistencyProof:startHash:startSize:endHash:endSize:error:](self, "verifyConsistencyProof:startHash:startSize:endHash:endSize:error:", proofCopy, logHeadHash, logSize, logHeadHash2, [parsedLogHead4 logSize], error);

    v20 = v19;
  }

  else
  {
    v20 = v13;
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-188 underlyingError:*error description:@"SLH in consistency proof failed signature verification"];
    }

    if (qword_10039CD18 != -1)
    {
      sub_10025F3F4();
    }

    v21 = qword_10039CD20;
    if (os_log_type_enabled(qword_10039CD20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "SLH in consistency proof failed signature verification", buf, 2u);
    }
  }

  return v20;
}

@end