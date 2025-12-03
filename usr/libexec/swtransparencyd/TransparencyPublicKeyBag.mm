@interface TransparencyPublicKeyBag
- (BOOL)processPatClosedProof:(id)proof error:(id *)error;
- (BOOL)processPatConfigProof:(id)proof error:(id *)error;
- (BOOL)processTltConfigProof:(id)proof error:(id *)error;
- (BOOL)verifyCertificates:(id)certificates intermediates:(id)intermediates application:(id)application error:(id *)error;
- (BOOL)verifyConfigProof:(id)proof error:(id *)error;
- (NSArray)verifiedLogHeads;
- (TransparencyPublicKeyBag)initWithDiskKeyStore:(id)store application:(id)application settings:(id)settings allowOldKeys:(BOOL)keys error:(id *)error;
- (TransparencyPublicKeyBag)initWithKeyData:(id)data tltLeafs:(id)leafs intermediates:(id)intermediates patConfigProof:(id)proof tltConfigProof:(id)configProof patClosedProof:(id)closedProof pamHeadInPatProof:(id)patProof application:(id)self0 allowOldKeys:(BOOL)self1 settings:(id)self2 error:(id *)self3;
- (TransparencyPublicKeyBag)initWithPublicKeysResponse:(id)response application:(id)application settings:(id)settings allowOldKeys:(BOOL)keys error:(id *)error;
- (id)copyTltBag;
- (id)copyVRFKeyFromConfigProof:(id)proof error:(id *)error;
- (id)createTrustedSthKeyStoreFromProofSPKI:(id)i signingKeysMap:(id)map error:(id *)error;
- (id)diskStoreDictionary;
- (id)processPamHeadInPatProof:(id)proof tltEntry:(id)entry error:(id *)error;
@end

@implementation TransparencyPublicKeyBag

- (TransparencyPublicKeyBag)initWithPublicKeysResponse:(id)response application:(id)application settings:(id)settings allowOldKeys:(BOOL)keys error:(id *)error
{
  keysCopy = keys;
  responseCopy = response;
  applicationCopy = application;
  settingsCopy = settings;
  v13 = &qword_100156000;
  selfCopy = self;
  if ([responseCopy status] == 1)
  {
    v14 = 0;
  }

  else
  {
    errorCopy = error;
    v16 = kTransparencyErrorServer;
    status = [responseCopy status];
    application = [(TransparencyPublicKeyBag *)self application];
    status2 = [responseCopy status];
    v20 = v16;
    v13 = &qword_100156000;
    v14 = [TransparencyError errorWithDomain:v20 code:status description:@"PublicKeysResponse for %@ indicates server failure %d", application, status2];

    if (qword_1001560A8 != -1)
    {
      sub_1000F287C();
    }

    v21 = qword_1001560B0;
    error = errorCopy;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      application2 = [(TransparencyPublicKeyBag *)selfCopy application];
      *buf = 138412546;
      v85 = application2;
      v86 = 1024;
      LODWORD(v87) = [responseCopy status];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "PublicKeysResponse for %@ indicates server failure %d", buf, 0x12u);

      v13 = &qword_100156000;
    }
  }

  if ([responseCopy hasPatConfigProof] && (objc_msgSend(responseCopy, "patConfigProof"), v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
  {
    if ([responseCopy hasTltConfigProof] && (objc_msgSend(responseCopy, "tltConfigProof"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
    {
      appLeafsArray = [responseCopy appLeafsArray];
      if (appLeafsArray && (v27 = appLeafsArray, v28 = [responseCopy appLeafsArray_Count], v27, v28))
      {
        tltLeafsArray = [responseCopy tltLeafsArray];
        if (tltLeafsArray)
        {
          v30 = tltLeafsArray;
          tltLeafsArray_Count = [responseCopy tltLeafsArray_Count];

          if (tltLeafsArray_Count)
          {
            v32 = 0;
            v33 = 1;
            if (!keysCopy)
            {
              goto LABEL_46;
            }

            goto LABEL_40;
          }
        }

        if (qword_1001560A8 != -1)
        {
          sub_1000F2890();
        }

        v37 = qword_1001560B0;
        if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "PublicKeyResponse missing tlt leafs", buf, 2u);
        }

        v33 = 0;
        v32 = -36;
        if (keysCopy)
        {
LABEL_40:
          oldAppRootCertsArray = [responseCopy oldAppRootCertsArray];
          if (oldAppRootCertsArray)
          {
            v39 = oldAppRootCertsArray;
            oldAppRootCertsArray_Count = [responseCopy oldAppRootCertsArray_Count];

            if (oldAppRootCertsArray_Count)
            {
              appLeafsArray2 = [responseCopy appLeafsArray];
              oldAppRootCertsArray2 = [responseCopy oldAppRootCertsArray];
              [appLeafsArray2 addObjectsFromArray:oldAppRootCertsArray2];
            }
          }

          oldTltRootCertsArray = [responseCopy oldTltRootCertsArray];
          if (oldTltRootCertsArray)
          {
            v44 = oldTltRootCertsArray;
            oldTltRootCertsArray_Count = [responseCopy oldTltRootCertsArray_Count];

            if (oldTltRootCertsArray_Count)
            {
              tltLeafsArray2 = [responseCopy tltLeafsArray];
              oldTltRootCertsArray2 = [responseCopy oldTltRootCertsArray];
              [tltLeafsArray2 addObjectsFromArray:oldTltRootCertsArray2];
            }
          }
        }
      }

      else
      {
        if (qword_1001560A8 != -1)
        {
          sub_1000F28B8();
        }

        v36 = qword_1001560B0;
        if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "PublicKeyResponse missing app leafs", buf, 2u);
        }

        v33 = 0;
        v32 = -31;
        if (keysCopy)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      if (v13[21] != -1)
      {
        sub_1000F28E0();
      }

      v35 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "PublicKeyResponse missing data required for TLT key verification", buf, 2u);
      }

      v33 = 0;
      v32 = -223;
      if (keysCopy)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    if (v13[21] != -1)
    {
      sub_1000F2908();
    }

    v34 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "PublicKeyResponse missing data required for PAT key verification", buf, 2u);
    }

    v33 = 0;
    v32 = -32;
    if (keysCopy)
    {
      goto LABEL_40;
    }
  }

