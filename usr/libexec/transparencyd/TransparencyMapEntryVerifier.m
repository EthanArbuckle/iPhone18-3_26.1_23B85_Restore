@interface TransparencyMapEntryVerifier
+ (id)emptyAtDepth:(unint64_t)a3 leafIndex:(id)a4 treeId:(unint64_t)a5;
+ (id)interiorNodeForLeftData:(id)a3 rightData:(id)a4;
+ (id)leafHash:(id)a3 index:(id)a4 treeId:(unint64_t)a5;
+ (id)peerIndexAtDepth:(unint64_t)a3 leafIndex:(id)a4;
+ (void)storeSMHSignatureResult:(unint64_t)a3 smh:(id)a4 error:(id)a5;
- (BOOL)verifyInclusionOfMapLeaf:(id)a3 position:(id)a4 treeHead:(id)a5 treeId:(unint64_t)a6 hashPath:(id)a7 error:(id *)a8;
- (TransparencyMapEntryVerifier)initWithPositon:(id)a3 trustedKeyStore:(id)a4;
- (unint64_t)verifyMapEntryWithMapLeaf:(id)a3 hashesToRoot:(id)a4 signedMapHead:(id)a5 error:(id *)a6;
@end

@implementation TransparencyMapEntryVerifier

- (TransparencyMapEntryVerifier)initWithPositon:(id)a3 trustedKeyStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TransparencyMapEntryVerifier;
  v9 = [(TransparencyMapEntryVerifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryPosition, a3);
    objc_storeStrong(&v10->_trustedKeyStore, a4);
  }

  return v10;
}

+ (id)peerIndexAtDepth:(unint64_t)a3 leafIndex:(id)a4
{
  v5 = a4;
  v6 = 8 * [v5 length] - a3;
  v7 = [v5 mutableCopy];
  [v7 resetBytesInRange:{objc_msgSend(v5, "length") - (v6 >> 3), v6 >> 3}];
  v8 = [v7 bytes];
  v9 = ~(v6 >> 3);
  v12 = *([v5 length] + v8 + v9) & (-1 << (v6 & 7)) ^ (1 << (v6 & 7));
  v10 = [v5 length];

  [v7 replaceBytesInRange:&v10[v9] withBytes:{1, &v12}];

  return v7;
}

+ (id)leafHash:(id)a3 index:(id)a4 treeId:(unint64_t)a5
{
  v15 = 76;
  v7 = a4;
  v8 = a3;
  v9 = [NSMutableData dataWithBytes:&v15 length:1];
  v10 = [NSData kt_dataWithUint64:a5 length:8];
  [v9 appendData:v10];

  [v9 appendData:v7];
  v11 = [v7 length];

  v12 = [NSData kt_dataWithUint64:8 * v11 length:4];
  [v9 appendData:v12];

  [v9 appendData:v8];
  v13 = [v9 kt_sha256];

  return v13;
}

+ (id)interiorNodeForLeftData:(id)a3 rightData:(id)a4
{
  v5 = a4;
  v6 = [NSMutableData dataWithData:a3];
  [v6 appendData:v5];

  v7 = [v6 kt_sha256];

  return v7;
}

+ (id)emptyAtDepth:(unint64_t)a3 leafIndex:(id)a4 treeId:(unint64_t)a5
{
  v13 = 69;
  v7 = [TransparencyMapEntryVerifier peerIndexAtDepth:a3 leafIndex:a4];
  v8 = [NSMutableData dataWithBytes:&v13 length:1];
  v9 = [NSData kt_dataWithUint64:a5 length:8];
  [v8 appendData:v9];

  [v8 appendData:v7];
  v10 = [NSData kt_dataWithUint64:a3 length:4];
  [v8 appendData:v10];

  v11 = [v8 kt_sha256];

  return v11;
}

