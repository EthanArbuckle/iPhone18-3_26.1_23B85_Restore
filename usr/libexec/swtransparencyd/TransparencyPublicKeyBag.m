@interface TransparencyPublicKeyBag
- (BOOL)processPatClosedProof:(id)a3 error:(id *)a4;
- (BOOL)processPatConfigProof:(id)a3 error:(id *)a4;
- (BOOL)processTltConfigProof:(id)a3 error:(id *)a4;
- (BOOL)verifyCertificates:(id)a3 intermediates:(id)a4 application:(id)a5 error:(id *)a6;
- (BOOL)verifyConfigProof:(id)a3 error:(id *)a4;
- (NSArray)verifiedLogHeads;
- (TransparencyPublicKeyBag)initWithDiskKeyStore:(id)a3 application:(id)a4 settings:(id)a5 allowOldKeys:(BOOL)a6 error:(id *)a7;
- (TransparencyPublicKeyBag)initWithKeyData:(id)a3 tltLeafs:(id)a4 intermediates:(id)a5 patConfigProof:(id)a6 tltConfigProof:(id)a7 patClosedProof:(id)a8 pamHeadInPatProof:(id)a9 application:(id)a10 allowOldKeys:(BOOL)a11 settings:(id)a12 error:(id *)a13;
- (TransparencyPublicKeyBag)initWithPublicKeysResponse:(id)a3 application:(id)a4 settings:(id)a5 allowOldKeys:(BOOL)a6 error:(id *)a7;
- (id)copyTltBag;
- (id)copyVRFKeyFromConfigProof:(id)a3 error:(id *)a4;
- (id)createTrustedSthKeyStoreFromProofSPKI:(id)a3 signingKeysMap:(id)a4 error:(id *)a5;
- (id)diskStoreDictionary;
- (id)processPamHeadInPatProof:(id)a3 tltEntry:(id)a4 error:(id *)a5;
@end

@implementation TransparencyPublicKeyBag