LABEL_46:
  if ((v33 & 1) == 0)
  {
    v59 = kTransparencyErrorDecode;
    application3 = [(TransparencyPublicKeyBag *)selfCopy application];
    v61 = [TransparencyError errorWithDomain:v59 code:v32 description:@"PublicKeysResponse for %@ missing or invalid content: %ld", application3, v32];

    if (qword_1001560A8 != -1)
    {
      sub_1000F2930();
    }

    v62 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      v63 = v62;
      v64 = selfCopy;
      application4 = [(TransparencyPublicKeyBag *)selfCopy application];
      *buf = 138543618;
      v85 = application4;
      v86 = 2048;
      v87 = v32;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "PublicKeysResponse for %{public}@ missing or invalid content: %ld", buf, 0x16u);

      v66 = 0;
      if (!error)
      {
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    goto LABEL_56;
  }

  if ([responseCopy status] != 1)
  {
    v61 = v14;
LABEL_56:
    v66 = 0;
    v64 = selfCopy;
    if (!error)
    {
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  errorCopy2 = error;
  patConfigProof = [responseCopy patConfigProof];
  metadata = [responseCopy metadata];
  v50 = kTransparencyResponseMetadataKeyServerHint;
  v51 = [metadata objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [patConfigProof setMetadataValue:v51 key:v50];

  tltConfigProof = [responseCopy tltConfigProof];
  metadata2 = [responseCopy metadata];
  v54 = [metadata2 objectForKeyedSubscript:v50];
  [tltConfigProof setMetadataValue:v54 key:v50];

  appLeafsArray3 = [responseCopy appLeafsArray];
  tltLeafsArray3 = [responseCopy tltLeafsArray];
  intermediatesArray = [responseCopy intermediatesArray];
  patConfigProof2 = [responseCopy patConfigProof];
  tltConfigProof2 = [responseCopy tltConfigProof];
  hasPatClosedProof = [responseCopy hasPatClosedProof];
  if (hasPatClosedProof)
  {
    patClosedProof = [responseCopy patClosedProof];
  }

  else
  {
    patClosedProof = 0;
  }

  hasPamHeadInPatProof = [responseCopy hasPamHeadInPatProof];
  if (hasPamHeadInPatProof)
  {
    pamHeadInPatProof = [responseCopy pamHeadInPatProof];
  }

  else
  {
    pamHeadInPatProof = 0;
  }

  v83 = v14;
  LOBYTE(v75) = keysCopy;
  v69 = appLeafsArray3;
  v70 = [(TransparencyPublicKeyBag *)selfCopy initWithKeyData:appLeafsArray3 tltLeafs:tltLeafsArray3 intermediates:intermediatesArray patConfigProof:patConfigProof2 tltConfigProof:tltConfigProof2 patClosedProof:patClosedProof pamHeadInPatProof:pamHeadInPatProof application:applicationCopy allowOldKeys:v75 settings:settingsCopy error:&v83];
  v61 = v83;

  v66 = v70;
  if (hasPamHeadInPatProof)
  {
  }

  if (hasPatClosedProof)
  {
  }

  error = errorCopy2;
  if (v66)
  {
    treeRollInfoURL = [responseCopy treeRollInfoURL];
    [(TransparencyPublicKeyBag *)v66 setTreeRollInfoURL:treeRollInfoURL];

    v72 = +[NSDate date];
    [(TransparencyPublicKeyBag *)v66 setReceiptTime:v72];

    v64 = v66;
    if (!errorCopy2)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v64 = 0;
    if (!errorCopy2)
    {
      goto LABEL_72;
    }
  }

LABEL_70:
  if (v61)
  {
    v73 = v61;
    *error = v61;
  }

LABEL_72:

  return v66;
}

- (TransparencyPublicKeyBag)initWithDiskKeyStore:(id)store application:(id)application settings:(id)settings allowOldKeys:(BOOL)keys error:(id *)error
{
  storeCopy = store;
  applicationCopy = application;
  settingsCopy = settings;
  v15 = [storeCopy objectForKeyedSubscript:@"PatConfigProof"];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [storeCopy objectForKeyedSubscript:@"TltConfigProof"];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [storeCopy objectForKeyedSubscript:@"Leafs"];
  if (!v19)
  {
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v20 = v19;
  v55 = applicationCopy;
  v21 = [storeCopy objectForKeyedSubscript:@"TltLeafs"];
  if (!v21)
  {
LABEL_19:

    applicationCopy = v55;
    goto LABEL_20;
  }

  v22 = v21;
  v54 = settingsCopy;
  v23 = [storeCopy objectForKeyedSubscript:@"Intermediates"];
  if (!v23)
  {

    goto LABEL_19;
  }

  v24 = v23;
  v25 = [storeCopy objectForKeyedSubscript:@"ReceiptTime"];

  settingsCopy = v54;
  applicationCopy = v55;
  if (v25)
  {
    v26 = [storeCopy objectForKeyedSubscript:@"PatConfigProof"];
    v27 = [(TransparencyGPBMessage *)PatInclusionProof parseFromData:v26 error:error];

    if (!v27)
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-35 underlyingError:*error description:?];
      }

      settingsCopy = v54;
      if (qword_1001560A8 != -1)
      {
        sub_1000F2980();
      }

      v39 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v40 = *error;
        }

        else
        {
          v40 = 0;
        }

        *buf = 138412290;
        applicationCopy2 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "PAT inclusion proof from disk failed to parse: %@", buf, 0xCu);
      }

      selfCopy = 0;
      goto LABEL_59;
    }

    v28 = [storeCopy objectForKeyedSubscript:@"TltConfigProof"];
    v29 = [(TransparencyGPBMessage *)LogEntry parseFromData:v28 error:error];

    if (v29)
    {
      v53 = v29;
      v30 = [storeCopy objectForKeyedSubscript:@"PatClosedProof"];

      if (v30)
      {
        v31 = [storeCopy objectForKeyedSubscript:@"PatClosedProof"];
        v32 = [(TransparencyGPBMessage *)PatInclusionProof parseFromData:v31 error:error];

        if (!v32)
        {
          if (error)
          {
            *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-35 underlyingError:*error description:?];
          }

          v29 = v53;
          settingsCopy = v54;
          if (qword_1001560A8 != -1)
          {
            sub_1000F2958();
          }

          v33 = qword_1001560B0;
          if (!os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          if (error)
          {
            v34 = *error;
          }

          else
          {
            v34 = 0;
          }

          *buf = 138412290;
          applicationCopy2 = v34;
          v50 = "PAT closed inclusion proof from disk failed to parse: %@";
LABEL_56:
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v50, buf, 0xCu);
LABEL_57:
          selfCopy = 0;
LABEL_58:

LABEL_59:
          goto LABEL_29;
        }
      }

      else
      {
        v32 = 0;
      }

      v52 = [storeCopy objectForKeyedSubscript:@"TreeRollInfoURL"];
      v42 = [storeCopy objectForKeyedSubscript:@"Leafs"];
      v43 = [storeCopy objectForKeyedSubscript:@"TltLeafs"];
      v44 = [storeCopy objectForKeyedSubscript:@"Intermediates"];
      v56 = 0;
      LOBYTE(v51) = keys;
      v45 = [(TransparencyPublicKeyBag *)self initWithKeyData:v42 tltLeafs:v43 intermediates:v44 patConfigProof:v27 tltConfigProof:v53 patClosedProof:v32 pamHeadInPatProof:0 application:v55 allowOldKeys:v51 settings:v54 error:&v56];
      v46 = v56;
      v47 = v45;

      v48 = [storeCopy objectForKeyedSubscript:@"ReceiptTime"];
      [(TransparencyPublicKeyBag *)v47 setReceiptTime:v48];

      [(TransparencyPublicKeyBag *)v47 setTreeRollInfoURL:v52];
      if (error && v46)
      {
        v49 = v46;
        *error = v46;
      }

      self = v47;

      selfCopy = self;
      settingsCopy = v54;
      applicationCopy = v55;
      v29 = v53;
      goto LABEL_58;
    }

    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-218 underlyingError:*error description:?];
    }

    settingsCopy = v54;
    if (qword_1001560A8 != -1)
    {
      sub_1000F296C();
    }

    v33 = qword_1001560B0;
    if (!os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    if (error)
    {
      v41 = *error;
    }

    else
    {
      v41 = 0;
    }

    *buf = 138412290;
    applicationCopy2 = v41;
    v50 = "TLT inclusion proof from disk failed to parse: %@";
    goto LABEL_56;
  }

