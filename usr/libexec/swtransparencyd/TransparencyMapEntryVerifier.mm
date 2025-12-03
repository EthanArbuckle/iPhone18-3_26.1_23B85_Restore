@interface TransparencyMapEntryVerifier
+ (id)emptyAtDepth:(unint64_t)depth leafIndex:(id)index treeId:(unint64_t)id;
+ (id)interiorNodeForLeftData:(id)data rightData:(id)rightData;
+ (id)leafHash:(id)hash index:(id)index treeId:(unint64_t)id;
+ (id)peerIndexAtDepth:(unint64_t)depth leafIndex:(id)index;
+ (void)storeSMHSignatureResult:(unint64_t)result smh:(id)smh error:(id)error;
- (BOOL)verifyInclusionOfMapLeaf:(id)leaf position:(id)position treeHead:(id)head treeId:(unint64_t)id hashPath:(id)path error:(id *)error;
- (TransparencyMapEntryVerifier)initWithPositon:(id)positon trustedKeyStore:(id)store;
- (unint64_t)verifyMapEntryWithMapLeaf:(id)leaf hashesToRoot:(id)root signedMapHead:(id)head error:(id *)error;
@end

@implementation TransparencyMapEntryVerifier

- (TransparencyMapEntryVerifier)initWithPositon:(id)positon trustedKeyStore:(id)store
{
  positonCopy = positon;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = TransparencyMapEntryVerifier;
  v9 = [(TransparencyMapEntryVerifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryPosition, positon);
    objc_storeStrong(&v10->_trustedKeyStore, store);
  }

  return v10;
}

+ (id)peerIndexAtDepth:(unint64_t)depth leafIndex:(id)index
{
  indexCopy = index;
  v6 = 8 * [indexCopy length] - depth;
  v7 = [indexCopy mutableCopy];
  [v7 resetBytesInRange:{objc_msgSend(indexCopy, "length") - (v6 >> 3), v6 >> 3}];
  bytes = [v7 bytes];
  v9 = ~(v6 >> 3);
  v12 = *([indexCopy length] + bytes + v9) & (-1 << (v6 & 7)) ^ (1 << (v6 & 7));
  v10 = [indexCopy length];

  [v7 replaceBytesInRange:&v10[v9] withBytes:{1, &v12}];

  return v7;
}

+ (id)leafHash:(id)hash index:(id)index treeId:(unint64_t)id
{
  v15 = 76;
  indexCopy = index;
  hashCopy = hash;
  v9 = [NSMutableData dataWithBytes:&v15 length:1];
  v10 = [NSData kt_dataWithUint64:id length:8];
  [v9 appendData:v10];

  [v9 appendData:indexCopy];
  v11 = [indexCopy length];

  v12 = [NSData kt_dataWithUint64:8 * v11 length:4];
  [v9 appendData:v12];

  [v9 appendData:hashCopy];
  kt_sha256 = [v9 kt_sha256];

  return kt_sha256;
}

+ (id)interiorNodeForLeftData:(id)data rightData:(id)rightData
{
  rightDataCopy = rightData;
  v6 = [NSMutableData dataWithData:data];
  [v6 appendData:rightDataCopy];

  kt_sha256 = [v6 kt_sha256];

  return kt_sha256;
}

+ (id)emptyAtDepth:(unint64_t)depth leafIndex:(id)index treeId:(unint64_t)id
{
  v13 = 69;
  v7 = [TransparencyMapEntryVerifier peerIndexAtDepth:depth leafIndex:index];
  v8 = [NSMutableData dataWithBytes:&v13 length:1];
  v9 = [NSData kt_dataWithUint64:id length:8];
  [v8 appendData:v9];

  [v8 appendData:v7];
  v10 = [NSData kt_dataWithUint64:depth length:4];
  [v8 appendData:v10];

  kt_sha256 = [v8 kt_sha256];

  return kt_sha256;
}

