@interface LogEntry
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)setInclusionResult:(unint64_t)result signedLogHead:(id)head error:(id *)error;
- (unint64_t)verifyTLTEntryForPerApplicationLogHead:(id)head error:(id *)error;
- (unint64_t)verifyWithError:(id *)error;
- (void)setFollowUp:(id)up;
- (void)setMetadataValue:(id)value key:(id)key;
- (void)setOptInServer:(id)server;
@end

@implementation LogEntry

+ (id)descriptor
{
  v2 = qword_10039C870;
  if (!qword_10039C870)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:LogEntry messageName:@"LogEntry" fileDescription:&unk_10038A4D8 fields:&off_10038A6D0 fieldCount:6 storageSize:48 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF5A8];
    qword_10039C870 = v2;
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
    metadata = [(LogEntry *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(LogEntry *)self setMetadata:v8];
  }
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = LogType_EnumDescriptor();
  v5 = [v4 textFormatNameForValue:{-[LogEntry logType](self, "logType")}];
  [v3 setObject:v5 forKeyedSubscript:@"logType"];

  v6 = NodeType_EnumDescriptor();
  v7 = [v6 textFormatNameForValue:{-[LogEntry nodeType](self, "nodeType")}];
  [v3 setObject:v7 forKeyedSubscript:@"nodeType"];

  v8 = [NSNumber numberWithUnsignedLongLong:[(LogEntry *)self nodePosition]];
  [v3 setObject:v8 forKeyedSubscript:@"nodePosition"];

  nodeBytes = [(LogEntry *)self nodeBytes];
  kt_hexString = [nodeBytes kt_hexString];
  [v3 setObject:kt_hexString forKeyedSubscript:@"nodeBytes"];

  v11 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  hashesOfPeersInPathToRootArray = [(LogEntry *)self hashesOfPeersInPathToRootArray];
  v13 = [hashesOfPeersInPathToRootArray countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(hashesOfPeersInPathToRootArray);
        }

        kt_hexString2 = [*(*(&v22 + 1) + 8 * i) kt_hexString];
        [v11 addObject:kt_hexString2];
      }

      v14 = [hashesOfPeersInPathToRootArray countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [v3 setObject:v11 forKeyedSubscript:@"hashesOfPeersInPathToRoot"];
  if ([(LogEntry *)self hasSlh])
  {
    v18 = [(LogEntry *)self slh];
    v19 = [SignedLogHead signedTypeWithObject:v18];

    diagnosticsJsonDictionary = [v19 diagnosticsJsonDictionary];
    [v3 setObject:diagnosticsJsonDictionary forKeyedSubscript:@"slh"];
  }

  return v3;
}

- (unint64_t)verifyWithError:(id *)error
{
  if (![(LogEntry *)self hasSlh]|| ([(LogEntry *)self slh], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v13 = -18;
    if (!error)
    {
LABEL_12:
      if (qword_10039CD88 != -1)
      {
        sub_10025F69C();
      }

      v14 = qword_10039CD90;
      if (os_log_type_enabled(qword_10039CD90, OS_LOG_TYPE_ERROR))
      {
        v27 = 134217984;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "log entry missing data required for verification: %ld", &v27, 0xCu);
      }

      return 0;
    }

LABEL_11:
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v13 description:@"log entry missing data required for verification"];
    goto LABEL_12;
  }

  nodeBytes = [(LogEntry *)self nodeBytes];
  if (!nodeBytes || (v7 = nodeBytes, -[LogEntry nodeBytes](self, "nodeBytes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v7, !v9))
  {
    v13 = -19;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  hashesOfPeersInPathToRootArray = [(LogEntry *)self hashesOfPeersInPathToRootArray];
  if (!hashesOfPeersInPathToRootArray)
  {
    goto LABEL_8;
  }

  v11 = hashesOfPeersInPathToRootArray;
  if ([(LogEntry *)self nodePosition])
  {
    hashesOfPeersInPathToRootArray_Count = [(LogEntry *)self hashesOfPeersInPathToRootArray_Count];

    if (!hashesOfPeersInPathToRootArray_Count)
    {
LABEL_8:
      v13 = -20;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v17 = [(LogEntry *)self slh];
  verifier = [(LogEntry *)self verifier];
  trustedKeyStore = [verifier trustedKeyStore];
  signatureVerifier = [trustedKeyStore signatureVerifier];
  dataStore = [(LogEntry *)self dataStore];
  v22 = [SignedLogHead signedTypeWithObject:v17 verifier:signatureVerifier dataStore:dataStore];

  verifier2 = [(LogEntry *)self verifier];
  nodeBytes2 = [(LogEntry *)self nodeBytes];
  nodePosition = [(LogEntry *)self nodePosition];
  hashesOfPeersInPathToRootArray2 = [(LogEntry *)self hashesOfPeersInPathToRootArray];
  v15 = [verifier2 verifyLogEntryWithLogLeaf:nodeBytes2 position:nodePosition hashesToRoot:hashesOfPeersInPathToRootArray2 signedLogHead:v22 error:error];
  if ([(LogEntry *)self logType]== 3)
  {
    [(LogEntry *)self setInclusionResult:v15 signedLogHead:v22 error:0];
  }

  return v15;
}

- (unint64_t)setInclusionResult:(unint64_t)result signedLogHead:(id)head error:(id *)error
{
  headCopy = head;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  resultCopy = result;
  dataStore = [(LogEntry *)self dataStore];
  [headCopy setDataStore:dataStore];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10022A4A8;
  v26 = sub_10022A4B8;
  v27 = 0;
  dataStore2 = [(LogEntry *)self dataStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10022A4C0;
  v15[3] = &unk_10032B978;
  v11 = headCopy;
  v18 = &v28;
  v19 = &v22;
  v16 = v11;
  selfCopy = self;
  resultCopy2 = result;
  errorCopy = error;
  [dataStore2 performBlockAndWait:v15];

  if (error)
  {
    v12 = v23[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v29[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (unint64_t)verifyTLTEntryForPerApplicationLogHead:(id)head error:(id *)error
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10022AB58;
  v12 = &unk_10032BA00;
  selfCopy = self;
  headCopy = head;
  v5 = headCopy;
  v6 = objc_retainBlock(&v9);
  selfCopy = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:@"ktTLTVerifyInclusionProofEvent" validateType:3 error:error block:v6, v9, v10, v11, v12, selfCopy];

  return selfCopy;
}

@end