LABEL_22:
  if (error)
  {
    *error = [TransparencyError errorWithDomain:kTransparencyErrorFile code:-54 description:@"missing fields from the disk store for %@", self->_application];
  }

  if (qword_1001560A8 != -1)
  {
    sub_1000F2994();
  }

  v35 = qword_1001560B0;
  if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
  {
    application = self->_application;
    *buf = 138412290;
    applicationCopy2 = application;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "missing fields from the disk store for %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

- (TransparencyPublicKeyBag)initWithKeyData:(id)data tltLeafs:(id)leafs intermediates:(id)intermediates patConfigProof:(id)proof tltConfigProof:(id)configProof patClosedProof:(id)closedProof pamHeadInPatProof:(id)patProof application:(id)self0 allowOldKeys:(BOOL)self1 settings:(id)self2 error:(id *)self3
{
  dataCopy = data;
  leafsCopy = leafs;
  leafsCopy2 = leafs;
  intermediatesCopy = intermediates;
  proofCopy = proof;
  configProofCopy = configProof;
  closedProofCopy = closedProof;
  patProofCopy = patProof;
  applicationCopy = application;
  settingsCopy = settings;
  v77.receiver = self;
  v77.super_class = TransparencyPublicKeyBag;
  v24 = [(TransparencyPublicKeyBag *)&v77 init];
  if (v24)
  {
    v72 = configProofCopy;
    v25 = +[NSMutableArray array];
    [(TransparencyPublicKeyBag *)v24 set__verifiedLogHeads:v25];

    [(TransparencyPublicKeyBag *)v24 setApplication:applicationCopy];
    [(TransparencyPublicKeyBag *)v24 setAllowOldKeys:keys];
    [(TransparencyPublicKeyBag *)v24 setSettings:settingsCopy];
    settings = [(TransparencyPublicKeyBag *)v24 settings];

    if (!settings)
    {
      v27 = objc_alloc_init(TransparencySettings);
      [(TransparencyPublicKeyBag *)v24 setSettings:v27];
    }

    v28 = dataCopy;
    if ([(TransparencyPublicKeyBag *)v24 verifyCertificates:dataCopy intermediates:intermediatesCopy application:applicationCopy error:error])
    {
      v29 = [TransparencyCertificateHelper copyTrustedKeysFromDataArray:dataCopy error:error];
      trustedAppSigningKeys = v24->_trustedAppSigningKeys;
      v24->_trustedAppSigningKeys = v29;

      v31 = leafsCopy2;
      if (v24->_trustedAppSigningKeys)
      {
        objc_storeStrong(&v24->_trustedAppLeafs, data);
        v32 = [TransparencyTrustedKeyStore alloc];
        trustedAppSigningKeys = [(TransparencyPublicKeyBag *)v24 trustedAppSigningKeys];
        v34 = [(TransparencyTrustedKeyStore *)v32 initWithTrustedKeys:trustedAppSigningKeys];
        [(TransparencyPublicKeyBag *)v24 setAppSmtKeyStore:v34];

        appSmtKeyStore = [(TransparencyPublicKeyBag *)v24 appSmtKeyStore];
        [(TransparencyPublicKeyBag *)v24 setAppSthKeyStore:appSmtKeyStore];

        if ([(TransparencyPublicKeyBag *)v24 verifyCertificates:leafsCopy2 intermediates:intermediatesCopy application:kKTApplicationIdentifierTLT error:error])
        {
          v36 = [TransparencyCertificateHelper copyTrustedKeysFromDataArray:leafsCopy2 error:error];
          trustedTltSigningKeys = v24->_trustedTltSigningKeys;
          v24->_trustedTltSigningKeys = v36;

          if (v24->_trustedTltSigningKeys)
          {
            objc_storeStrong(&v24->_trustedTltLeafs, leafsCopy);
            v38 = [TransparencyTrustedKeyStore alloc];
            trustedTltSigningKeys = [(TransparencyPublicKeyBag *)v24 trustedTltSigningKeys];
            v40 = [(TransparencyTrustedKeyStore *)v38 initWithTrustedKeys:trustedTltSigningKeys];
            tltKeyStore = v24->_tltKeyStore;
            v24->_tltKeyStore = v40;

            v42 = proofCopy;
            if ([intermediatesCopy count])
            {
              v43 = intermediatesCopy;
            }

            else
            {
              v43 = &__NSArray0__struct;
            }

            trustedIntermediates = v24->_trustedIntermediates;
            v24->_trustedIntermediates = v43;

            v45 = closedProofCopy;
            if (![(TransparencyPublicKeyBag *)v24 processTltConfigProof:configProofCopy error:error])
            {
              goto LABEL_38;
            }

            if (!patProofCopy)
            {
LABEL_30:
              if ([(TransparencyPublicKeyBag *)v24 processPatConfigProof:v42 error:error]&& (!v45 || [(TransparencyPublicKeyBag *)v24 processPatClosedProof:v45 error:error]))
              {
                v44 = v24;
                goto LABEL_15;
              }

LABEL_38:
              v44 = 0;
              goto LABEL_15;
            }

            if (qword_1001560A8 != -1)
            {
              sub_1000F29A8();
            }

            v48 = qword_1001560B0;
            if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "pamHeadInPatProof present", buf, 2u);
            }

            objb = [proofCopy perApplicationTreeEntry];
            v49 = [objb slh];
            object = [v49 object];
            v51 = [patProofCopy slh];
            object2 = [v51 object];
            v67 = [object isEqualToData:object2];

            if ((v67 & 1) == 0)
            {
              if (qword_1001560A8 != -1)
              {
                sub_1000F29D0();
              }

              v31 = leafsCopy2;
              v42 = proofCopy;
              configProofCopy = v72;
              v45 = closedProofCopy;
              v63 = qword_1001560B0;
              if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "pamHeadInPatProof was present but didn't match patConfigProof SLH", buf, 2u);
              }

              goto LABEL_38;
            }

            topLevelTreeEntry = [proofCopy topLevelTreeEntry];
            v54 = [(TransparencyPublicKeyBag *)v24 processPamHeadInPatProof:patProofCopy tltEntry:topLevelTreeEntry error:error];

            if (v54)
            {
              parsedMapHead = [v54 parsedMapHead];
              v56 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [parsedMapHead application]);
              obja = [TransparencyApplication applicationIdentifierForValue:v56];

              if (qword_1001560A8 != -1)
              {
                sub_1000F29F8();
              }

              configProofCopy = v72;
              v57 = qword_1001560B0;
              if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_INFO))
              {
                v58 = v57;
                parsedMapHead2 = [v54 parsedMapHead];
                revision = [parsedMapHead2 revision];
                parsedMapHead3 = [v54 parsedMapHead];
                populating = [parsedMapHead3 populating];
                *buf = 138412802;
                v79 = obja;
                v80 = 2048;
                v81 = revision;
                configProofCopy = v72;
                v82 = 1024;
                v83 = populating;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "pamHeadInPatProof SMH for %@ with revision %llu, populating = %d", buf, 0x1Cu);
              }

              parsedMapHead4 = [v54 parsedMapHead];
              -[TransparencyPublicKeyBag setMapStillPopulating:](v24, "setMapStillPopulating:", [parsedMapHead4 populating]);

              v31 = leafsCopy2;
              v42 = proofCopy;
              v45 = closedProofCopy;
              goto LABEL_30;
            }

            v42 = proofCopy;
            if (qword_1001560A8 != -1)
            {
              sub_1000F2A20();
            }

            v31 = leafsCopy2;
            configProofCopy = v72;
            v64 = qword_1001560B0;
            if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
            {
              if (error)
              {
                v65 = *error;
              }

              else
              {
                v65 = 0;
              }

              *buf = 138412290;
              v79 = v65;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "pamHeadInPatProof was present but didn't validate: %@", buf, 0xCu);
            }

            v44 = 0;
            goto LABEL_11;
          }
        }
      }

      v44 = 0;
    }

    else
    {
      v44 = 0;
      v31 = leafsCopy2;
    }

    v42 = proofCopy;
    v45 = closedProofCopy;
    goto LABEL_15;
  }

  v44 = 0;
  v28 = dataCopy;
  v31 = leafsCopy2;
  v42 = proofCopy;
