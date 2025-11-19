@interface LogEntry
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
- (unint64_t)setInclusionResult:(unint64_t)a3 signedLogHead:(id)a4 error:(id *)a5;
- (unint64_t)verifyTLTEntryForPerApplicationLogHead:(id)a3 error:(id *)a4;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setFollowUp:(id)a3;
- (void)setMetadataValue:(id)a3 key:(id)a4;
- (void)setOptInServer:(id)a3;
@end

@implementation LogEntry

+ (id)descriptor
{
  v2 = qword_100155F78;
  if (!qword_100155F78)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:LogEntry messageName:@"LogEntry" fileDescription:&unk_1001516B0 fields:&off_1001518A8 fieldCount:6 storageSize:48 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102E84];
    qword_100155F78 = v2;
  }

  return v2;
}

- (void)setOptInServer:(id)a3
{
  if (a3)
  {
    objc_setAssociatedObject(self, @"optInServerKey", a3, 1);
  }
}

- (void)setFollowUp:(id)a3
{
  if (a3)
  {
    objc_setAssociatedObject(self, @"followUpKey", a3, 1);
  }
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(LogEntry *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
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

  v9 = [(LogEntry *)self nodeBytes];
  v10 = [v9 kt_hexString];
  [v3 setObject:v10 forKeyedSubscript:@"nodeBytes"];

  v11 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(LogEntry *)self hashesOfPeersInPathToRootArray];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * i) kt_hexString];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [v3 setObject:v11 forKeyedSubscript:@"hashesOfPeersInPathToRoot"];
  if ([(LogEntry *)self hasSlh])
  {
    v18 = [(LogEntry *)self slh];
    v19 = [SignedLogHead signedTypeWithObject:v18];

    v20 = [v19 diagnosticsJsonDictionary];
    [v3 setObject:v20 forKeyedSubscript:@"slh"];
  }

  return v3;
}

- (unint64_t)verifyWithError:(id *)a3
{
  if (![(LogEntry *)self hasSlh]|| ([(LogEntry *)self slh], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v13 = -18;
    if (!a3)
    {
LABEL_12:
      if (qword_100156098 != -1)
      {
        sub_1000F27B4();
      }

      v14 = qword_1001560A0;
      if (os_log_type_enabled(qword_1001560A0, OS_LOG_TYPE_ERROR))
      {
        v27 = 134217984;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "log entry missing data required for verification: %ld", &v27, 0xCu);
      }

      return 0;
    }

LABEL_11:
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v13 description:@"log entry missing data required for verification"];
    goto LABEL_12;
  }

  v6 = [(LogEntry *)self nodeBytes];
  if (!v6 || (v7 = v6, -[LogEntry nodeBytes](self, "nodeBytes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 length], v8, v7, !v9))
  {
    v13 = -19;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = [(LogEntry *)self hashesOfPeersInPathToRootArray];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  if ([(LogEntry *)self nodePosition])
  {
    v12 = [(LogEntry *)self hashesOfPeersInPathToRootArray_Count];

    if (!v12)
    {
LABEL_8:
      v13 = -20;
      if (!a3)
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
  v18 = [(LogEntry *)self verifier];
  v19 = [v18 trustedKeyStore];
  v20 = [v19 signatureVerifier];
  v21 = [(LogEntry *)self dataStore];
  v22 = [SignedLogHead signedTypeWithObject:v17 verifier:v20 dataStore:v21];

  v23 = [(LogEntry *)self verifier];
  v24 = [(LogEntry *)self nodeBytes];
  v25 = [(LogEntry *)self nodePosition];
  v26 = [(LogEntry *)self hashesOfPeersInPathToRootArray];
  v15 = [v23 verifyLogEntryWithLogLeaf:v24 position:v25 hashesToRoot:v26 signedLogHead:v22 error:a3];
  if ([(LogEntry *)self logType]== 3)
  {
    [(LogEntry *)self setInclusionResult:v15 signedLogHead:v22 error:0];
  }

  return v15;
}

- (unint64_t)setInclusionResult:(unint64_t)a3 signedLogHead:(id)a4 error:(id *)a5
{
  v8 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = a3;
  v9 = [(LogEntry *)self dataStore];
  [v8 setDataStore:v9];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10000986C;
  v26 = sub_10000987C;
  v27 = 0;
  v10 = [(LogEntry *)self dataStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009884;
  v15[3] = &unk_100132430;
  v11 = v8;
  v18 = &v28;
  v19 = &v22;
  v16 = v11;
  v17 = self;
  v20 = a3;
  v21 = a5;
  [v10 performBlockAndWait:v15];

  if (a5)
  {
    v12 = v23[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v29[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (unint64_t)verifyTLTEntryForPerApplicationLogHead:(id)a3 error:(id *)a4
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100009F1C;
  v12 = &unk_1001324B8;
  v13 = self;
  v14 = a3;
  v5 = v14;
  v6 = objc_retainBlock(&v9);
  v7 = [TransparencyAnalytics doKTResultWithAnalyticsForEventName:@"ktTLTVerifyInclusionProofEvent" validateType:3 error:a4 block:v6, v9, v10, v11, v12, v13];

  return v7;
}

@end