@interface BatchQueryResponse
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)verifyWithError:(id *)error;
- (void)setFollowUp:(id)up;
- (void)setMetadataValue:(id)value key:(id)key;
- (void)setOptInServer:(id)server;
@end

@implementation BatchQueryResponse

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

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:[(BatchQueryResponse *)self status]];
  [v3 setObject:v4 forKeyedSubscript:@"status"];

  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  queryInfoArray = [(BatchQueryResponse *)self queryInfoArray];
  v7 = [queryInfoArray countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(queryInfoArray);
        }

        diagnosticsJsonDictionary = [*(*(&v20 + 1) + 8 * i) diagnosticsJsonDictionary];
        [v5 addObject:diagnosticsJsonDictionary];
      }

      v8 = [queryInfoArray countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [v3 setObject:v5 forKeyedSubscript:@"queryInfos"];
  }

  if ([(BatchQueryResponse *)self hasSmh])
  {
    v12 = [(BatchQueryResponse *)self smh];
    v13 = [SignedMapHead signedTypeWithObject:v12];

    diagnosticsJsonDictionary2 = [v13 diagnosticsJsonDictionary];
    [v3 setObject:diagnosticsJsonDictionary2 forKeyedSubscript:@"smh"];
  }

  if ([(BatchQueryResponse *)self hasPerApplicationTreeEntry])
  {
    perApplicationTreeEntry = [(BatchQueryResponse *)self perApplicationTreeEntry];
    diagnosticsJsonDictionary3 = [perApplicationTreeEntry diagnosticsJsonDictionary];
    [v3 setObject:diagnosticsJsonDictionary3 forKeyedSubscript:@"patEntry"];
  }

  if ([(BatchQueryResponse *)self hasTopLevelTreeEntry])
  {
    topLevelTreeEntry = [(BatchQueryResponse *)self topLevelTreeEntry];
    diagnosticsJsonDictionary4 = [topLevelTreeEntry diagnosticsJsonDictionary];
    [v3 setObject:diagnosticsJsonDictionary4 forKeyedSubscript:@"tltEntry"];
  }

  return v3;
}

