@interface TransparencyLogEntryVerifier
- (BOOL)verifyInclusionOfLogLeaf:(id)leaf position:(unint64_t)position treeSize:(unint64_t)size treeHead:(id)head hashPath:(id)path error:(id *)error;
- (TransparencyLogEntryVerifier)initWithTrustedKeyStore:(id)store;
- (unint64_t)verifyLogEntryWithLogLeaf:(id)leaf position:(unint64_t)position hashesToRoot:(id)root signedLogHead:(id)head error:(id *)error;
@end

@implementation TransparencyLogEntryVerifier

- (TransparencyLogEntryVerifier)initWithTrustedKeyStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = TransparencyLogEntryVerifier;
  v6 = [(TransparencyLogEntryVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustedKeyStore, store);
  }

  return v7;
}

- (BOOL)verifyInclusionOfLogLeaf:(id)leaf position:(unint64_t)position treeSize:(unint64_t)size treeHead:(id)head hashPath:(id)path error:(id *)error
{
  leafCopy = leaf;
  headCopy = head;
  pathCopy = path;
  if (position >= size)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-49 description:@"leaf index is too big for tree size"];
    }

    if (qword_10039CD38 != -1)
    {
      sub_10025F444();
    }

    v30 = qword_10039CD40;
    if (os_log_type_enabled(qword_10039CD40, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "leaf index is too big for tree size", buf, 2u);
    }

    goto LABEL_33;
  }

  errorCopy = error;
  context = objc_autoreleasePoolPush();
  buf[0] = 0;
  v50 = 1;
  v16 = [NSMutableData dataWithBytes:buf length:1];
  v45 = leafCopy;
  [v16 appendData:leafCopy];
  v41 = v16;
  v17 = size - 1;
  v40 = SecSHA256DigestCreateFromData();
  v18 = [v40 copy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v44 = pathCopy;
  v19 = pathCopy;
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

          v29 = errorCopy;
          goto LABEL_25;
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        v26 = [NSMutableData dataWithBytes:&v50 length:1];
        v27 = v26;
        if ((position & 1) != 0 || position == v17)
        {
          [v26 appendData:v25];
          [v27 appendData:v24];
          v18 = SecSHA256DigestCreateFromData();
          if ((position & 1) == 0)
          {
            do
            {
              positionCopy = position;
              position >>= 1;
              v17 >>= 1;
            }

            while (positionCopy && (positionCopy & 2) == 0);
          }
        }

        else
        {
          [v26 appendData:v24];
          [v27 appendData:v25];
          v18 = SecSHA256DigestCreateFromData();
        }

        position >>= 1;
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

  v29 = errorCopy;
  if (v17)
  {

    objc_autoreleasePoolPop(context);
    leafCopy = v45;
LABEL_27:
    if (v29)
    {
      kt_hexString = [leafCopy kt_hexString];
      kt_hexString2 = [headCopy kt_hexString];
      *v29 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-45 description:@"failed to verify inclusion proof for leaf (%@) in head (%@)", kt_hexString, kt_hexString2];
    }

    if (qword_10039CD38 != -1)
    {
      sub_10025F458();
    }

    pathCopy = v44;
    v35 = qword_10039CD40;
    if (os_log_type_enabled(qword_10039CD40, OS_LOG_TYPE_ERROR))
    {
      v36 = v35;
      kt_hexString3 = [leafCopy kt_hexString];
      kt_hexString4 = [headCopy kt_hexString];
      *buf = 138412546;
      v52 = kt_hexString3;
      v53 = 2112;
      v54 = kt_hexString4;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof for leaf (%@) in head (%@)", buf, 0x16u);
    }

LABEL_33:
    v32 = 0;
    goto LABEL_34;
  }

  v24 = v18;
LABEL_25:
  v31 = [v24 isEqualToData:headCopy];

  objc_autoreleasePoolPop(context);
  leafCopy = v45;
  if ((v31 & 1) == 0)
  {
    goto LABEL_27;
  }

  v32 = 1;
  pathCopy = v44;
LABEL_34:

  return v32;
}

- (unint64_t)verifyLogEntryWithLogLeaf:(id)leaf position:(unint64_t)position hashesToRoot:(id)root signedLogHead:(id)head error:(id *)error
{
  leafCopy = leaf;
  rootCopy = root;
  headCopy = head;
  v15 = [headCopy verifyWithError:error];
  if (v15 == 1)
  {
    parsedLogHead = [headCopy parsedLogHead];
    logSize = [parsedLogHead logSize];
    parsedLogHead2 = [headCopy parsedLogHead];
    logHeadHash = [parsedLogHead2 logHeadHash];
    v20 = [(TransparencyLogEntryVerifier *)self verifyInclusionOfLogLeaf:leafCopy position:position treeSize:logSize treeHead:logHeadHash hashPath:rootCopy error:error];

    if (v20)
    {
      v15 = 1;
    }

    else
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-44 underlyingError:*error description:@"failed to verify inclusion proof for log leaf in log head"];
      }

      if (qword_10039CD38 != -1)
      {
        sub_10025F480();
      }

      v21 = qword_10039CD40;
      if (os_log_type_enabled(qword_10039CD40, OS_LOG_TYPE_ERROR))
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