LABEL_11:
  v45 = closedProofCopy;
LABEL_15:

  return v44;
}

- (id)createTrustedSthKeyStoreFromProofSPKI:(id)i signingKeysMap:(id)map error:(id *)error
{
  iCopy = i;
  mapCopy = map;
  kt_sha256 = [iCopy kt_sha256];
  v10 = [mapCopy objectForKey:kt_sha256];

  if (v10)
  {
    v11 = [TransparencyTrustedKeyStore alloc];
    kt_sha2562 = [iCopy kt_sha256];
    v13 = [NSDictionary dictionaryWithObject:v10 forKey:kt_sha2562];
    v14 = [(TransparencyTrustedKeyStore *)v11 initWithTrustedKeys:v13];
  }

  else
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-219 description:@"Signing key in proof does not match any signing key in certs"];
    }

    if (qword_1001560A8 != -1)
    {
      sub_1000F2A48();
    }

    v15 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Signing key in proof does not match any signing key in certs", v17, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)diskStoreDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  trustedAppLeafs = [(TransparencyPublicKeyBag *)self trustedAppLeafs];
  [v3 setObject:trustedAppLeafs forKeyedSubscript:@"Leafs"];

  trustedTltLeafs = [(TransparencyPublicKeyBag *)self trustedTltLeafs];
  [v3 setObject:trustedTltLeafs forKeyedSubscript:@"TltLeafs"];

  trustedIntermediates = [(TransparencyPublicKeyBag *)self trustedIntermediates];
  [v3 setObject:trustedIntermediates forKeyedSubscript:@"Intermediates"];

  patConfigProof = [(TransparencyPublicKeyBag *)self patConfigProof];
  [v3 setObject:patConfigProof forKeyedSubscript:@"PatConfigProof"];

  tltConfigProof = [(TransparencyPublicKeyBag *)self tltConfigProof];
  [v3 setObject:tltConfigProof forKeyedSubscript:@"TltConfigProof"];

  receiptTime = [(TransparencyPublicKeyBag *)self receiptTime];
  [v3 setObject:receiptTime forKeyedSubscript:@"ReceiptTime"];

  patClosedProof = [(TransparencyPublicKeyBag *)self patClosedProof];
  [v3 setObject:patClosedProof forKeyedSubscript:@"PatClosedProof"];

  treeRollInfoURL = [(TransparencyPublicKeyBag *)self treeRollInfoURL];
  [v3 setObject:treeRollInfoURL forKeyedSubscript:@"TreeRollInfoURL"];

  return v3;
}

