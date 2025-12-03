@interface BatchedMapEntry
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)error;
- (void)setMetadataValue:(id)value key:(id)key;
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

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(BatchedMapEntry *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(BatchedMapEntry *)self setMetadata:v8];
  }
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  index = [(BatchedMapEntry *)self index];
  kt_hexString = [index kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"index"];

  mapLeaf = [(BatchedMapEntry *)self mapLeaf];
  kt_hexString2 = [mapLeaf kt_hexString];
  [v3 setObject:kt_hexString2 forKeyedSubscript:@"mapLeaf"];

  v8 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  hashesOfPeersInPathToRootArray = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray];
  v10 = [hashesOfPeersInPathToRootArray countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(hashesOfPeersInPathToRootArray);
        }

        kt_hexString3 = [*(*(&v16 + 1) + 8 * i) kt_hexString];
        [v8 addObject:kt_hexString3];
      }

      v11 = [hashesOfPeersInPathToRootArray countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v3 setObject:v8 forKeyedSubscript:@"hashesOfPeersInPathToRoot"];

  return v3;
}

- (unint64_t)verifyWithError:(id *)error
{
  mapLeaf = [(BatchedMapEntry *)self mapLeaf];
  if (!mapLeaf || (v6 = mapLeaf, -[BatchedMapEntry mapLeaf](self, "mapLeaf"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, !v8))
  {
    v22 = -16;
    if (!error)
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
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v22 description:@"map entry data required for verification"];
    goto LABEL_9;
  }

  hashesOfPeersInPathToRootArray = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray];
  if (!hashesOfPeersInPathToRootArray || (v10 = hashesOfPeersInPathToRootArray, v11 = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray_Count], v10, !v11))
  {
    v22 = -17;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  verifier = [(BatchedMapEntry *)self verifier];
  mapLeaf2 = [(BatchedMapEntry *)self mapLeaf];
  verifier2 = [(BatchedMapEntry *)self verifier];
  entryPosition = [verifier2 entryPosition];
  v28 = [(BatchedMapEntry *)self smh];
  parsedMapHead = [v28 parsedMapHead];
  mapHeadHash = [parsedMapHead mapHeadHash];
  v17 = [(BatchedMapEntry *)self smh];
  parsedMapHead2 = [v17 parsedMapHead];
  treeId = [parsedMapHead2 treeId];
  hashesOfPeersInPathToRootArray2 = [(BatchedMapEntry *)self hashesOfPeersInPathToRootArray];
  LOBYTE(treeId) = [verifier verifyInclusionOfMapLeaf:mapLeaf2 position:entryPosition treeHead:mapHeadHash treeId:treeId hashPath:hashesOfPeersInPathToRootArray2 error:error];

  if (treeId)
  {
    return 1;
  }

  if (error)
  {
    *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-43 underlyingError:*error description:@"failed to verify inclusion proof for map leaf in mapHeadHash"];
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