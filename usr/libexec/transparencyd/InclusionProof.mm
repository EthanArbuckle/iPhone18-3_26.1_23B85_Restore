@interface InclusionProof
+ (id)descriptor;
- (id)mapLeafWithError:(id *)error;
- (unint64_t)verifyWithError:(id *)error;
- (void)setFollowUp:(id)up;
- (void)setMetadataValue:(id)value key:(id)key;
- (void)setOptInServer:(id)server;
@end

@implementation InclusionProof

+ (id)descriptor
{
  v2 = qword_10039C888;
  if (!qword_10039C888)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:InclusionProof messageName:@"InclusionProof" fileDescription:&unk_10038A4D8 fields:&off_10038A910 fieldCount:4 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF607];
    qword_10039C888 = v2;
  }

  return v2;
}

- (void)setOptInServer:(id)server
{
  if (server)
  {
    objc_setAssociatedObject(self, @"optInServerKey", server, 1);
  }
}

- (void)setFollowUp:(id)up
{
  if (up)
  {
    objc_setAssociatedObject(self, @"followUpKey", up, 1);
  }
}

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(InclusionProof *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(InclusionProof *)self setMetadata:v8];
  }
}

- (id)mapLeafWithError:(id *)error
{
  if (-[InclusionProof hasMapEntry](self, "hasMapEntry") && (-[InclusionProof mapEntry](self, "mapEntry"), v5 = objc_claimAutoreleasedReturnValue(), [v5 mapLeaf], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    mapEntry = [(InclusionProof *)self mapEntry];
    mapLeaf = [mapEntry mapLeaf];
    v9 = [IdsMapLeaf parseFromData:mapLeaf error:error];

    if (!v9)
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-142 underlyingError:*error description:?];
      }

      if (qword_10039CA88 != -1)
      {
        sub_10025CEC4();
      }

      v10 = qword_10039CA90;
      if (os_log_type_enabled(qword_10039CA90, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v11 = *error;
        }

        else
        {
          v11 = 0;
        }

        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to decode map leaf: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-16 description:@"KT Inclusion proof missing map leaf"];
    }

    if (qword_10039CA88 != -1)
    {
      sub_10025CED8();
    }

    v12 = qword_10039CA90;
    if (os_log_type_enabled(qword_10039CA90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "KT Inclusion proof missing map leaf", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (unint64_t)verifyWithError:(id *)error
{
  if ([(InclusionProof *)self hasMapEntry]&& ([(InclusionProof *)self mapEntry], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(InclusionProof *)self hasTopLevelTreeEntry]&& ![(InclusionProof *)self hasPerApplicationTreeEntry])
    {
      v50 = -11;
    }

    else
    {
      index = [(InclusionProof *)self index];
      if (index)
      {
        v7 = index;
        index2 = [(InclusionProof *)self index];
        v9 = [index2 length];

        if (v9)
        {
          index3 = [(InclusionProof *)self index];
          v11 = [TransparencyMapEntryVerifier alloc];
          verifier = [(InclusionProof *)self verifier];
          keyBag = [verifier keyBag];
          appSthKeyStore = [keyBag appSthKeyStore];
          v58 = index3;
          v15 = [(TransparencyMapEntryVerifier *)v11 initWithPositon:index3 trustedKeyStore:appSthKeyStore];

          v16 = [TransparencyLogEntryVerifier alloc];
          verifier2 = [(InclusionProof *)self verifier];
          keyBag2 = [verifier2 keyBag];
          appSthKeyStore2 = [keyBag2 appSthKeyStore];
          v56 = [(TransparencyLogEntryVerifier *)v16 initWithTrustedKeyStore:appSthKeyStore2];

          v20 = [TransparencyLogEntryVerifier alloc];
          verifier3 = [(InclusionProof *)self verifier];
          keyBag3 = [verifier3 keyBag];
          tltKeyStore = [keyBag3 tltKeyStore];
          v24 = [(TransparencyLogEntryVerifier *)v20 initWithTrustedKeyStore:tltKeyStore];

          dataStore = [(InclusionProof *)self dataStore];
          mapEntry = [(InclusionProof *)self mapEntry];
          v57 = v15;
          [mapEntry setVerifier:v15];

          mapEntry2 = [(InclusionProof *)self mapEntry];
          [mapEntry2 setDataStore:dataStore];

          mapEntry3 = [(InclusionProof *)self mapEntry];
          metadata = [(InclusionProof *)self metadata];
          v30 = kTransparencyResponseMetadataKeyServerHint;
          v31 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
          [mapEntry3 setMetadataValue:v31 key:v30];

          mapEntry4 = [(InclusionProof *)self mapEntry];
          verifier4 = [(InclusionProof *)self verifier];
          keyBag4 = [verifier4 keyBag];
          v35 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [keyBag4 patLogBeginningMs]);
          stringValue = [v35 stringValue];
          [mapEntry4 setMetadataValue:stringValue key:@"overrideLogBeginTime"];

          if ([(InclusionProof *)self hasPerApplicationTreeEntry]&& ([(InclusionProof *)self perApplicationTreeEntry], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
          {
            perApplicationTreeEntry = [(InclusionProof *)self perApplicationTreeEntry];
            v39 = v56;
            [perApplicationTreeEntry setVerifier:v56];
            [perApplicationTreeEntry setDataStore:dataStore];
            metadata2 = [(InclusionProof *)self metadata];
            v41 = [metadata2 objectForKeyedSubscript:v30];
            [perApplicationTreeEntry setMetadataValue:v41 key:v30];

            optInServer = [(InclusionProof *)self optInServer];
            [perApplicationTreeEntry setOptInServer:optInServer];

            followUp = [(InclusionProof *)self followUp];
            [perApplicationTreeEntry setFollowUp:followUp];

            if ([(InclusionProof *)self hasTopLevelTreeEntry]&& ([(InclusionProof *)self topLevelTreeEntry], v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
            {
              topLevelTreeEntry = [(InclusionProof *)self topLevelTreeEntry];
              [topLevelTreeEntry setVerifier:v24];
              [topLevelTreeEntry setDataStore:dataStore];
              metadata3 = [(InclusionProof *)self metadata];
              v47 = [metadata3 objectForKeyedSubscript:v30];
              [topLevelTreeEntry setMetadataValue:v47 key:v30];

              optInServer2 = [(InclusionProof *)self optInServer];
              [topLevelTreeEntry setOptInServer:optInServer2];

              followUp2 = [(InclusionProof *)self followUp];
              [topLevelTreeEntry setFollowUp:followUp2];
            }

            else
            {
              topLevelTreeEntry = 0;
            }
          }

          else
          {
            perApplicationTreeEntry = 0;
            topLevelTreeEntry = 0;
            v39 = v56;
          }

          verifier5 = [(InclusionProof *)self verifier];
          mapEntry5 = [(InclusionProof *)self mapEntry];
          v55 = [verifier5 verifyInclusionProofWithMapEntry:mapEntry5 perAppLogEntry:perApplicationTreeEntry topLevelTreeEntry:topLevelTreeEntry error:error];

          return v55;
        }
      }

      v50 = -48;
    }
  }

  else
  {
    v50 = -10;
  }

  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v50 description:@"KT Inclusion proof data required for verification"];
  }

  if (qword_10039CA88 != -1)
  {
    sub_10025CEEC();
  }

  v51 = qword_10039CA90;
  if (os_log_type_enabled(qword_10039CA90, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "KT Inclusion proof data required for verification", buf, 2u);
  }

  return 0;
}

@end