- (id)copyTltBag
{
  v3 = objc_alloc_init(TransparencyPublicKeyBag);
  [(TransparencyPublicKeyBag *)v3 setApplication:kKTApplicationIdentifierTLT];
  tltKeyStore = [(TransparencyPublicKeyBag *)self tltKeyStore];
  [(TransparencyPublicKeyBag *)v3 setAppSthKeyStore:tltKeyStore];

  trustedTltSigningKeys = [(TransparencyPublicKeyBag *)self trustedTltSigningKeys];
  [(TransparencyPublicKeyBag *)v3 setTrustedAppSigningKeys:trustedTltSigningKeys];

  [(TransparencyPublicKeyBag *)v3 setPatLogBeginningMs:[(TransparencyPublicKeyBag *)self tltLogBeginningMs]];
  tltKeyStore2 = [(TransparencyPublicKeyBag *)self tltKeyStore];
  [(TransparencyPublicKeyBag *)v3 setTltKeyStore:tltKeyStore2];

  trustedTltSigningKeys2 = [(TransparencyPublicKeyBag *)self trustedTltSigningKeys];
  [(TransparencyPublicKeyBag *)v3 setTrustedTltSigningKeys:trustedTltSigningKeys2];

  [(TransparencyPublicKeyBag *)v3 setTltLogBeginningMs:[(TransparencyPublicKeyBag *)self tltLogBeginningMs]];
  vrfKey = [(TransparencyPublicKeyBag *)self vrfKey];
  [(TransparencyPublicKeyBag *)v3 setVrfKey:vrfKey];

  receiptTime = [(TransparencyPublicKeyBag *)self receiptTime];
  [(TransparencyPublicKeyBag *)v3 setReceiptTime:receiptTime];

  [(TransparencyPublicKeyBag *)v3 setTltEarliestVersion:[(TransparencyPublicKeyBag *)self tltEarliestVersion]];
  [(TransparencyPublicKeyBag *)v3 setShutDown:[(TransparencyPublicKeyBag *)self shutDown]];
  return v3;
}

- (NSArray)verifiedLogHeads
{
  __verifiedLogHeads = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
  v3 = [NSArray arrayWithArray:__verifiedLogHeads];

  return v3;
}

- (BOOL)verifyCertificates:(id)certificates intermediates:(id)intermediates application:(id)application error:(id *)error
{
  certificatesCopy = certificates;
  intermediatesCopy = intermediates;
  applicationCopy = application;
  settings = [(TransparencyPublicKeyBag *)self settings];
  if ([settings allowsInternalSecurityPolicies])
  {
    settings2 = [(TransparencyPublicKeyBag *)self settings];
    v15 = [settings2 getBool:kTransparencyFlagDisableVerifyKeyStoreCertificates];

    if (v15)
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2A84();
      }

      v16 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "certificate verification not enabled", buf, 2u);
      }

      v17 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  AppleKeyTransparency = SecPolicyCreateAppleKeyTransparency();
  if (AppleKeyTransparency)
  {
    v19 = AppleKeyTransparency;
    v20 = [TransparencyCertificateHelper verifyCertificates:certificatesCopy intermediates:intermediatesCopy policy:AppleKeyTransparency error:error];
    v17 = v20;
    if (error && (v20 & 1) == 0)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-29 underlyingError:applicationCopy description:*error];
      if (qword_1001560A8 != -1)
      {
        sub_1000F2A5C();
      }

      v21 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        v22 = *error;
        *buf = 138412546;
        v26 = applicationCopy;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "certificates for %@ failed trust evaluation: %@", buf, 0x16u);
      }
    }

    CFRelease(v19);
  }

  else
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:-53 description:@"failed to create KT policy for %@", applicationCopy];
    }

    if (qword_1001560A8 != -1)
    {
      sub_1000F2A70();
    }

    v23 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = applicationCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to create KT policy for %@", buf, 0xCu);
    }

    v17 = 0;
  }