- (TransparencyPublicKeyBag)initWithPublicKeysResponse:(id)a3 application:(id)a4 settings:(id)a5 allowOldKeys:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v12 = a3;
  v81 = a4;
  v80 = a5;
  v13 = &qword_100156000;
  v82 = self;
  if ([v12 status] == 1)
  {
    v14 = 0;
  }

  else
  {
    v15 = a7;
    v16 = kTransparencyErrorServer;
    v17 = [v12 status];
    v18 = [(TransparencyPublicKeyBag *)self application];
    v19 = [v12 status];
    v20 = v16;
    v13 = &qword_100156000;
    v14 = [TransparencyError errorWithDomain:v20 code:v17 description:@"PublicKeysResponse for %@ indicates server failure %d", v18, v19];

    if (qword_1001560A8 != -1)
    {
      sub_1000F287C();
    }

    v21 = qword_1001560B0;
    a7 = v15;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      v22 = v21;
      v23 = [(TransparencyPublicKeyBag *)v82 application];
      *buf = 138412546;
      v85 = v23;
      v86 = 1024;
      LODWORD(v87) = [v12 status];
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "PublicKeysResponse for %@ indicates server failure %d", buf, 0x12u);

      v13 = &qword_100156000;
    }
  }

  if ([v12 hasPatConfigProof] && (objc_msgSend(v12, "patConfigProof"), v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
  {
    if ([v12 hasTltConfigProof] && (objc_msgSend(v12, "tltConfigProof"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
    {
      v26 = [v12 appLeafsArray];
      if (v26 && (v27 = v26, v28 = [v12 appLeafsArray_Count], v27, v28))
      {
        v29 = [v12 tltLeafsArray];
        if (v29)
        {
          v30 = v29;
          v31 = [v12 tltLeafsArray_Count];

          if (v31)
          {
            v32 = 0;
            v33 = 1;
            if (!v8)
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
        if (v8)
        {
LABEL_40:
          v38 = [v12 oldAppRootCertsArray];
          if (v38)
          {
            v39 = v38;
            v40 = [v12 oldAppRootCertsArray_Count];

            if (v40)
            {
              v41 = [v12 appLeafsArray];
              v42 = [v12 oldAppRootCertsArray];
              [v41 addObjectsFromArray:v42];
            }
          }

          v43 = [v12 oldTltRootCertsArray];
          if (v43)
          {
            v44 = v43;
            v45 = [v12 oldTltRootCertsArray_Count];

            if (v45)
            {
              v46 = [v12 tltLeafsArray];
              v47 = [v12 oldTltRootCertsArray];
              [v46 addObjectsFromArray:v47];
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
        if (v8)
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
      if (v8)
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
    if (v8)
    {
      goto LABEL_40;
    }
  }

LABEL_46:
  if ((v33 & 1) == 0)
  {
    v59 = kTransparencyErrorDecode;
    v60 = [(TransparencyPublicKeyBag *)v82 application];
    v61 = [TransparencyError errorWithDomain:v59 code:v32 description:@"PublicKeysResponse for %@ missing or invalid content: %ld", v60, v32];

    if (qword_1001560A8 != -1)
    {
      sub_1000F2930();
    }

    v62 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      v63 = v62;
      v64 = v82;
      v65 = [(TransparencyPublicKeyBag *)v82 application];
      *buf = 138543618;
      v85 = v65;
      v86 = 2048;
      v87 = v32;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "PublicKeysResponse for %{public}@ missing or invalid content: %ld", buf, 0x16u);

      v66 = 0;
      if (!a7)
      {
        goto LABEL_72;
      }

      goto LABEL_70;
    }

    goto LABEL_56;
  }

  if ([v12 status] != 1)
  {
    v61 = v14;
LABEL_56:
    v66 = 0;
    v64 = v82;
    if (!a7)
    {
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  v76 = a7;
  v48 = [v12 patConfigProof];
  v49 = [v12 metadata];
  v50 = kTransparencyResponseMetadataKeyServerHint;
  v51 = [v49 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];
  [v48 setMetadataValue:v51 key:v50];

  v52 = [v12 tltConfigProof];
  v53 = [v12 metadata];
  v54 = [v53 objectForKeyedSubscript:v50];
  [v52 setMetadataValue:v54 key:v50];

  v55 = [v12 appLeafsArray];
  v79 = [v12 tltLeafsArray];
  v78 = [v12 intermediatesArray];
  v77 = [v12 patConfigProof];
  v56 = [v12 tltConfigProof];
  v57 = [v12 hasPatClosedProof];
  if (v57)
  {
    v58 = [v12 patClosedProof];
  }

  else
  {
    v58 = 0;
  }

  v67 = [v12 hasPamHeadInPatProof];
  if (v67)
  {
    v68 = [v12 pamHeadInPatProof];
  }

  else
  {
    v68 = 0;
  }

  v83 = v14;
  LOBYTE(v75) = v8;
  v69 = v55;
  v70 = [(TransparencyPublicKeyBag *)v82 initWithKeyData:v55 tltLeafs:v79 intermediates:v78 patConfigProof:v77 tltConfigProof:v56 patClosedProof:v58 pamHeadInPatProof:v68 application:v81 allowOldKeys:v75 settings:v80 error:&v83];
  v61 = v83;

  v66 = v70;
  if (v67)
  {
  }

  if (v57)
  {
  }

  a7 = v76;
  if (v66)
  {
    v71 = [v12 treeRollInfoURL];
    [(TransparencyPublicKeyBag *)v66 setTreeRollInfoURL:v71];

    v72 = +[NSDate date];
    [(TransparencyPublicKeyBag *)v66 setReceiptTime:v72];

    v64 = v66;
    if (!v76)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v64 = 0;
    if (!v76)
    {
      goto LABEL_72;
    }
  }

LABEL_70:
  if (v61)
  {
    v73 = v61;
    *a7 = v61;
  }

LABEL_72:

  return v66;
}

- (TransparencyPublicKeyBag)initWithDiskKeyStore:(id)a3 application:(id)a4 settings:(id)a5 allowOldKeys:(BOOL)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v12 objectForKeyedSubscript:@"PatConfigProof"];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v12 objectForKeyedSubscript:@"TltConfigProof"];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v12 objectForKeyedSubscript:@"Leafs"];
  if (!v19)
  {
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v20 = v19;
  v55 = v13;
  v21 = [v12 objectForKeyedSubscript:@"TltLeafs"];
  if (!v21)
  {
LABEL_19:

    v13 = v55;
    goto LABEL_20;
  }

  v22 = v21;
  v54 = v14;
  v23 = [v12 objectForKeyedSubscript:@"Intermediates"];
  if (!v23)
  {

    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v12 objectForKeyedSubscript:@"ReceiptTime"];

  v14 = v54;
  v13 = v55;
  if (v25)
  {
    v26 = [v12 objectForKeyedSubscript:@"PatConfigProof"];
    v27 = [(TransparencyGPBMessage *)PatInclusionProof parseFromData:v26 error:a7];

    if (!v27)
    {
      if (a7)
      {
        *a7 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-35 underlyingError:*a7 description:?];
      }

      v14 = v54;
      if (qword_1001560A8 != -1)
      {
        sub_1000F2980();
      }

      v39 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        if (a7)
        {
          v40 = *a7;
        }

        else
        {
          v40 = 0;
        }

        *buf = 138412290;
        v58 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "PAT inclusion proof from disk failed to parse: %@", buf, 0xCu);
      }

      v37 = 0;
      goto LABEL_59;
    }

    v28 = [v12 objectForKeyedSubscript:@"TltConfigProof"];
    v29 = [(TransparencyGPBMessage *)LogEntry parseFromData:v28 error:a7];

    if (v29)
    {
      v53 = v29;
      v30 = [v12 objectForKeyedSubscript:@"PatClosedProof"];

      if (v30)
      {
        v31 = [v12 objectForKeyedSubscript:@"PatClosedProof"];
        v32 = [(TransparencyGPBMessage *)PatInclusionProof parseFromData:v31 error:a7];

        if (!v32)
        {
          if (a7)
          {
            *a7 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-35 underlyingError:*a7 description:?];
          }

          v29 = v53;
          v14 = v54;
          if (qword_1001560A8 != -1)
          {
            sub_1000F2958();
          }

          v33 = qword_1001560B0;
          if (!os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          if (a7)
          {
            v34 = *a7;
          }

          else
          {
            v34 = 0;
          }

          *buf = 138412290;
          v58 = v34;
          v50 = "PAT closed inclusion proof from disk failed to parse: %@";
LABEL_56:
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v50, buf, 0xCu);
LABEL_57:
          v37 = 0;
LABEL_58:

LABEL_59:
          goto LABEL_29;
        }
      }

      else
      {
        v32 = 0;
      }

      v52 = [v12 objectForKeyedSubscript:@"TreeRollInfoURL"];
      v42 = [v12 objectForKeyedSubscript:@"Leafs"];
      v43 = [v12 objectForKeyedSubscript:@"TltLeafs"];
      v44 = [v12 objectForKeyedSubscript:@"Intermediates"];
      v56 = 0;
      LOBYTE(v51) = a6;
      v45 = [(TransparencyPublicKeyBag *)self initWithKeyData:v42 tltLeafs:v43 intermediates:v44 patConfigProof:v27 tltConfigProof:v53 patClosedProof:v32 pamHeadInPatProof:0 application:v55 allowOldKeys:v51 settings:v54 error:&v56];
      v46 = v56;
      v47 = v45;

      v48 = [v12 objectForKeyedSubscript:@"ReceiptTime"];
      [(TransparencyPublicKeyBag *)v47 setReceiptTime:v48];

      [(TransparencyPublicKeyBag *)v47 setTreeRollInfoURL:v52];
      if (a7 && v46)
      {
        v49 = v46;
        *a7 = v46;
      }

      self = v47;

      v37 = self;
      v14 = v54;
      v13 = v55;
      v29 = v53;
      goto LABEL_58;
    }

    if (a7)
    {
      *a7 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-218 underlyingError:*a7 description:?];
    }

    v14 = v54;
    if (qword_1001560A8 != -1)
    {
      sub_1000F296C();
    }

    v33 = qword_1001560B0;
    if (!os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    if (a7)
    {
      v41 = *a7;
    }

    else
    {
      v41 = 0;
    }

    *buf = 138412290;
    v58 = v41;
    v50 = "TLT inclusion proof from disk failed to parse: %@";
    goto LABEL_56;
  }

LABEL_22:
  if (a7)
  {
    *a7 = [TransparencyError errorWithDomain:kTransparencyErrorFile code:-54 description:@"missing fields from the disk store for %@", self->_application];
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
    v58 = application;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "missing fields from the disk store for %@", buf, 0xCu);
  }

  v37 = 0;
LABEL_29:

  return v37;
}

- (TransparencyPublicKeyBag)initWithKeyData:(id)a3 tltLeafs:(id)a4 intermediates:(id)a5 patConfigProof:(id)a6 tltConfigProof:(id)a7 patClosedProof:(id)a8 pamHeadInPatProof:(id)a9 application:(id)a10 allowOldKeys:(BOOL)a11 settings:(id)a12 error:(id *)a13
{
  v19 = a3;
  v66 = a4;
  v74 = a4;
  v20 = a5;
  v75 = a6;
  v21 = a7;
  v73 = a8;
  v76 = a9;
  v22 = a10;
  v23 = a12;
  v77.receiver = self;
  v77.super_class = TransparencyPublicKeyBag;
  v24 = [(TransparencyPublicKeyBag *)&v77 init];
  if (v24)
  {
    v72 = v21;
    v25 = +[NSMutableArray array];
    [(TransparencyPublicKeyBag *)v24 set__verifiedLogHeads:v25];

    [(TransparencyPublicKeyBag *)v24 setApplication:v22];
    [(TransparencyPublicKeyBag *)v24 setAllowOldKeys:a11];
    [(TransparencyPublicKeyBag *)v24 setSettings:v23];
    v26 = [(TransparencyPublicKeyBag *)v24 settings];

    if (!v26)
    {
      v27 = objc_alloc_init(TransparencySettings);
      [(TransparencyPublicKeyBag *)v24 setSettings:v27];
    }

    v28 = v19;
    if ([(TransparencyPublicKeyBag *)v24 verifyCertificates:v19 intermediates:v20 application:v22 error:a13])
    {
      v29 = [TransparencyCertificateHelper copyTrustedKeysFromDataArray:v19 error:a13];
      trustedAppSigningKeys = v24->_trustedAppSigningKeys;
      v24->_trustedAppSigningKeys = v29;

      v31 = v74;
      if (v24->_trustedAppSigningKeys)
      {
        objc_storeStrong(&v24->_trustedAppLeafs, a3);
        v32 = [TransparencyTrustedKeyStore alloc];
        v33 = [(TransparencyPublicKeyBag *)v24 trustedAppSigningKeys];
        v34 = [(TransparencyTrustedKeyStore *)v32 initWithTrustedKeys:v33];
        [(TransparencyPublicKeyBag *)v24 setAppSmtKeyStore:v34];

        v35 = [(TransparencyPublicKeyBag *)v24 appSmtKeyStore];
        [(TransparencyPublicKeyBag *)v24 setAppSthKeyStore:v35];

        if ([(TransparencyPublicKeyBag *)v24 verifyCertificates:v74 intermediates:v20 application:kKTApplicationIdentifierTLT error:a13])
        {
          v36 = [TransparencyCertificateHelper copyTrustedKeysFromDataArray:v74 error:a13];
          trustedTltSigningKeys = v24->_trustedTltSigningKeys;
          v24->_trustedTltSigningKeys = v36;

          if (v24->_trustedTltSigningKeys)
          {
            objc_storeStrong(&v24->_trustedTltLeafs, v66);
            v38 = [TransparencyTrustedKeyStore alloc];
            v39 = [(TransparencyPublicKeyBag *)v24 trustedTltSigningKeys];
            v40 = [(TransparencyTrustedKeyStore *)v38 initWithTrustedKeys:v39];
            tltKeyStore = v24->_tltKeyStore;
            v24->_tltKeyStore = v40;

            v42 = v75;
            if ([v20 count])
            {
              v43 = v20;
            }

            else
            {
              v43 = &__NSArray0__struct;
            }

            trustedIntermediates = v24->_trustedIntermediates;
            v24->_trustedIntermediates = v43;

            v45 = v73;
            if (![(TransparencyPublicKeyBag *)v24 processTltConfigProof:v21 error:a13])
            {
              goto LABEL_38;
            }

            if (!v76)
            {
LABEL_30:
              if ([(TransparencyPublicKeyBag *)v24 processPatConfigProof:v42 error:a13]&& (!v45 || [(TransparencyPublicKeyBag *)v24 processPatClosedProof:v45 error:a13]))
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

            objb = [v75 perApplicationTreeEntry];
            v49 = [objb slh];
            v50 = [v49 object];
            v51 = [v76 slh];
            v52 = [v51 object];
            v67 = [v50 isEqualToData:v52];

            if ((v67 & 1) == 0)
            {
              if (qword_1001560A8 != -1)
              {
                sub_1000F29D0();
              }

              v31 = v74;
              v42 = v75;
              v21 = v72;
              v45 = v73;
              v63 = qword_1001560B0;
              if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "pamHeadInPatProof was present but didn't match patConfigProof SLH", buf, 2u);
              }

              goto LABEL_38;
            }

            v53 = [v75 topLevelTreeEntry];
            v54 = [(TransparencyPublicKeyBag *)v24 processPamHeadInPatProof:v76 tltEntry:v53 error:a13];

            if (v54)
            {
              v55 = [v54 parsedMapHead];
              v56 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v55 application]);
              obja = [TransparencyApplication applicationIdentifierForValue:v56];

              if (qword_1001560A8 != -1)
              {
                sub_1000F29F8();
              }

              v21 = v72;
              v57 = qword_1001560B0;
              if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_INFO))
              {
                v58 = v57;
                v68 = [v54 parsedMapHead];
                v59 = [v68 revision];
                v60 = [v54 parsedMapHead];
                v61 = [v60 populating];
                *buf = 138412802;
                v79 = obja;
                v80 = 2048;
                v81 = v59;
                v21 = v72;
                v82 = 1024;
                v83 = v61;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "pamHeadInPatProof SMH for %@ with revision %llu, populating = %d", buf, 0x1Cu);
              }

              v62 = [v54 parsedMapHead];
              -[TransparencyPublicKeyBag setMapStillPopulating:](v24, "setMapStillPopulating:", [v62 populating]);

              v31 = v74;
              v42 = v75;
              v45 = v73;
              goto LABEL_30;
            }

            v42 = v75;
            if (qword_1001560A8 != -1)
            {
              sub_1000F2A20();
            }

            v31 = v74;
            v21 = v72;
            v64 = qword_1001560B0;
            if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
            {
              if (a13)
              {
                v65 = *a13;
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
      v31 = v74;
    }

    v42 = v75;
    v45 = v73;
    goto LABEL_15;
  }

  v44 = 0;
  v28 = v19;
  v31 = v74;
  v42 = v75;
LABEL_11:
  v45 = v73;
LABEL_15:

  return v44;
}

- (id)createTrustedSthKeyStoreFromProofSPKI:(id)a3 signingKeysMap:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 kt_sha256];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = [TransparencyTrustedKeyStore alloc];
    v12 = [v7 kt_sha256];
    v13 = [NSDictionary dictionaryWithObject:v10 forKey:v12];
    v14 = [(TransparencyTrustedKeyStore *)v11 initWithTrustedKeys:v13];
  }

  else
  {
    if (a5)
    {
      *a5 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-219 description:@"Signing key in proof does not match any signing key in certs"];
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
  v4 = [(TransparencyPublicKeyBag *)self trustedAppLeafs];
  [v3 setObject:v4 forKeyedSubscript:@"Leafs"];

  v5 = [(TransparencyPublicKeyBag *)self trustedTltLeafs];
  [v3 setObject:v5 forKeyedSubscript:@"TltLeafs"];

  v6 = [(TransparencyPublicKeyBag *)self trustedIntermediates];
  [v3 setObject:v6 forKeyedSubscript:@"Intermediates"];

  v7 = [(TransparencyPublicKeyBag *)self patConfigProof];
  [v3 setObject:v7 forKeyedSubscript:@"PatConfigProof"];

  v8 = [(TransparencyPublicKeyBag *)self tltConfigProof];
  [v3 setObject:v8 forKeyedSubscript:@"TltConfigProof"];

  v9 = [(TransparencyPublicKeyBag *)self receiptTime];
  [v3 setObject:v9 forKeyedSubscript:@"ReceiptTime"];

  v10 = [(TransparencyPublicKeyBag *)self patClosedProof];
  [v3 setObject:v10 forKeyedSubscript:@"PatClosedProof"];

  v11 = [(TransparencyPublicKeyBag *)self treeRollInfoURL];
  [v3 setObject:v11 forKeyedSubscript:@"TreeRollInfoURL"];

  return v3;
}

