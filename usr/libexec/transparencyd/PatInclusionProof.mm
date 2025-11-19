@interface PatInclusionProof
+ (id)descriptor;
- (id)patSigningKeyWithError:(id *)a3;
- (id)vrfPublicKeyWithError:(id *)a3;
- (int)earliestCurrentTreeVersionWithError:(id *)a3;
- (int)earliestNextTreeVersionWithError:(id *)a3;
- (unint64_t)patLogBeginningMs;
- (unint64_t)shutdownTimeStamp:(id *)a3;
- (unint64_t)tltLogBeginningMs;
- (unint64_t)verifyConfigProof:(id *)a3;
- (unint64_t)verifyWithError:(id *)a3;
- (void)setMetadataValue:(id)a3 key:(id)a4;
@end

@implementation PatInclusionProof

+ (id)descriptor
{
  v2 = qword_10039C890;
  if (!qword_10039C890)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PatInclusionProof messageName:@"PatInclusionProof" fileDescription:&unk_10038A4D8 fields:&off_10038A990 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF628];
    qword_10039C890 = v2;
  }

  return v2;
}

- (void)setMetadataValue:(id)a3 key:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [(PatInclusionProof *)self metadata];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:v9 forKeyedSubscript:v6];
    [(PatInclusionProof *)self setMetadata:v8];
  }
}

- (id)patSigningKeyWithError:(id *)a3
{
  v5 = [(PatInclusionProof *)self perApplicationTreeEntry];
  v6 = [v5 nodeBytes];
  if (v6)
  {
    v7 = v6;
    v8 = [(PatInclusionProof *)self perApplicationTreeEntry];
    v9 = [v8 nodeBytes];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v12 = [v11 nodeBytes];
      v13 = [(TransparencyGPBMessage *)PerApplicationTreeConfigNode parseFromData:v12 error:a3];

      if (v13)
      {
        v14 = [v13 publicKeyBytes];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 publicKeyBytes];
          v17 = [v16 length];

          if (v17)
          {
            v18 = [v13 publicKeyBytes];
LABEL_32:

            goto LABEL_33;
          }
        }

        if (a3)
        {
          *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-216 description:@"Signing Public key missing from per-app tree config node"];
        }

        if (qword_10039CAD8 != -1)
        {
          sub_10025D054();
        }

        v20 = qword_10039CAE0;
        if (!os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          v18 = 0;
          goto LABEL_32;
        }

        *buf = 0;
        v21 = "Signing Public key missing from per-app tree config node";
        v22 = v20;
        v23 = 2;
      }

      else
      {
        if (a3)
        {
          *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-165 underlyingError:*a3 description:?];
        }

        if (qword_10039CAD8 != -1)
        {
          sub_10025D068();
        }

        v24 = qword_10039CAE0;
        if (!os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        if (a3)
        {
          v25 = *a3;
        }

        else
        {
          v25 = 0;
        }

        *buf = 138412290;
        v28 = v25;
        v21 = "failed to decode Per Application Tree config node: %@";
        v22 = v24;
        v23 = 12;
      }

      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      goto LABEL_31;
    }
  }

  else
  {
  }

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-164 description:@"KT PAT Config proof missing signing key"];
  }

  if (qword_10039CAD8 != -1)
  {
    sub_10025D07C();
  }

  v19 = qword_10039CAE0;
  if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "KT PAT Config proof missing signing key", buf, 2u);
  }

  v18 = 0;
LABEL_33:

  return v18;
}

- (id)vrfPublicKeyWithError:(id *)a3
{
  v5 = [(PatInclusionProof *)self perApplicationTreeEntry];
  v6 = [v5 nodeBytes];
  if (v6)
  {
    v7 = v6;
    v8 = [(PatInclusionProof *)self perApplicationTreeEntry];
    v9 = [v8 nodeBytes];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v12 = [v11 nodeBytes];
      v13 = [(TransparencyGPBMessage *)PerApplicationTreeConfigNode parseFromData:v12 error:a3];

      if (v13)
      {
        if ([v13 hasVrfPublicKey])
        {
          v14 = [v13 vrfPublicKey];

          if (v14)
          {
            v15 = [v13 vrfPublicKey];
LABEL_27:

            goto LABEL_28;
          }
        }

        if (a3)
        {
          [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-166 description:@"VRF Public key missing from per-app tree config node"];
          *a3 = v15 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        if (a3)
        {
          *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-165 underlyingError:*a3 description:?];
        }

        if (qword_10039CAD8 != -1)
        {
          sub_10025D090();
        }

        v17 = qword_10039CAE0;
        if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
        {
          if (a3)
          {
            v18 = *a3;
          }

          else
          {
            v18 = 0;
          }

          *buf = 138412290;
          v21 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to decode Per Application Tree config node: %@", buf, 0xCu);
        }
      }

      v15 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-164 description:@"KT PAT Config proof missing VRFPublicKey"];
  }

  if (qword_10039CAD8 != -1)
  {
    sub_10025D0A4();
  }

  v16 = qword_10039CAE0;
  if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "KT PAT Config proof missing VRFPublicKey", buf, 2u);
  }

  v15 = 0;