LABEL_24:

  return v17;
}

- (BOOL)processTltConfigProof:(id)proof error:(id *)error
{
  proofCopy = proof;
  v7 = [TransparencyLogEntryVerifier alloc];
  tltKeyStore = [(TransparencyPublicKeyBag *)self tltKeyStore];
  v9 = [(TransparencyLogEntryVerifier *)v7 initWithTrustedKeyStore:tltKeyStore];

  [proofCopy setVerifier:v9];
  if (![proofCopy verifyWithError:error])
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-224 underlyingError:*error description:@"TLT config proof failed to verify"];
    }

    if (qword_1001560A8 != -1)
    {
      sub_1000F2AE8();
    }

    v17 = qword_1001560B0;
    if (!os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_37;
    }

    if (error)
    {
      v18 = *error;
    }

    else
    {
      v18 = 0;
    }

    *buf = 138412290;
    v37[0] = v18;
    v14 = "TLT config proof failed to verify: %@";
    v15 = v17;
    v16 = 12;
    goto LABEL_36;
  }

  __verifiedLogHeads = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
  v11 = [proofCopy slh];
  v12 = [SignedLogHead signedTypeWithObject:v11];
  [__verifiedLogHeads addObject:v12];

  if (![proofCopy nodePosition])
  {
    nodeBytes = [proofCopy nodeBytes];
    v20 = [(TransparencyGPBMessage *)TopLevelTreeConfigNode parseFromData:nodeBytes error:error];

    if (!v20)
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2AD4();
      }

      v28 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v29 = *error;
        }

        else
        {
          v29 = 0;
        }

        *buf = 138412290;
        v37[0] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "TLT config node failed to parse: %@", buf, 0xCu);
      }

      if (error)
      {
        [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-141 underlyingError:*error description:@"TLT config node failed to parse"];
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_53;
    }

    publicKeyBytes = [v20 publicKeyBytes];
    trustedTltSigningKeys = [(TransparencyPublicKeyBag *)self trustedTltSigningKeys];
    v23 = [(TransparencyPublicKeyBag *)self createTrustedSthKeyStoreFromProofSPKI:publicKeyBytes signingKeysMap:trustedTltSigningKeys error:error];

    if (v23)
    {
      if (![(TransparencyPublicKeyBag *)self allowOldKeys])
      {
        [(TransparencyPublicKeyBag *)self setTltKeyStore:v23];
      }

      [(TransparencyPublicKeyBag *)self setTltEarliestVersion:TopLevelTreeConfigNode_EarliestVersion_RawValue(v20)];
      if (![(TransparencyPublicKeyBag *)self tltEarliestVersion])
      {
        [(TransparencyPublicKeyBag *)self setTltEarliestVersion:1];
      }

      tltEarliestVersion = [(TransparencyPublicKeyBag *)self tltEarliestVersion];
      v25 = kTransparencyProtocolVersion;
      if (tltEarliestVersion <= kTransparencyProtocolVersion)
      {
        data = [proofCopy data];
        [(TransparencyPublicKeyBag *)self setTltConfigProof:data];

        v30 = 1;
        goto LABEL_47;
      }

      if (qword_1001560A8 != -1)
      {
        sub_1000F2AAC();
      }

      v26 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        v27 = v26;
        *buf = 67109376;
        LODWORD(v37[0]) = [(TransparencyPublicKeyBag *)self tltEarliestVersion];
        WORD2(v37[0]) = 1024;
        *(v37 + 6) = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "TLT config proof earliest version later %d than our version %d", buf, 0xEu);
      }

      if (error)
      {
        [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-235 underlyingError:*error description:@"TLT config proof earliest version later %d than our version %d", [(TransparencyPublicKeyBag *)self tltEarliestVersion], v25];
LABEL_44:
        *error = v30 = 0;
LABEL_47:

LABEL_53:
        goto LABEL_54;
      }
    }

    else
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2AC0();
      }

      v31 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "TLT config proof signing key did not match any trusted cert", buf, 2u);
      }

      if (error)
      {
        [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-222 underlyingError:*error description:@"TLT config proof signing key did not match any trusted cert", v34, v35];
        goto LABEL_44;
      }
    }

    v30 = 0;
    goto LABEL_47;
  }

  if (error)
  {
    *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-220 description:@"TLT config proof at wrong position"];
  }

  if (qword_1001560A8 != -1)
  {
    sub_1000F2A98();
  }

  v13 = qword_1001560B0;
  if (!os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_37;
  }

  *buf = 0;
  v14 = "TLT config proof at wrong position";
  v15 = v13;
  v16 = 2;
LABEL_36:
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
LABEL_37:
  v30 = 0;
LABEL_54:

  return v30;
}