- (id)copyTltBag
{
  v3 = objc_alloc_init(TransparencyPublicKeyBag);
  [(TransparencyPublicKeyBag *)v3 setApplication:kKTApplicationIdentifierTLT];
  v4 = [(TransparencyPublicKeyBag *)self tltKeyStore];
  [(TransparencyPublicKeyBag *)v3 setAppSthKeyStore:v4];

  v5 = [(TransparencyPublicKeyBag *)self trustedTltSigningKeys];
  [(TransparencyPublicKeyBag *)v3 setTrustedAppSigningKeys:v5];

  [(TransparencyPublicKeyBag *)v3 setPatLogBeginningMs:[(TransparencyPublicKeyBag *)self tltLogBeginningMs]];
  v6 = [(TransparencyPublicKeyBag *)self tltKeyStore];
  [(TransparencyPublicKeyBag *)v3 setTltKeyStore:v6];

  v7 = [(TransparencyPublicKeyBag *)self trustedTltSigningKeys];
  [(TransparencyPublicKeyBag *)v3 setTrustedTltSigningKeys:v7];

  [(TransparencyPublicKeyBag *)v3 setTltLogBeginningMs:[(TransparencyPublicKeyBag *)self tltLogBeginningMs]];
  v8 = [(TransparencyPublicKeyBag *)self vrfKey];
  [(TransparencyPublicKeyBag *)v3 setVrfKey:v8];

  v9 = [(TransparencyPublicKeyBag *)self receiptTime];
  [(TransparencyPublicKeyBag *)v3 setReceiptTime:v9];

  [(TransparencyPublicKeyBag *)v3 setTltEarliestVersion:[(TransparencyPublicKeyBag *)self tltEarliestVersion]];
  [(TransparencyPublicKeyBag *)v3 setShutDown:[(TransparencyPublicKeyBag *)self shutDown]];
  return v3;
}

