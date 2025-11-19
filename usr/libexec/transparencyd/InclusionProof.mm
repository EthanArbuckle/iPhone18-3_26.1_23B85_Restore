@interface InclusionProof
+ (id)descriptor;
- (id)mapLeafWithError:(id *)a3;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setFollowUp:(id)a3;
- (void)setMetadataValue:(id)a3 key:(id)a4;
- (void)setOptInServer:(id)a3;
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
    v7 = [(InclusionProof *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(InclusionProof *)self setMetadata:v8];
  }
}

- (id)mapLeafWithError:(id *)a3
{
  if (-[InclusionProof hasMapEntry](self, "hasMapEntry") && (-[InclusionProof mapEntry](self, "mapEntry"), v5 = objc_claimAutoreleasedReturnValue(), [v5 mapLeaf], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(InclusionProof *)self mapEntry];
    v8 = [v7 mapLeaf];
    v9 = [IdsMapLeaf parseFromData:v8 error:a3];

    if (!v9)
    {
      if (a3)
      {
        *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-142 underlyingError:*a3 description:?];
      }

      if (qword_10039CA88 != -1)
      {
        sub_10025CEC4();
      }

      v10 = qword_10039CA90;
      if (os_log_type_enabled(qword_10039CA90, OS_LOG_TYPE_ERROR))
      {
        if (a3)
        {
          v11 = *a3;
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
    if (a3)
    {
      *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-16 description:@"KT Inclusion proof missing map leaf"];
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

- (unint64_t)verifyWithError:(id *)a3
{
  if ([(InclusionProof *)self hasMapEntry]&& ([(InclusionProof *)self mapEntry], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if ([(InclusionProof *)self hasTopLevelTreeEntry]&& ![(InclusionProof *)self hasPerApplicationTreeEntry])
    {
      v50 = -11;
    }

    else
    {
      v6 = [(InclusionProof *)self index];
      if (v6)
      {
        v7 = v6;
        v8 = [(InclusionProof *)self index];
        v9 = [v8 length];

        if (v9)
        {
          v10 = [(InclusionProof *)self index];
          v11 = [TransparencyMapEntryVerifier alloc];
          v12 = [(InclusionProof *)self verifier];
          v13 = [v12 keyBag];
          v14 = [v13 appSthKeyStore];
          v58 = v10;
          v15 = [(TransparencyMapEntryVerifier *)v11 initWithPositon:v10 trustedKeyStore:v14];

          v16 = [TransparencyLogEntryVerifier alloc];
          v17 = [(InclusionProof *)self verifier];
          v18 = [v17 keyBag];
          v19 = [v18 appSthKeyStore];
          v56 = [(TransparencyLogEntryVerifier *)v16 initWithTrustedKeyStore:v19];

          v20 = [TransparencyLogEntryVerifier alloc];
          v21 = [(InclusionProof *)self verifier];
          v22 = [v21 keyBag];
          v23 = [v22 tltKeyStore];
          v24 = [(TransparencyLogEntryVerifier *)v20 initWithTrustedKeyStore:v23];

          v25 = [(InclusionProof *)self dataStore];
          v26 = [(InclusionProof *)self mapEntry];
          v57 = v15;
          [v26 setVerifier:v15];

          v27 = [(InclusionProof *)self mapEntry];
          [v27 setDataStore:v25];

          v28 = [(InclusionProof *)self mapEntry];
          v29 = [(InclusionProof *)self metadata];
          v30 = kTransparencyResponseMetadataKeyServerHint;
          v31 = [v29 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
          [v28 setMetadataValue:v31 key:v30];

          v32 = [(InclusionProof *)self mapEntry];
          v33 = [(InclusionProof *)self verifier];
          v34 = [v33 keyBag];
          v35 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v34 patLogBeginningMs]);
          v36 = [v35 stringValue];
          [v32 setMetadataValue:v36 key:@"overrideLogBeginTime"];

          if ([(InclusionProof *)self hasPerApplicationTreeEntry]&& ([(InclusionProof *)self perApplicationTreeEntry], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
          {
            v38 = [(InclusionProof *)self perApplicationTreeEntry];
            v39 = v56;
            [v38 setVerifier:v56];
            [v38 setDataStore:v25];
            v40 = [(InclusionProof *)self metadata];
            v41 = [v40 objectForKeyedSubscript:v30];
            [v38 setMetadataValue:v41 key:v30];

            v42 = [(InclusionProof *)self optInServer];
            [v38 setOptInServer:v42];

            v43 = [(InclusionProof *)self followUp];
            [v38 setFollowUp:v43];

            if ([(InclusionProof *)self hasTopLevelTreeEntry]&& ([(InclusionProof *)self topLevelTreeEntry], v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
            {
              v45 = [(InclusionProof *)self topLevelTreeEntry];
              [v45 setVerifier:v24];
              [v45 setDataStore:v25];
              v46 = [(InclusionProof *)self metadata];
              v47 = [v46 objectForKeyedSubscript:v30];
              [v45 setMetadataValue:v47 key:v30];

              v48 = [(InclusionProof *)self optInServer];
              [v45 setOptInServer:v48];

              v49 = [(InclusionProof *)self followUp];
              [v45 setFollowUp:v49];
            }

            else
            {
              v45 = 0;
            }
          }

          else
          {
            v38 = 0;
            v45 = 0;
            v39 = v56;
          }

          v53 = [(InclusionProof *)self verifier];
          v54 = [(InclusionProof *)self mapEntry];
          v55 = [v53 verifyInclusionProofWithMapEntry:v54 perAppLogEntry:v38 topLevelTreeEntry:v45 error:a3];

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

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v50 description:@"KT Inclusion proof data required for verification"];
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