- (id)processPamHeadInPatProof:(id)proof tltEntry:(id)entry error:(id *)error
{
  proofCopy = proof;
  entryCopy = entry;
  nodeBytes = [proofCopy nodeBytes];
  v43 = 0;
  v11 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:nodeBytes error:&v43];
  v12 = v43;

  if (v11 && ([v11 hasObjectMapHead] ? (v13 = v12 == 0) : (v13 = 0), v13))
  {
    v17 = [TransparencyLogEntryVerifier alloc];
    appSthKeyStore = [(TransparencyPublicKeyBag *)self appSthKeyStore];
    v19 = [(TransparencyLogEntryVerifier *)v17 initWithTrustedKeyStore:appSthKeyStore];

    v20 = [TransparencyLogEntryVerifier alloc];
    tltKeyStore = [(TransparencyPublicKeyBag *)self tltKeyStore];
    v22 = [(TransparencyLogEntryVerifier *)v20 initWithTrustedKeyStore:tltKeyStore];

    objectMapHead = [v11 objectMapHead];
    v24 = [SignedMapHead signedTypeWithObject:objectMapHead];

    trustedKeyStore = [(TransparencyLogEntryVerifier *)v19 trustedKeyStore];
    signatureVerifier = [trustedKeyStore signatureVerifier];
    [v24 setVerifier:signatureVerifier];

    [v24 setOverrideBeginTimeFromLogEntry:proofCopy];
    if (v24)
    {
      v40 = v22;
      v42 = 0;
      v27 = [v24 verifyWithError:&v42];
      v28 = v42;
      if (v27 == 1)
      {
        [proofCopy setVerifier:v19];
        [entryCopy setVerifier:v40];
        v29 = [TransparencyMapInclusionProofVerifier alloc];
        application = [(TransparencyPublicKeyBag *)self application];
        v31 = [(TransparencyMapInclusionProofVerifier *)v29 initWithKeyBag:self application:application];

        v41 = v28;
        v39 = v31;
        v32 = [(TransparencyMapInclusionProofVerifier *)v31 verifyPerApplicationTreeEntry:proofCopy mapHead:v24 topLevelTreeEntry:entryCopy error:&v41];
        v12 = v41;

        if (v12)
        {
          if (qword_1001560A8 != -1)
          {
            sub_1000F2B24();
          }

          v22 = v40;
          v33 = qword_1001560B0;
          if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = v12;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "verifyPerApplicationTreeEntry failed for pamInPatEntry: %@", buf, 0xCu);
          }

          if (error)
          {
            v34 = v12;
            v15 = 0;
            *error = v12;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          if (v32)
          {
            [(TransparencyPublicKeyBag *)self setVerifiedSignedMapHead:v24];
            v15 = v24;
          }

          else
          {
            v15 = 0;
          }

          v22 = v40;
        }
      }

      else
      {
        if (qword_1001560A8 != -1)
        {
          sub_1000F2AFC();
        }

        v36 = qword_1001560B0;
        if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Couldn't verify SMH from pamHeadInPatProof: signature was invalid with error %@", buf, 0xCu);
        }

        v15 = 0;
        if (error && v28)
        {
          v37 = v28;
          v15 = 0;
          *error = v28;
        }

        v12 = v28;
        v22 = v40;
      }
    }

    else
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2B4C();
      }

      v35 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Couldn't verify SMH from pamHeadInPatProof: object init failure", buf, 2u);
      }

      v12 = 0;
      v15 = 0;
    }
  }

  else
  {
    if (qword_1001560A8 != -1)
    {
      sub_1000F2B74();
    }

    v14 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Couldn't parse SMH from pamHeadInPatProof: %@", buf, 0xCu);
    }

    v15 = 0;
    if (error && v12)
    {
      v16 = v12;
      v15 = 0;
      *error = v12;
    }
  }

  return v15;
}

- (BOOL)verifyConfigProof:(id)proof error:(id *)error
{
  proofCopy = proof;
  v7 = [TransparencyPatInclusionProofVerifier alloc];
  application = [(TransparencyPublicKeyBag *)self application];
  v9 = [(TransparencyPatInclusionProofVerifier *)v7 initWithKeyBag:self application:application];

  [proofCopy setVerifier:v9];
  v10 = [proofCopy verifyConfigProof:error];
  if (v10 == 1)
  {
    __verifiedLogHeads = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
    perApplicationTreeEntry = [proofCopy perApplicationTreeEntry];
    v13 = [perApplicationTreeEntry slh];
    v14 = [SignedLogHead signedTypeWithObject:v13];
    [__verifiedLogHeads addObject:v14];

    __verifiedLogHeads2 = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
    topLevelTreeEntry = [proofCopy topLevelTreeEntry];
    v17 = [topLevelTreeEntry slh];
    v18 = [SignedLogHead signedTypeWithObject:v17];
    [__verifiedLogHeads2 addObject:v18];
  }

  return v10 == 1;
}

