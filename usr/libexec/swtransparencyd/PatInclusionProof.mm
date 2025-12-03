@interface PatInclusionProof
+ (id)descriptor;
- (id)patSigningKeyWithError:(id *)error;
- (id)vrfPublicKeyWithError:(id *)error;
- (int)earliestCurrentTreeVersionWithError:(id *)error;
- (int)earliestNextTreeVersionWithError:(id *)error;
- (unint64_t)patLogBeginningMs;
- (unint64_t)shutdownTimeStamp:(id *)stamp;
- (unint64_t)tltLogBeginningMs;
- (unint64_t)verifyConfigProof:(id *)proof;
- (unint64_t)verifyWithError:(id *)error;
- (void)setMetadataValue:(id)value key:(id)key;
@end

@implementation PatInclusionProof

- (void)setMetadataValue:(id)value key:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (valueCopy)
  {
    metadata = [(PatInclusionProof *)self metadata];
    v8 = [metadata mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    [v8 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(PatInclusionProof *)self setMetadata:v8];
  }
}

- (id)patSigningKeyWithError:(id *)error
{
  perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
  nodeBytes = [perApplicationTreeEntry nodeBytes];
  if (nodeBytes)
  {
    v7 = nodeBytes;
    perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
    nodeBytes2 = [perApplicationTreeEntry2 nodeBytes];
    v10 = [nodeBytes2 length];

    if (v10)
    {
      perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
      nodeBytes3 = [perApplicationTreeEntry3 nodeBytes];
      v13 = [(TransparencyGPBMessage *)PerApplicationTreeConfigNode parseFromData:nodeBytes3 error:error];

      if (v13)
      {
        publicKeyBytes = [v13 publicKeyBytes];
        if (publicKeyBytes)
        {
          v15 = publicKeyBytes;
          publicKeyBytes2 = [v13 publicKeyBytes];
          v17 = [publicKeyBytes2 length];

          if (v17)
          {
            publicKeyBytes3 = [v13 publicKeyBytes];
LABEL_32:

            goto LABEL_33;
          }
        }

        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-216 description:@"Signing Public key missing from per-app tree config node"];
        }

        if (qword_100155EF0 != -1)
        {
          sub_1000F2430();
        }

        v20 = qword_100155EF8;
        if (!os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          publicKeyBytes3 = 0;
          goto LABEL_32;
        }

        *buf = 0;
        v21 = "Signing Public key missing from per-app tree config node";
        v22 = v20;
        v23 = 2;
      }

      else
      {
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-165 underlyingError:*error description:?];
        }

        if (qword_100155EF0 != -1)
        {
          sub_1000F2444();
        }

        v24 = qword_100155EF8;
        if (!os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        if (error)
        {
          v25 = *error;
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

  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-164 description:@"KT PAT Config proof missing signing key"];
  }

  if (qword_100155EF0 != -1)
  {
    sub_1000F2458();
  }

  v19 = qword_100155EF8;
  if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "KT PAT Config proof missing signing key", buf, 2u);
  }

  publicKeyBytes3 = 0;
LABEL_33:

  return publicKeyBytes3;
}

- (id)vrfPublicKeyWithError:(id *)error
{
  perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
  nodeBytes = [perApplicationTreeEntry nodeBytes];
  if (nodeBytes)
  {
    v7 = nodeBytes;
    perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
    nodeBytes2 = [perApplicationTreeEntry2 nodeBytes];
    v10 = [nodeBytes2 length];

    if (v10)
    {
      perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
      nodeBytes3 = [perApplicationTreeEntry3 nodeBytes];
      v13 = [(TransparencyGPBMessage *)PerApplicationTreeConfigNode parseFromData:nodeBytes3 error:error];

      if (v13)
      {
        if ([v13 hasVrfPublicKey])
        {
          vrfPublicKey = [v13 vrfPublicKey];

          if (vrfPublicKey)
          {
            vrfPublicKey2 = [v13 vrfPublicKey];
LABEL_27:

            goto LABEL_28;
          }
        }

        if (error)
        {
          [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-166 description:@"VRF Public key missing from per-app tree config node"];
          *error = vrfPublicKey2 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-165 underlyingError:*error description:?];
        }

        if (qword_100155EF0 != -1)
        {
          sub_1000F246C();
        }

        v17 = qword_100155EF8;
        if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
        {
          if (error)
          {
            v18 = *error;
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

      vrfPublicKey2 = 0;
      goto LABEL_27;
    }
  }

  else
  {
  }

  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-164 description:@"KT PAT Config proof missing VRFPublicKey"];
  }

  if (qword_100155EF0 != -1)
  {
    sub_1000F2480();
  }

  v16 = qword_100155EF8;
  if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "KT PAT Config proof missing VRFPublicKey", buf, 2u);
  }

  vrfPublicKey2 = 0;
LABEL_28:

  return vrfPublicKey2;
}

