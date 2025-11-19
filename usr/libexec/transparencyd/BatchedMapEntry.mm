@interface BatchedMapEntry
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setMetadataValue:(id)a3 key:(id)a4;
@end

@implementation BatchedMapEntry

+ (id)descriptor
{
  v2 = qword_10039C980;
  if (!qword_10039C980)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchedMapEntry messageName:@"BatchedMapEntry" fileDescription:&unk_10038AE48 fields:&off_10038B060 fieldCount:3 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF68D];
    qword_10039C980 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(BatchedMapEntry *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(BatchedMapEntry *)self setMetadata:v8];
  }
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(BatchedMapEntry *)self index];
  v5 = [v4 kt_hexString];
  [v3 setObject:v5 forKeyedSubscript:@"index"];

  v6 = [(BatchedMapEntry *)self mapLeaf];
  v7 = [v6 kt_hexString];
  [v3 setObject:v7 forKeyedSubscript:@"mapLeaf"];

  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) kt_hexString];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"hashesOfPeersInPathToRoot"];

  return v3;
}

- (unint64_t)verifyWithError:(id *)a3
{
  v5 = [(BatchedMapEntry *)self mapLeaf];
  if (!v5 || (v6 = v5, -[BatchedMapEntry mapLeaf](self, "mapLeaf"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, !v8))
  {
    v22 = -16;
    if (!a3)
    {
LABEL_9:
      if (qword_10039CA98 != -1)
      {
        sub_10025CF14();
      }

      v23 = qword_10039CAA0;
      if (!os_log_type_enabled(qword_10039CAA0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 134217984;
      v31 = v22;
      v24 = "map entry data required for verification: %ld";
      v25 = v23;
      v26 = 12;
      goto LABEL_13;
    }

LABEL_8:
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v22 description:@"map entry data required for verification"];
    goto LABEL_9;
  }

  v9 = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray];
  if (!v9 || (v10 = v9, v11 = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray_Count], v10, !v11))
  {
    v22 = -17;
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [(BatchedMapEntry *)self verifier];
  v13 = [(BatchedMapEntry *)self mapLeaf];
  v29 = [(BatchedMapEntry *)self verifier];
  v14 = [v29 entryPosition];
  v28 = [(BatchedMapEntry *)self smh];
  v15 = [v28 parsedMapHead];
  v16 = [v15 mapHeadHash];
  v17 = [(BatchedMapEntry *)self smh];
  v18 = [v17 parsedMapHead];
  v19 = [v18 treeId];
  v20 = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray];
  LOBYTE(v19) = [v12 verifyInclusionOfMapLeaf:v13 position:v14 treeHead:v16 treeId:v19 hashPath:v20 error:a3];

  if (v19)
  {
    return 1;
  }

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-43 underlyingError:*a3 description:@"failed to verify inclusion proof for map leaf in mapHeadHash"];
  }

  if (qword_10039CA98 != -1)
  {
    sub_10025CF00();
  }

  v27 = qword_10039CAA0;
  if (os_log_type_enabled(qword_10039CAA0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v24 = "failed to verify inclusion proof for map leaf in mapHeadHash";
    v25 = v27;
    v26 = 2;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
  }

  return 0;
}

@end