- (id)copyVRFKeyFromConfigProof:(id)proof error:(id *)error
{
  v6 = [proof vrfPublicKeyWithError:error];
  v7 = v6;
  if (v6)
  {
    v8 = +[TransparencyVRFVerifier verifierOfType:key:](TransparencyVRFVerifier, "verifierOfType:key:", [v6 type], v6);
    v9 = v8;
    if (v8 && [v8 vrfType])
    {
      v10 = v7;
    }

    else
    {
      if (error)
      {
        v11 = kTransparencyErrorDecode;
        vrfKey = [v7 vrfKey];
        kt_hexString = [vrfKey kt_hexString];
        *error = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", v11, -143, @"VRF public key [%@] of type %d is invalid", kt_hexString, [v7 type]);
      }

      if (qword_1001560A8 != -1)
      {
        sub_1000F2B9C();
      }

      v14 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        vrfKey2 = [v7 vrfKey];
        kt_hexString2 = [vrfKey2 kt_hexString];
        *buf = 138412546;
        v25 = kt_hexString2;
        v26 = 1024;
        type = [v7 type];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "VRF public key [%@] of type %d is invalid", buf, 0x12u);
      }

      v10 = 0;
    }
  }

  else
  {
    application = [(TransparencyPublicKeyBag *)self application];
    v19 = [application hasPrefix:@"AT"];

    if ((v19 & 1) == 0)
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2BB0();
      }

      v20 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        application2 = [(TransparencyPublicKeyBag *)self application];
        *buf = 138543362;
        v25 = application2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get vrf public key from config proof for %{public}@", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)processPatConfigProof:(id)proof error:(id *)error
{
  proofCopy = proof;
  if (![(TransparencyPublicKeyBag *)self verifyConfigProof:proofCopy error:error])
  {
    goto LABEL_13;
  }

  if (qword_1001560A8 != -1)
  {
    sub_1000F2BC4();
  }

  v7 = qword_1001560B0;
  if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 134218240;
    *v30 = [(TransparencyPublicKeyBag *)self patLogBeginningMs];
    *&v30[8] = 2048;
    patLogBeginningMs = [proofCopy patLogBeginningMs];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing new PAT config. Current %llu, processing %llu", buf, 0x16u);
  }

  -[TransparencyPublicKeyBag setPatEarliestVersion:](self, "setPatEarliestVersion:", [proofCopy earliestCurrentTreeVersionWithError:error]);
  patEarliestVersion = [(TransparencyPublicKeyBag *)self patEarliestVersion];
  v10 = kTransparencyProtocolVersion;
  if (patEarliestVersion > kTransparencyProtocolVersion)
  {
    if (qword_1001560A8 != -1)
    {
      sub_1000F2C28();
    }

    v11 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      patEarliestVersion2 = [(TransparencyPublicKeyBag *)self patEarliestVersion];
      *buf = 67109376;
      *v30 = patEarliestVersion2;
      *&v30[4] = 1024;
      *&v30[6] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "PAT config proof earliest version later %d than our version %d", buf, 0xEu);
    }

    if (error)
    {
      [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-236 underlyingError:*error description:@"PAT config proof earliest version later %d than our version %d", [(TransparencyPublicKeyBag *)self patEarliestVersion], v10];
      *error = v14 = 0;
      goto LABEL_44;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_44;
  }

  v15 = [proofCopy patSigningKeyWithError:error];
  if (v15)
  {
    trustedAppSigningKeys = [(TransparencyPublicKeyBag *)self trustedAppSigningKeys];
    v17 = [(TransparencyPublicKeyBag *)self createTrustedSthKeyStoreFromProofSPKI:v15 signingKeysMap:trustedAppSigningKeys error:error];

    if (v17)
    {
      if (![(TransparencyPublicKeyBag *)self allowOldKeys])
      {
        [(TransparencyPublicKeyBag *)self setAppSthKeyStore:v17];
      }

      v28 = 0;
      v18 = [(TransparencyPublicKeyBag *)self copyVRFKeyFromConfigProof:proofCopy error:&v28];
      v27 = v28;
      if (v18)
      {
        [(TransparencyPublicKeyBag *)self setVrfKey:v18];
        -[TransparencyPublicKeyBag setVrfType:](self, "setVrfType:", [v18 type]);
      }

      data = [proofCopy data];
      [(TransparencyPublicKeyBag *)self setPatConfigProof:data];

      tltLogBeginningMs = [proofCopy tltLogBeginningMs];
      patLogBeginningMs2 = [proofCopy patLogBeginningMs];
      if (tltLogBeginningMs)
      {
        v22 = patLogBeginningMs2 == 0;
      }

      else
      {
        v22 = 1;
      }

      v14 = !v22;
      if (v22)
      {
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-169 description:@"PAT config proof STHs missing epoch begin times"];
        }

        if (qword_1001560A8 != -1)
        {
          sub_1000F2BD8();
        }

        v25 = qword_1001560B0;
        if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "PAT config proof STHs missing epoch begin times", buf, 2u);
        }
      }

      else
      {
        v23 = patLogBeginningMs2;
        [(TransparencyPublicKeyBag *)self setTltLogBeginningMs:tltLogBeginningMs];
        [(TransparencyPublicKeyBag *)self setPatLogBeginningMs:v23];
      }
    }

    else
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2C00();
      }

      v24 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "PAT config proof signing key did not match any trusted cert", buf, 2u);
      }

      if (error)
      {
        [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-221 underlyingError:*error description:@"PAT config proof signing key did not match any trusted cert"];
        *error = v14 = 0;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_44:
  return v14;
}

- (BOOL)processPatClosedProof:(id)proof error:(id *)error
{
  proofCopy = proof;
  v7 = [TransparencyPatInclusionProofVerifier alloc];
  application = [(TransparencyPublicKeyBag *)self application];
  v9 = [(TransparencyPatInclusionProofVerifier *)v7 initWithKeyBag:self application:application];

  [proofCopy setVerifier:v9];
  if ([proofCopy verifyWithError:error] != 1)
  {
    goto LABEL_11;
  }

  v10 = [proofCopy earliestNextTreeVersionWithError:error];
  v11 = v10;
  if (v10)
  {
    v12 = kTransparencyProtocolVersion;
    if (kTransparencyProtocolVersion < v10)
    {
      LOBYTE(v11) = 1;
      [(TransparencyPublicKeyBag *)self setUnsupported:1];
      data = [proofCopy data];
      [(TransparencyPublicKeyBag *)self setPatClosedProof:data];

      -[TransparencyPublicKeyBag setShutDown:](self, "setShutDown:", [proofCopy shutdownTimeStamp:error]);
      goto LABEL_12;
    }

    if (qword_1001560A8 != -1)
    {
      sub_1000F2C50();
    }

    v14 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v17 = v11;
      v18 = 1024;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "PAT Closed proof for %d but our version is supported %d", buf, 0xEu);
    }

    if (error)
    {
      [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-234 underlyingError:*error description:@"PAT Closed proof for %d but our version is supported %d", v11, v12];
      *error = LOBYTE(v11) = 0;
      goto LABEL_12;
    }

LABEL_11:
    LOBYTE(v11) = 0;
  }

LABEL_12:

  return v11;
}

@end