- (NSArray)verifiedLogHeads
{
  v2 = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
  v3 = [NSArray arrayWithArray:v2];

  return v3;
}

- (BOOL)verifyCertificates:(id)a3 intermediates:(id)a4 application:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(TransparencyPublicKeyBag *)self settings];
  if ([v13 allowsInternalSecurityPolicies])
  {
    v14 = [(TransparencyPublicKeyBag *)self settings];
    v15 = [v14 getBool:kTransparencyFlagDisableVerifyKeyStoreCertificates];

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
    v20 = [TransparencyCertificateHelper verifyCertificates:v10 intermediates:v11 policy:AppleKeyTransparency error:a6];
    v17 = v20;
    if (a6 && (v20 & 1) == 0)
    {
      *a6 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-29 underlyingError:v12 description:*a6];
      if (qword_1001560A8 != -1)
      {
        sub_1000F2A5C();
      }

      v21 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        v22 = *a6;
        *buf = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "certificates for %@ failed trust evaluation: %@", buf, 0x16u);
      }
    }

    CFRelease(v19);
  }

  else
  {
    if (a6)
    {
      *a6 = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:-53 description:@"failed to create KT policy for %@", v12];
    }

    if (qword_1001560A8 != -1)
    {
      sub_1000F2A70();
    }

    v23 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to create KT policy for %@", buf, 0xCu);
    }

    v17 = 0;
  }