- (BOOL)verifyInclusionOfMapLeaf:(id)a3 position:(id)a4 treeHead:(id)a5 treeId:(unint64_t)a6 hashPath:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v50 = a6;
  v17 = [TransparencyMapEntryVerifier leafHash:v13 index:v14 treeId:a6];
  v18 = [v16 count];
  if (v18 != (8 * [v14 length]))
  {
    if (a8)
    {
      *a8 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-50 description:@"Not enough hashes to match position size"];
    }

    if (qword_10039CD48 != -1)
    {
      sub_10025F494();
    }

    v35 = qword_10039CD50;
    if (os_log_type_enabled(qword_10039CD50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Not enough hashes to match position size", buf, 2u);
    }

    goto LABEL_26;
  }

  v43 = a8;
  v46 = v15;
  v47 = v13;
  context = objc_autoreleasePoolPush();
  v45 = v17;
  v19 = [v17 copy];
  if ([v14 length])
  {
    v20 = 0;
    v21 = -1;
    v22 = 1;
    do
    {
      v23 = [v14 length];
      v48 = v22;
      v24 = v14;
      v25 = 0;
      v26 = v23[[v14 bytes] - v22];
      v49 = v21;
      v27 = 8 * &v23[v21] + 8;
      v28 = v19;
      do
      {
        v29 = [v16 objectAtIndexedSubscript:v20 + v25];
        if (![v29 length])
        {
          v30 = [TransparencyMapEntryVerifier emptyAtDepth:v27 leafIndex:v24 treeId:v50];

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
      v14 = v24;
      v21 = v49 - 1;
      v20 += 8;
    }

    while (v48 + 1 <= [v24 length]);
  }

  v15 = v46;
  v33 = [v19 isEqualToData:v46];

  objc_autoreleasePoolPop(context);
  if ((v33 & 1) == 0)
  {
    v13 = v47;
    if (v43)
    {
      v36 = [v47 kt_hexString];
      v37 = [v46 kt_hexString];
      *v43 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-45 description:@"failed to verify inclusion proof for leaf (%@) in head (%@)", v36, v37];
    }

    v17 = v45;
    if (qword_10039CD48 != -1)
    {
      sub_10025F4A8();
    }

    v38 = qword_10039CD50;
    if (os_log_type_enabled(qword_10039CD50, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      v40 = [v45 kt_hexString];
      v41 = [v46 kt_hexString];
      *buf = 138412546;
      v52 = v40;
      v53 = 2112;
      v54 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "failed to verify inclusion proof for leaf hash (%@) in head (%@)", buf, 0x16u);
    }

LABEL_26:
    v34 = 0;
    goto LABEL_27;
  }

  v34 = 1;
  v13 = v47;
  v17 = v45;
LABEL_27:

  return v34;
}

+ (void)storeSMHSignatureResult:(unint64_t)a3 smh:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 dataStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100226C5C;
  v12[3] = &unk_10031A7F0;
  v14 = v8;
  v15 = a3;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  [v9 performBlockAndWait:v12];
}

- (unint64_t)verifyMapEntryWithMapLeaf:(id)a3 hashesToRoot:(id)a4 signedMapHead:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v13 = [v12 verifyWithError:&v24];
  v14 = v24;
  [TransparencyMapEntryVerifier storeSMHSignatureResult:v13 smh:v12 error:v14];
  if (a6 && v14)
  {
    v15 = v14;
    *a6 = v14;
  }

  if (v13 == 1)
  {
    entryPosition = self->_entryPosition;
    v17 = [v12 parsedMapHead];
    v18 = [v17 mapHeadHash];
    v19 = [v12 parsedMapHead];
    v20 = -[TransparencyMapEntryVerifier verifyInclusionOfMapLeaf:position:treeHead:treeId:hashPath:error:](self, "verifyInclusionOfMapLeaf:position:treeHead:treeId:hashPath:error:", v10, entryPosition, v18, [v19 treeId], v11, a6);

    if (v20)
    {
      v13 = 1;
    }

    else
    {
      if (a6)
      {
        *a6 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-43 underlyingError:*a6 description:@"failed to verify inclusion proof for map leaf in mapHeadHash"];
      }

      if (qword_10039CD48 != -1)
      {
        sub_10025F50C();
      }

      v21 = qword_10039CD50;
      if (os_log_type_enabled(qword_10039CD50, OS_LOG_TYPE_ERROR))
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