LABEL_28:

  return v15;
}

- (int)earliestNextTreeVersionWithError:(id *)a3
{
  v5 = [(PatInclusionProof *)self perApplicationTreeEntry];
  v6 = [v5 nodeBytes];
  if (v6)
  {
    v7 = v6;
    v8 = [(PatInclusionProof *)self perApplicationTreeEntry];
    v9 = [v8 nodeBytes];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v12 = [v11 nodeBytes];
      v13 = [(TransparencyGPBMessage *)LogClosedNode parseFromData:v12 error:a3];

      if (v13)
      {
        Tree_RawValue = LogClosedNode_EarliestVersionForNextTree_RawValue(v13);
      }

      else
      {
        if (a3)
        {
          *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-233 underlyingError:*a3 description:?];
        }

        if (qword_10039CAD8 != -1)
        {
          sub_10025D0B8();
        }

        v16 = qword_10039CAE0;
        if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
        {
          if (a3)
          {
            v17 = *a3;
          }

          else
          {
            v17 = 0;
          }

          *buf = 138412290;
          v20 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to decode PAT closed node: %@", buf, 0xCu);
        }

        Tree_RawValue = 0;
      }

      return Tree_RawValue;
    }
  }

  else
  {
  }

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-232 description:@"KT PAT closed proof missing node bytes"];
  }

  if (qword_10039CAD8 != -1)
  {
    sub_10025D0CC();
  }

  v15 = qword_10039CAE0;
  if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "KT PAT closed proof missing node bytes", buf, 2u);
  }

  return 0;
}

- (unint64_t)shutdownTimeStamp:(id *)a3
{
  v5 = [(PatInclusionProof *)self perApplicationTreeEntry];
  v6 = [v5 nodeBytes];
  if (v6)
  {
    v7 = v6;
    v8 = [(PatInclusionProof *)self perApplicationTreeEntry];
    v9 = [v8 nodeBytes];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v12 = [v11 nodeBytes];
      v13 = [(TransparencyGPBMessage *)LogClosedNode parseFromData:v12 error:a3];

      if (v13)
      {
        v14 = [v13 timestampMs];
      }

      else
      {
        if (a3)
        {
          *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-233 underlyingError:*a3 description:?];
        }

        if (qword_10039CAD8 != -1)
        {
          sub_10025D0E0();
        }

        v16 = qword_10039CAE0;
        if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
        {
          if (a3)
          {
            v17 = *a3;
          }

          else
          {
            v17 = 0;
          }

          *buf = 138412290;
          v20 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to decode PAT closed node: %@", buf, 0xCu);
        }

        v14 = 0;
      }

      return v14;
    }
  }

  else
  {
  }

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-232 description:@"KT PAT closed proof missing node bytes"];
  }

  if (qword_10039CAD8 != -1)
  {
    sub_10025D0F4();
  }

  v15 = qword_10039CAE0;
  if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "KT PAT closed proof missing node bytes", buf, 2u);
  }

  return 0;
}

- (int)earliestCurrentTreeVersionWithError:(id *)a3
{
  v5 = [(PatInclusionProof *)self perApplicationTreeEntry];
  v6 = [v5 nodeBytes];
  if (v6)
  {
    v7 = v6;
    v8 = [(PatInclusionProof *)self perApplicationTreeEntry];
    v9 = [v8 nodeBytes];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v12 = [v11 nodeBytes];
      v13 = [(TransparencyGPBMessage *)PerApplicationTreeConfigNode parseFromData:v12 error:a3];

      if (v13)
      {
        v14 = PerApplicationTreeConfigNode_EarliestVersion_RawValue(v13);
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }
      }

      else
      {
        if (a3)
        {
          *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-165 underlyingError:*a3 description:?];
        }

        if (qword_10039CAD8 != -1)
        {
          sub_10025D108();
        }

        v15 = 999999999;
        v17 = qword_10039CAE0;
        if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
        {
          if (a3)
          {
            v18 = *a3;
          }

          else
          {
            v18 = 0;
          }

          *buf = 138412290;
          v21 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to decode Per Application Tree config node: %@", buf, 0xCu);
        }
      }

      return v15;
    }
  }

  else
  {
  }

  if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-164 description:@"KT PAT Config proof missing node bytes"];
  }

  if (qword_10039CAD8 != -1)
  {
    sub_10025D11C();
  }

  v15 = 999999999;
  v16 = qword_10039CAE0;
  if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "KT PAT Config proof missing node bytes", buf, 2u);
  }

  return v15;
}

- (unint64_t)patLogBeginningMs
{
  v2 = [(PatInclusionProof *)self perApplicationTreeEntry];
  v3 = [v2 slh];
  v4 = [SignedLogHead signedTypeWithObject:v3];

  v5 = [v4 parsedLogHead];
  v6 = [v5 logBeginningMs];

  return v6;
}