LABEL_24:

  return v17;
}

- (BOOL)processTltConfigProof:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [TransparencyLogEntryVerifier alloc];
  v8 = [(TransparencyPublicKeyBag *)self tltKeyStore];
  v9 = [(TransparencyLogEntryVerifier *)v7 initWithTrustedKeyStore:v8];

  [v6 setVerifier:v9];
  if (![v6 verifyWithError:a4])
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-224 underlyingError:*a4 description:@"TLT config proof failed to verify"];
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

    if (a4)
    {
      v18 = *a4;
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

  v10 = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
  v11 = [v6 slh];
  v12 = [SignedLogHead signedTypeWithObject:v11];
  [v10 addObject:v12];

  if (![v6 nodePosition])
  {
    v19 = [v6 nodeBytes];
    v20 = [(TransparencyGPBMessage *)TopLevelTreeConfigNode parseFromData:v19 error:a4];

    if (!v20)
    {
      if (qword_1001560A8 != -1)
      {
        sub_1000F2AD4();
      }

      v28 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        if (a4)
        {
          v29 = *a4;
        }

        else
        {
          v29 = 0;
        }

        *buf = 138412290;
        v37[0] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "TLT config node failed to parse: %@", buf, 0xCu);
      }

      if (a4)
      {
        [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-141 underlyingError:*a4 description:@"TLT config node failed to parse"];
        *a4 = v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_53;
    }

    v21 = [v20 publicKeyBytes];
    v22 = [(TransparencyPublicKeyBag *)self trustedTltSigningKeys];
    v23 = [(TransparencyPublicKeyBag *)self createTrustedSthKeyStoreFromProofSPKI:v21 signingKeysMap:v22 error:a4];

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

      v24 = [(TransparencyPublicKeyBag *)self tltEarliestVersion];
      v25 = kTransparencyProtocolVersion;
      if (v24 <= kTransparencyProtocolVersion)
      {
        v32 = [v6 data];
        [(TransparencyPublicKeyBag *)self setTltConfigProof:v32];

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

      if (a4)
      {
        [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-235 underlyingError:*a4 description:@"TLT config proof earliest version later %d than our version %d", [(TransparencyPublicKeyBag *)self tltEarliestVersion], v25];
LABEL_44:
        *a4 = v30 = 0;
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

      if (a4)
      {
        [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-222 underlyingError:*a4 description:@"TLT config proof signing key did not match any trusted cert", v34, v35];
        goto LABEL_44;
      }
    }

    v30 = 0;
    goto LABEL_47;
  }

  if (a4)
  {
    *a4 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-220 description:@"TLT config proof at wrong position"];
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

- (id)processPamHeadInPatProof:(id)a3 tltEntry:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 nodeBytes];
  v43 = 0;
  v11 = [(TransparencyGPBMessage *)PerApplicationTreeNode parseFromData:v10 error:&v43];
  v12 = v43;

  if (v11 && ([v11 hasObjectMapHead] ? (v13 = v12 == 0) : (v13 = 0), v13))
  {
    v17 = [TransparencyLogEntryVerifier alloc];
    v18 = [(TransparencyPublicKeyBag *)self appSthKeyStore];
    v19 = [(TransparencyLogEntryVerifier *)v17 initWithTrustedKeyStore:v18];

    v20 = [TransparencyLogEntryVerifier alloc];
    v21 = [(TransparencyPublicKeyBag *)self tltKeyStore];
    v22 = [(TransparencyLogEntryVerifier *)v20 initWithTrustedKeyStore:v21];

    v23 = [v11 objectMapHead];
    v24 = [SignedMapHead signedTypeWithObject:v23];

    v25 = [(TransparencyLogEntryVerifier *)v19 trustedKeyStore];
    v26 = [v25 signatureVerifier];
    [v24 setVerifier:v26];

    [v24 setOverrideBeginTimeFromLogEntry:v8];
    if (v24)
    {
      v40 = v22;
      v42 = 0;
      v27 = [v24 verifyWithError:&v42];
      v28 = v42;
      if (v27 == 1)
      {
        [v8 setVerifier:v19];
        [v9 setVerifier:v40];
        v29 = [TransparencyMapInclusionProofVerifier alloc];
        v30 = [(TransparencyPublicKeyBag *)self application];
        v31 = [(TransparencyMapInclusionProofVerifier *)v29 initWithKeyBag:self application:v30];

        v41 = v28;
        v39 = v31;
        v32 = [(TransparencyMapInclusionProofVerifier *)v31 verifyPerApplicationTreeEntry:v8 mapHead:v24 topLevelTreeEntry:v9 error:&v41];
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

          if (a5)
          {
            v34 = v12;
            v15 = 0;
            *a5 = v12;
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
        if (a5 && v28)
        {
          v37 = v28;
          v15 = 0;
          *a5 = v28;
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
    if (a5 && v12)
    {
      v16 = v12;
      v15 = 0;
      *a5 = v12;
    }
  }

  return v15;
}

- (BOOL)verifyConfigProof:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [TransparencyPatInclusionProofVerifier alloc];
  v8 = [(TransparencyPublicKeyBag *)self application];
  v9 = [(TransparencyPatInclusionProofVerifier *)v7 initWithKeyBag:self application:v8];

  [v6 setVerifier:v9];
  v10 = [v6 verifyConfigProof:a4];
  if (v10 == 1)
  {
    v11 = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
    v12 = [v6 perApplicationTreeEntry];
    v13 = [v12 slh];
    v14 = [SignedLogHead signedTypeWithObject:v13];
    [v11 addObject:v14];

    v15 = [(TransparencyPublicKeyBag *)self __verifiedLogHeads];
    v16 = [v6 topLevelTreeEntry];
    v17 = [v16 slh];
    v18 = [SignedLogHead signedTypeWithObject:v17];
    [v15 addObject:v18];
  }

  return v10 == 1;
}

- (id)copyVRFKeyFromConfigProof:(id)a3 error:(id *)a4
{
  v6 = [a3 vrfPublicKeyWithError:a4];
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
      if (a4)
      {
        v11 = kTransparencyErrorDecode;
        v12 = [v7 vrfKey];
        v13 = [v12 kt_hexString];
        *a4 = +[TransparencyError errorWithDomain:code:description:](TransparencyError, "errorWithDomain:code:description:", v11, -143, @"VRF public key [%@] of type %d is invalid", v13, [v7 type]);
      }

      if (qword_1001560A8 != -1)
      {
        sub_1000F2B9C();
      }

      v14 = qword_1001560B0;
      if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v7 vrfKey];
        v17 = [v16 kt_hexString];
        *buf = 138412546;
        v25 = v17;
        v26 = 1024;
        v27 = [v7 type];
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "VRF public key [%@] of type %d is invalid", buf, 0x12u);
      }

      v10 = 0;
    }
  }

  else
  {
    v18 = [(TransparencyPublicKeyBag *)self application];
    v19 = [v18 hasPrefix:@"AT"];

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
        v22 = [(TransparencyPublicKeyBag *)self application];
        *buf = 138543362;
        v25 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get vrf public key from config proof for %{public}@", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)processPatConfigProof:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(TransparencyPublicKeyBag *)self verifyConfigProof:v6 error:a4])
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
    v31 = [v6 patLogBeginningMs];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing new PAT config. Current %llu, processing %llu", buf, 0x16u);
  }

  -[TransparencyPublicKeyBag setPatEarliestVersion:](self, "setPatEarliestVersion:", [v6 earliestCurrentTreeVersionWithError:a4]);
  v9 = [(TransparencyPublicKeyBag *)self patEarliestVersion];
  v10 = kTransparencyProtocolVersion;
  if (v9 > kTransparencyProtocolVersion)
  {
    if (qword_1001560A8 != -1)
    {
      sub_1000F2C28();
    }

    v11 = qword_1001560B0;
    if (os_log_type_enabled(qword_1001560B0, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [(TransparencyPublicKeyBag *)self patEarliestVersion];
      *buf = 67109376;
      *v30 = v13;
      *&v30[4] = 1024;
      *&v30[6] = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "PAT config proof earliest version later %d than our version %d", buf, 0xEu);
    }

    if (a4)
    {
      [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-236 underlyingError:*a4 description:@"PAT config proof earliest version later %d than our version %d", [(TransparencyPublicKeyBag *)self patEarliestVersion], v10];
      *a4 = v14 = 0;
      goto LABEL_44;
    }

LABEL_13:
    v14 = 0;
    goto LABEL_44;
  }

  v15 = [v6 patSigningKeyWithError:a4];
  if (v15)
  {
    v16 = [(TransparencyPublicKeyBag *)self trustedAppSigningKeys];
    v17 = [(TransparencyPublicKeyBag *)self createTrustedSthKeyStoreFromProofSPKI:v15 signingKeysMap:v16 error:a4];

    if (v17)
    {
      if (![(TransparencyPublicKeyBag *)self allowOldKeys])
      {
        [(TransparencyPublicKeyBag *)self setAppSthKeyStore:v17];
      }

      v28 = 0;
      v18 = [(TransparencyPublicKeyBag *)self copyVRFKeyFromConfigProof:v6 error:&v28];
      v27 = v28;
      if (v18)
      {
        [(TransparencyPublicKeyBag *)self setVrfKey:v18];
        -[TransparencyPublicKeyBag setVrfType:](self, "setVrfType:", [v18 type]);
      }

      v19 = [v6 data];
      [(TransparencyPublicKeyBag *)self setPatConfigProof:v19];

      v20 = [v6 tltLogBeginningMs];
      v21 = [v6 patLogBeginningMs];
      if (v20)
      {
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }

      v14 = !v22;
      if (v22)
      {
        if (a4)
        {
          *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-169 description:@"PAT config proof STHs missing epoch begin times"];
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
        v23 = v21;
        [(TransparencyPublicKeyBag *)self setTltLogBeginningMs:v20];
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

      if (a4)
      {
        [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-221 underlyingError:*a4 description:@"PAT config proof signing key did not match any trusted cert"];
        *a4 = v14 = 0;
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

- (BOOL)processPatClosedProof:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [TransparencyPatInclusionProofVerifier alloc];
  v8 = [(TransparencyPublicKeyBag *)self application];
  v9 = [(TransparencyPatInclusionProofVerifier *)v7 initWithKeyBag:self application:v8];

  [v6 setVerifier:v9];
  if ([v6 verifyWithError:a4] != 1)
  {
    goto LABEL_11;
  }

  v10 = [v6 earliestNextTreeVersionWithError:a4];
  v11 = v10;
  if (v10)
  {
    v12 = kTransparencyProtocolVersion;
    if (kTransparencyProtocolVersion < v10)
    {
      LOBYTE(v11) = 1;
      [(TransparencyPublicKeyBag *)self setUnsupported:1];
      v13 = [v6 data];
      [(TransparencyPublicKeyBag *)self setPatClosedProof:v13];

      -[TransparencyPublicKeyBag setShutDown:](self, "setShutDown:", [v6 shutdownTimeStamp:a4]);
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

    if (a4)
    {
      [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-234 underlyingError:*a4 description:@"PAT Closed proof for %d but our version is supported %d", v11, v12];
      *a4 = LOBYTE(v11) = 0;
      goto LABEL_12;
    }

LABEL_11:
    LOBYTE(v11) = 0;
  }

LABEL_12:

  return v11;
}

@end