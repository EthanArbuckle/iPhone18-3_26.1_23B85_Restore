@interface MapEntry
+ (id)descriptor;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setMetadataValue:(id)a3 key:(id)a4;
@end

@implementation MapEntry

+ (id)descriptor
{
  v2 = qword_10039C880;
  if (!qword_10039C880)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MapEntry messageName:@"MapEntry" fileDescription:&unk_10038A4D8 fields:&off_10038A8B0 fieldCount:3 storageSize:32 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF5E6];
    qword_10039C880 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(MapEntry *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(MapEntry *)self setMetadata:v8];
  }
}

- (unint64_t)verifyWithError:(id *)a3
{
  if (![(MapEntry *)self hasSmh]|| ([(MapEntry *)self smh], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v26 = -15;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = [(MapEntry *)self mapLeaf];
  if (!v6 || (v7 = v6, -[MapEntry mapLeaf](self, "mapLeaf"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v7, !v9))
  {
    v26 = -16;
    if (!a3)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v26 description:@"map entry data required for verification"];
    goto LABEL_12;
  }

  v10 = [(MapEntry *)self hashesOfPeersInPathToRootArray];
  if (v10)
  {
    v11 = v10;
    v12 = [(MapEntry *)self hashesOfPeersInPathToRootArray_Count];

    if (v12)
    {
      v13 = [(MapEntry *)self smh];
      v14 = [(MapEntry *)self verifier];
      v15 = [v14 trustedKeyStore];
      v16 = [v15 signatureVerifier];
      v17 = [(MapEntry *)self dataStore];
      v18 = [SignedMapHead signedTypeWithObject:v13 verifier:v16 dataStore:v17];

      v19 = [(MapEntry *)self metadata];
      v20 = [v19 objectForKeyedSubscript:@"overrideLogBeginTime"];
      [v18 setOverrideBeginTime:{objc_msgSend(v20, "longLongValue")}];

      v21 = [(MapEntry *)self verifier];
      v22 = [(MapEntry *)self mapLeaf];
      v23 = [(MapEntry *)self hashesOfPeersInPathToRootArray];
      v24 = [v21 verifyMapEntryWithMapLeaf:v22 hashesToRoot:v23 signedMapHead:v18 error:a3];

      return v24;
    }
  }

  v26 = -17;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (qword_10039CD98 != -1)
  {
    sub_10025F764();
  }

  v27 = qword_10039CDA0;
  if (os_log_type_enabled(qword_10039CDA0, OS_LOG_TYPE_ERROR))
  {
    v28 = 134217984;
    v29 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "map entry data required for verification: %ld", &v28, 0xCu);
  }

  return 0;
}

@end