- (int)earliestNextTreeVersionWithError:(id *)error
{
  perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
  nodeBytes = [perApplicationTreeEntry nodeBytes];
  if (nodeBytes)
  {
    v7 = nodeBytes;
    perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
    nodeBytes2 = [perApplicationTreeEntry2 nodeBytes];
    v10 = [nodeBytes2 length];

    if (v10)
    {
      perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
      nodeBytes3 = [perApplicationTreeEntry3 nodeBytes];
      v13 = [(TransparencyGPBMessage *)LogClosedNode parseFromData:nodeBytes3 error:error];

      if (v13)
      {
        Tree_RawValue = LogClosedNode_EarliestVersionForNextTree_RawValue(v13);
      }

      else
      {
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-233 underlyingError:*error description:?];
        }

        if (qword_100155EF0 != -1)
        {
          sub_1000F2494();
        }

        v16 = qword_100155EF8;
        if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
        {
          if (error)
          {
            v17 = *error;
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

  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-232 description:@"KT PAT closed proof missing node bytes"];
  }

  if (qword_100155EF0 != -1)
  {
    sub_1000F24A8();
  }

  v15 = qword_100155EF8;
  if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "KT PAT closed proof missing node bytes", buf, 2u);
  }

  return 0;
}

- (unint64_t)shutdownTimeStamp:(id *)stamp
{
  perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
  nodeBytes = [perApplicationTreeEntry nodeBytes];
  if (nodeBytes)
  {
    v7 = nodeBytes;
    perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
    nodeBytes2 = [perApplicationTreeEntry2 nodeBytes];
    v10 = [nodeBytes2 length];

    if (v10)
    {
      perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
      nodeBytes3 = [perApplicationTreeEntry3 nodeBytes];
      v13 = [(TransparencyGPBMessage *)LogClosedNode parseFromData:nodeBytes3 error:stamp];

      if (v13)
      {
        timestampMs = [v13 timestampMs];
      }

      else
      {
        if (stamp)
        {
          *stamp = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-233 underlyingError:*stamp description:?];
        }

        if (qword_100155EF0 != -1)
        {
          sub_1000F24BC();
        }

        v16 = qword_100155EF8;
        if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
        {
          if (stamp)
          {
            v17 = *stamp;
          }

          else
          {
            v17 = 0;
          }

          *buf = 138412290;
          v20 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to decode PAT closed node: %@", buf, 0xCu);
        }

        timestampMs = 0;
      }

      return timestampMs;
    }
  }

  else
  {
  }

  if (stamp)
  {
    *stamp = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-232 description:@"KT PAT closed proof missing node bytes"];
  }

  if (qword_100155EF0 != -1)
  {
    sub_1000F24D0();
  }

  v15 = qword_100155EF8;
  if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "KT PAT closed proof missing node bytes", buf, 2u);
  }

  return 0;
}

- (int)earliestCurrentTreeVersionWithError:(id *)error
{
  perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
  nodeBytes = [perApplicationTreeEntry nodeBytes];
  if (nodeBytes)
  {
    v7 = nodeBytes;
    perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
    nodeBytes2 = [perApplicationTreeEntry2 nodeBytes];
    v10 = [nodeBytes2 length];

    if (v10)
    {
      perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
      nodeBytes3 = [perApplicationTreeEntry3 nodeBytes];
      v13 = [(TransparencyGPBMessage *)PerApplicationTreeConfigNode parseFromData:nodeBytes3 error:error];

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
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-165 underlyingError:*error description:?];
        }

        if (qword_100155EF0 != -1)
        {
          sub_1000F24E4();
        }

        v15 = 999999999;
        v17 = qword_100155EF8;
        if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
        {
          if (error)
          {
            v18 = *error;
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

  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-164 description:@"KT PAT Config proof missing node bytes"];
  }

  if (qword_100155EF0 != -1)
  {
    sub_1000F24F8();
  }

  v15 = 999999999;
  v16 = qword_100155EF8;
  if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "KT PAT Config proof missing node bytes", buf, 2u);
  }

  return v15;
}

- (unint64_t)patLogBeginningMs
{
  perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
  v3 = [perApplicationTreeEntry slh];
  v4 = [SignedLogHead signedTypeWithObject:v3];

  parsedLogHead = [v4 parsedLogHead];
  logBeginningMs = [parsedLogHead logBeginningMs];

  return logBeginningMs;
}

- (unint64_t)tltLogBeginningMs
{
  topLevelTreeEntry = [(PatInclusionProof *)self topLevelTreeEntry];
  v3 = [topLevelTreeEntry slh];
  v4 = [SignedLogHead signedTypeWithObject:v3];

  parsedLogHead = [v4 parsedLogHead];
  logBeginningMs = [parsedLogHead logBeginningMs];

  return logBeginningMs;
}