- (unint64_t)tltLogBeginningMs
{
  v2 = [(PatInclusionProof *)self topLevelTreeEntry];
  v3 = [v2 slh];
  v4 = [SignedLogHead signedTypeWithObject:v3];

  v5 = [v4 parsedLogHead];
  v6 = [v5 logBeginningMs];

  return v6;
}

- (unint64_t)verifyWithError:(id *)a3
{
  if (![(PatInclusionProof *)self hasPerApplicationTreeEntry]|| ([(PatInclusionProof *)self perApplicationTreeEntry], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v34 = -33;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v34 description:@"PAT inclusion proof missing required field"];
    goto LABEL_8;
  }

  if ([(PatInclusionProof *)self hasTopLevelTreeEntry])
  {
    v6 = [(PatInclusionProof *)self topLevelTreeEntry];

    if (v6)
    {
      v7 = [TransparencyLogEntryVerifier alloc];
      v8 = [(PatInclusionProof *)self verifier];
      v9 = [v8 keyBag];
      v10 = [v9 appSthKeyStore];
      v11 = [(TransparencyLogEntryVerifier *)v7 initWithTrustedKeyStore:v10];

      v12 = [TransparencyLogEntryVerifier alloc];
      v13 = [(PatInclusionProof *)self verifier];
      v14 = [v13 keyBag];
      v15 = [v14 tltKeyStore];
      v16 = [(TransparencyLogEntryVerifier *)v12 initWithTrustedKeyStore:v15];

      v17 = [(PatInclusionProof *)self dataStore];
      v18 = [(PatInclusionProof *)self perApplicationTreeEntry];
      [v18 setVerifier:v11];

      v19 = [(PatInclusionProof *)self perApplicationTreeEntry];
      [v19 setDataStore:v17];

      v20 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v21 = [(PatInclusionProof *)self metadata];
      v22 = kTransparencyResponseMetadataKeyServerHint;
      v23 = [v21 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
      [v20 setMetadataValue:v23 key:v22];

      v24 = [(PatInclusionProof *)self topLevelTreeEntry];
      [v24 setVerifier:v16];

      v25 = [(PatInclusionProof *)self topLevelTreeEntry];
      [v25 setDataStore:v17];

      v26 = [(PatInclusionProof *)self topLevelTreeEntry];
      v27 = [(PatInclusionProof *)self metadata];
      v28 = [v27 objectForKeyedSubscript:v22];
      [v26 setMetadataValue:v28 key:v22];

      v29 = [(PatInclusionProof *)self verifier];
      v30 = [(PatInclusionProof *)self perApplicationTreeEntry];
      v31 = [(PatInclusionProof *)self topLevelTreeEntry];
      v32 = [v29 verifyPatInclusionProofWithPerAppLogEntry:v30 topLevelTreeEntry:v31 error:a3];

      return v32;
    }
  }

  v34 = -34;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (qword_10039CAD8 != -1)
  {
    sub_10025D130();
  }

  v35 = qword_10039CAE0;
  if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "PAT inclusion proof missing required field", v36, 2u);
  }

  return 0;
}

- (unint64_t)verifyConfigProof:(id *)a3
{
  result = [(PatInclusionProof *)self verifyWithError:?];
  if (result == 1)
  {
    v6 = [(PatInclusionProof *)self perApplicationTreeEntry];
    v7 = [v6 nodePosition];

    if (v7)
    {
      if (a3)
      {
        v8 = [(PatInclusionProof *)self perApplicationTreeEntry];
        *a3 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", @"TransparencyErrorVerify", -163, @"per-app tree (config) inclusion proof not position 0 instead position %llu", [v8 nodePosition]);;

        v9 = +[NSMutableDictionary dictionary];
        if (+[TransparencyAnalytics hasInternalDiagnostics])
        {
          v10 = [(PatInclusionProof *)self metadata];
          v11 = kTransparencyResponseMetadataKeyServerHint;
          v12 = [v10 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

          if (v12)
          {
            v13 = [(PatInclusionProof *)self metadata];
            v14 = [v13 objectForKeyedSubscript:v11];
            [v9 setObject:v14 forKeyedSubscript:v11];
          }
        }

        v15 = +[TransparencyAnalytics logger];
        v16 = [(PatInclusionProof *)self verifier];
        v17 = [v16 application];
        v18 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:v17];
        [v15 logResultForEvent:v18 hardFailure:1 result:*a3 withAttributes:v9];
      }

      if (qword_10039CAD8 != -1)
      {
        sub_10025D144();
      }

      v19 = qword_10039CAE0;
      if (os_log_type_enabled(qword_10039CAE0, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = [(PatInclusionProof *)self perApplicationTreeEntry];
        *buf = 134217984;
        v23 = [v21 nodePosition];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "per-app tree (config) inclusion proof not position 0; instead position %llu", buf, 0xCu);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end