- (unint64_t)verifyWithError:(id *)error
{
  if (![(BatchQueryResponse *)self hasSmh]|| ([(BatchQueryResponse *)self smh], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v23 = -12;
    if (!error)
    {
      goto LABEL_9;
    }

LABEL_8:
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v23 description:@"KT Inclusion proof data required for verification"];
    goto LABEL_9;
  }

  if (![(BatchQueryResponse *)self hasTopLevelTreeEntry]|| ([(BatchQueryResponse *)self hasPerApplicationTreeEntry]& 1) != 0)
  {
    v6 = [TransparencyLogEntryVerifier alloc];
    verifier = [(BatchQueryResponse *)self verifier];
    keyBag = [verifier keyBag];
    appSthKeyStore = [keyBag appSthKeyStore];
    v10 = [(TransparencyLogEntryVerifier *)v6 initWithTrustedKeyStore:appSthKeyStore];

    v11 = [TransparencyLogEntryVerifier alloc];
    verifier2 = [(BatchQueryResponse *)self verifier];
    keyBag2 = [verifier2 keyBag];
    tltKeyStore = [keyBag2 tltKeyStore];
    v15 = [(TransparencyLogEntryVerifier *)v11 initWithTrustedKeyStore:tltKeyStore];

    dataStore = [(BatchQueryResponse *)self dataStore];
    v17 = [(BatchQueryResponse *)self smh];
    trustedKeyStore = [(TransparencyLogEntryVerifier *)v10 trustedKeyStore];
    signatureVerifier = [trustedKeyStore signatureVerifier];
    dataStore2 = [(BatchQueryResponse *)self dataStore];
    v21 = [SignedMapHead signedTypeWithObject:v17 verifier:signatureVerifier dataStore:dataStore2];

    if ([(BatchQueryResponse *)self hasPerApplicationTreeEntry])
    {
      perApplicationTreeEntry = [(BatchQueryResponse *)self perApplicationTreeEntry];
      [v21 setOverrideBeginTimeFromLogEntry:perApplicationTreeEntry];
    }

    else
    {
      perApplicationTreeEntry = [(BatchQueryResponse *)self verifier];
      keyBag3 = [perApplicationTreeEntry keyBag];
      [v21 setOverrideBeginTime:{objc_msgSend(keyBag3, "patLogBeginningMs")}];
    }

    [(BatchQueryResponse *)self setVerifiableSmh:v21];
    v42 = 0;
    v25 = [v21 verifyWithError:&v42];
    v27 = v42;
    [TransparencyMapEntryVerifier storeSMHSignatureResult:v25 smh:v21 error:v27];
    if (v25 != 1)
    {
      if (error && v27)
      {
        v37 = v27;
        *error = v27;
      }

      goto LABEL_31;
    }

    if ([(BatchQueryResponse *)self hasPerApplicationTreeEntry])
    {
      perApplicationTreeEntry2 = [(BatchQueryResponse *)self perApplicationTreeEntry];

      if (perApplicationTreeEntry2)
      {
        v41 = v15;
        perApplicationTreeEntry2 = [(BatchQueryResponse *)self perApplicationTreeEntry];
        [perApplicationTreeEntry2 setVerifier:v10];
        [perApplicationTreeEntry2 setDataStore:dataStore];
        metadata = [(BatchQueryResponse *)self metadata];
        v30 = kTransparencyResponseMetadataKeyServerHint;
        v31 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
        [perApplicationTreeEntry2 setMetadataValue:v31 key:v30];

        optInServer = [(BatchQueryResponse *)self optInServer];
        [perApplicationTreeEntry2 setOptInServer:optInServer];

        if ([(BatchQueryResponse *)self hasTopLevelTreeEntry]&& ([(BatchQueryResponse *)self topLevelTreeEntry], v33 = objc_claimAutoreleasedReturnValue(), v33, v33))
        {
          topLevelTreeEntry = [(BatchQueryResponse *)self topLevelTreeEntry];
          [topLevelTreeEntry setVerifier:v41];
          [topLevelTreeEntry setDataStore:dataStore];
          metadata2 = [(BatchQueryResponse *)self metadata];
          v35 = [metadata2 objectForKeyedSubscript:v30];
          [topLevelTreeEntry setMetadataValue:v35 key:v30];

          optInServer2 = [(BatchQueryResponse *)self optInServer];
          [topLevelTreeEntry setOptInServer:optInServer2];
        }

        else
        {
          topLevelTreeEntry = 0;
        }

        v15 = v41;
        goto LABEL_30;
      }
    }

    else
    {
      perApplicationTreeEntry2 = 0;
    }

    topLevelTreeEntry = 0;
LABEL_30:
    verifier3 = [(BatchQueryResponse *)self verifier];
    v25 = [verifier3 verifyPerApplicationTreeEntry:perApplicationTreeEntry2 mapHead:v21 topLevelTreeEntry:topLevelTreeEntry error:error];

LABEL_31:
    return v25;
  }

  v23 = -11;
  if (error)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (qword_10039C8D8 != -1)
  {
    sub_10025B348();
  }

  v24 = qword_10039C8E0;
  if (os_log_type_enabled(qword_10039C8E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "KT Inclusion proof data required for verification", buf, 2u);
  }

  return 0;
}

+ (id)descriptor
{
  v2 = qword_10039C970;
  if (!qword_10039C970)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:BatchQueryResponse messageName:@"BatchQueryResponse" fileDescription:&unk_10038AE48 fields:&off_10038AF40 fieldCount:5 storageSize:40 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF663];
    qword_10039C970 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(BatchQueryResponse *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(BatchQueryResponse *)self setMetadata:v8];
  }
}

@end