- (unint64_t)verifyWithError:(id *)error
{
  if (![(PatInclusionProof *)self hasPerApplicationTreeEntry]|| ([(PatInclusionProof *)self perApplicationTreeEntry], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v34 = -33;
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:v34 description:@"PAT inclusion proof missing required field"];
    goto LABEL_8;
  }

  if ([(PatInclusionProof *)self hasTopLevelTreeEntry])
  {
    topLevelTreeEntry = [(PatInclusionProof *)self topLevelTreeEntry];

    if (topLevelTreeEntry)
    {
      v7 = [TransparencyLogEntryVerifier alloc];
      verifier = [(PatInclusionProof *)self verifier];
      keyBag = [verifier keyBag];
      appSthKeyStore = [keyBag appSthKeyStore];
      v11 = [(TransparencyLogEntryVerifier *)v7 initWithTrustedKeyStore:appSthKeyStore];

      v12 = [TransparencyLogEntryVerifier alloc];
      verifier2 = [(PatInclusionProof *)self verifier];
      keyBag2 = [verifier2 keyBag];
      tltKeyStore = [keyBag2 tltKeyStore];
      v16 = [(TransparencyLogEntryVerifier *)v12 initWithTrustedKeyStore:tltKeyStore];

      dataStore = [(PatInclusionProof *)self dataStore];
      perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
      [perApplicationTreeEntry setVerifier:v11];

      perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
      [perApplicationTreeEntry2 setDataStore:dataStore];

      perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
      metadata = [(PatInclusionProof *)self metadata];
      v22 = kTransparencyResponseMetadataKeyServerHint;
      v23 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
      [perApplicationTreeEntry3 setMetadataValue:v23 key:v22];

      topLevelTreeEntry2 = [(PatInclusionProof *)self topLevelTreeEntry];
      [topLevelTreeEntry2 setVerifier:v16];

      topLevelTreeEntry3 = [(PatInclusionProof *)self topLevelTreeEntry];
      [topLevelTreeEntry3 setDataStore:dataStore];

      topLevelTreeEntry4 = [(PatInclusionProof *)self topLevelTreeEntry];
      metadata2 = [(PatInclusionProof *)self metadata];
      v28 = [metadata2 objectForKeyedSubscript:v22];
      [topLevelTreeEntry4 setMetadataValue:v28 key:v22];

      verifier3 = [(PatInclusionProof *)self verifier];
      perApplicationTreeEntry4 = [(PatInclusionProof *)self perApplicationTreeEntry];
      topLevelTreeEntry5 = [(PatInclusionProof *)self topLevelTreeEntry];
      v32 = [verifier3 verifyPatInclusionProofWithPerAppLogEntry:perApplicationTreeEntry4 topLevelTreeEntry:topLevelTreeEntry5 error:error];

      return v32;
    }
  }

  v34 = -34;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (qword_100155EF0 != -1)
  {
    sub_1000F250C();
  }

  v35 = qword_100155EF8;
  if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
  {
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "PAT inclusion proof missing required field", v36, 2u);
  }

  return 0;
}

- (unint64_t)verifyConfigProof:(id *)proof
{
  result = [(PatInclusionProof *)self verifyWithError:?];
  if (result == 1)
  {
    perApplicationTreeEntry = [(PatInclusionProof *)self perApplicationTreeEntry];
    nodePosition = [perApplicationTreeEntry nodePosition];

    if (nodePosition)
    {
      if (proof)
      {
        perApplicationTreeEntry2 = [(PatInclusionProof *)self perApplicationTreeEntry];
        *proof = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", @"TransparencyErrorVerify", -163, @"per-app tree (config) inclusion proof not position 0 instead position %llu", [perApplicationTreeEntry2 nodePosition]);;

        v9 = +[NSMutableDictionary dictionary];
        if (+[TransparencyAnalytics hasInternalDiagnostics])
        {
          metadata = [(PatInclusionProof *)self metadata];
          v11 = kTransparencyResponseMetadataKeyServerHint;
          v12 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

          if (v12)
          {
            metadata2 = [(PatInclusionProof *)self metadata];
            v14 = [metadata2 objectForKeyedSubscript:v11];
            [v9 setObject:v14 forKeyedSubscript:v11];
          }
        }

        v15 = +[TransparencyAnalytics logger];
        verifier = [(PatInclusionProof *)self verifier];
        application = [verifier application];
        v18 = [TransparencyAnalytics formatEventName:@"VerifyPATInclusionProofEvent" application:application];
        [v15 logResultForEvent:v18 hardFailure:1 result:*proof withAttributes:v9];
      }

      if (qword_100155EF0 != -1)
      {
        sub_1000F2520();
      }

      v19 = qword_100155EF8;
      if (os_log_type_enabled(qword_100155EF8, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        perApplicationTreeEntry3 = [(PatInclusionProof *)self perApplicationTreeEntry];
        *buf = 134217984;
        nodePosition2 = [perApplicationTreeEntry3 nodePosition];
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

+ (id)descriptor
{
  v2 = qword_100155F98;
  if (!qword_100155F98)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:PatInclusionProof messageName:@"PatInclusionProof" fileDescription:&unk_1001516B0 fields:&off_100151B68 fieldCount:2 storageSize:24 flags:v4];
    [v2 setupExtraTextInfo:&unk_100102F08];
    qword_100155F98 = v2;
  }

  return v2;
}

@end