- (BOOL)verifyInclusionOfMapLeaf:(id)leaf position:(id)position treeHead:(id)head treeId:(unint64_t)id hashPath:(id)path error:(id *)error
{
  leafCopy = leaf;
  positionCopy = position;
  headCopy = head;
  pathCopy = path;
  idCopy = id;
  v17 = [TransparencyMapEntryVerifier leafHash:leafCopy index:positionCopy treeId:id];
  v18 = [pathCopy count];
  if (v18 != (8 * [positionCopy length]))
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-50 description:@"Not enough hashes to match position size"];
    }

    if (qword_100156150 != -1)
    {
      sub_1000F32CC();
    }

    v35 = qword_100156158;
    if (os_log_type_enabled(qword_100156158, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Not enough hashes to match position size", buf, 2u);
    }

    goto LABEL_26;
  }

  errorCopy = error;
  v46 = headCopy;
  v47 = leafCopy;
  context = objc_autoreleasePoolPush();
  v45 = v17;
  v19 = [v17 copy];
  if ([positionCopy length])
  {
    v20 = 0;
    v21 = -1;
    v22 = 1;
    do
    {
      v23 = [positionCopy length];
      v48 = v22;
      v24 = positionCopy;
      v25 = 0;
      v26 = v23[[positionCopy bytes] - v22];
      v49 = v21;
      v27 = 8 * &v23[v21] + 8;
      v28 = v19;
      do
      {
        v29 = [pathCopy objectAtIndexedSubscript:v20 + v25];
        if (![v29 length])
        {
          v30 = [TransparencyMapEntryVerifier emptyAtDepth:v27 leafIndex:v24 treeId:idCopy];

          v29 = v30;
        }

        if ((v26 >> v25))
        {
          v31 = v29;
          v32 = v28;
        }

        else
        {
          v31 = v28;
          v32 = v29;
        }

        v19 = [TransparencyMapEntryVerifier interiorNodeForLeftData:v31 rightData:v32];

        ++v25;
        --v27;
        v28 = v19;
      }

      while (v25 != 8);
      v22 = v48 + 1;
      positionCopy = v24;
      v21 = v49 - 1;
      v20 += 8;
    }

    while (v48 + 1 <= [v24 length]);
  }

  headCopy = v46;
  v33 = [v19 isEqualToData:v46];

  objc_autoreleasePoolPop(context);
  if ((v33 & 1) == 0)
  {
    leafCopy = v47;
    if (errorCopy)
    {
      kt_hexString = [v47 kt_hexString];
      kt_hexString2 = [v46 kt_hexString];
      *errorCopy = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-45 description:@"failed to verify inclusion proof for leaf (%@) in head (%@)", kt_hexString, kt_hexString2];
    }

    v17 = v45;
    if (qword_100156150 != -1)
    {
      sub_1000F32E0();
    }

    v38 = qword_100156158;
    if (os_log_type_enabled(qword_100156158, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      kt_hexString3 = [v45 kt_hexString];
      kt_hexString4 = [v46 kt_hexString];
      *buf = 138412546;
      v52 = kt_hexString3;
      v53 = 2112;
      v54 = kt_hexString4;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof for leaf hash (%@) in head (%@)", buf, 0x16u);
    }

LABEL_26:
    v34 = 0;
    goto LABEL_27;
  }

  v34 = 1;
  leafCopy = v47;
  v17 = v45;
LABEL_27:

  return v34;
}

+ (void)storeSMHSignatureResult:(unint64_t)result smh:(id)smh error:(id)error
{
  smhCopy = smh;
  errorCopy = error;
  dataStore = [smhCopy dataStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B738;
  v12[3] = &unk_100132258;
  v14 = errorCopy;
  resultCopy = result;
  v13 = smhCopy;
  v10 = errorCopy;
  v11 = smhCopy;
  [dataStore performBlockAndWait:v12];
}

- (unint64_t)verifyMapEntryWithMapLeaf:(id)leaf hashesToRoot:(id)root signedMapHead:(id)head error:(id *)error
{
  leafCopy = leaf;
  rootCopy = root;
  headCopy = head;
  v24 = 0;
  v13 = [headCopy verifyWithError:&v24];
  v14 = v24;
  [TransparencyMapEntryVerifier storeSMHSignatureResult:v13 smh:headCopy error:v14];
  if (error && v14)
  {
    v15 = v14;
    *error = v14;
  }

  if (v13 == 1)
  {
    entryPosition = self->_entryPosition;
    parsedMapHead = [headCopy parsedMapHead];
    mapHeadHash = [parsedMapHead mapHeadHash];
    parsedMapHead2 = [headCopy parsedMapHead];
    v20 = -[TransparencyMapEntryVerifier verifyInclusionOfMapLeaf:position:treeHead:treeId:hashPath:error:](self, "verifyInclusionOfMapLeaf:position:treeHead:treeId:hashPath:error:", leafCopy, entryPosition, mapHeadHash, [parsedMapHead2 treeId], rootCopy, error);

    if (v20)
    {
      v13 = 1;
    }

    else
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-43 underlyingError:*error description:@"failed to verify inclusion proof for map leaf in mapHeadHash"];
      }

      if (qword_100156150 != -1)
      {
        sub_1000F3344();
      }

      v21 = qword_100156158;
      if (os_log_type_enabled(qword_100156158, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof for map leaf in mapHeadHash", v23, 2u);
      }

      v13 = 0;
    }
  }

  return v13;
}

@end