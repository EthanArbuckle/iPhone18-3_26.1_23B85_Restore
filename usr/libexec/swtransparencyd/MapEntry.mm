@interface MapEntry
+ (id)descriptor;
- (unint64_t)verifyWithError:(id *)error;
- (void)setMetadataValue:(id)value key:(id)key;
@end

@implementation MapEntry

+ (id)descriptor
{
  v2 = qword_100155F88;
  if (!qword_100155F88)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MapEntry messageName:@"MapEntry" fileDescription:&unk_1001516B0 fields:&off_100151A88 fieldCount:3 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102EC2];
    qword_100155F88 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(MapEntry *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(MapEntry *)self setMetadata:v8];
  }
}

- (unint64_t)verifyWithError:(id *)error
{
  if (![(MapEntry *)self hasSmh]|| ([(MapEntry *)self smh], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v26 = -15;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  mapLeaf = [(MapEntry *)self mapLeaf];
  if (!mapLeaf || (v7 = mapLeaf, -[MapEntry mapLeaf](self, "mapLeaf"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v7, !v9))
  {
    v26 = -16;
    if (!error)
    {
      goto LABEL_12;
    }

LABEL_11:
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v26 description:@"map entry data required for verification"];
    goto LABEL_12;
  }

  hashesOfPeersInPathToRootArray = [(MapEntry *)self hashesOfPeersInPathToRootArray];
  if (hashesOfPeersInPathToRootArray)
  {
    v11 = hashesOfPeersInPathToRootArray;
    hashesOfPeersInPathToRootArray_Count = [(MapEntry *)self hashesOfPeersInPathToRootArray_Count];

    if (hashesOfPeersInPathToRootArray_Count)
    {
      v13 = [(MapEntry *)self smh];
      verifier = [(MapEntry *)self verifier];
      trustedKeyStore = [verifier trustedKeyStore];
      signatureVerifier = [trustedKeyStore signatureVerifier];
      dataStore = [(MapEntry *)self dataStore];
      v18 = [SignedMapHead signedTypeWithObject:v13 verifier:signatureVerifier dataStore:dataStore];

      metadata = [(MapEntry *)self metadata];
      v20 = [metadata objectForKeyedSubscript:@"overrideLogBeginTime"];
      [v18 setOverrideBeginTime:{objc_msgSend(v20, "longLongValue")}];

      verifier2 = [(MapEntry *)self verifier];
      mapLeaf2 = [(MapEntry *)self mapLeaf];
      hashesOfPeersInPathToRootArray2 = [(MapEntry *)self hashesOfPeersInPathToRootArray];
      v24 = [verifier2 verifyMapEntryWithMapLeaf:mapLeaf2 hashesToRoot:hashesOfPeersInPathToRootArray2 signedMapHead:v18 error:error];

      return v24;
    }
  }

  v26 = -17;
  if (error)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (qword_100156130 != -1)
  {
    sub_1000F3204();
  }

  v27 = qword_100156138;
  if (os_log_type_enabled(qword_100156138, OS_LOG_TYPE_ERROR))
  {
    v28 = 134217984;
    v29 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "map entry data required for verification: %ld", &v28, 0xCu);
  }

  return 0;
}

@end