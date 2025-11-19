@interface MSDDemoManifestCheck
+ (MSDDemoManifestCheck)sharedInstance;
- (BOOL)checkFileForEntitlements:(id)a3 forCorrespondingManifestEntry:(id)a4;
- (BOOL)isManualSigning:(id)a3;
- (BOOL)isValidDataContainerFile:(id)a3;
- (BOOL)runAppLayoutSecurityCheck:(id)a3;
- (BOOL)runFileSecurityChecksForSection:(id)a3 dataType:(id)a4 options:(id)a5;
- (BOOL)runSecurityCheck:(id)a3;
- (BOOL)runSecurityChecksForSection:(id)a3 dataType:(id)a4 componentName:(id)a5 options:(id)a6;
- (BOOL)runSettingsSecurityCheckForSection:(id)a3 component:(id)a4;
- (BOOL)secureManifestCheckForSegmentedManifest:(id)a3 options:(id)a4;
- (BOOL)validateISTSignedApp:(id)a3 manifest:(id)a4;
- (BOOL)verifySignature:(id)a3 forData:(id)a4 withKey:(__SecKey *)a5;
- (MSDDemoManifestCheck)init;
- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)a3 andCheckType:(id)a4;
- (__SecKey)createPublicKey:(id)a3 usingPolicy:(__SecPolicy *)a4 anchors:(id)a5;
- (__SecKey)createPublicKeyAppleISTSigning:(id)a3;
- (__SecKey)createPublicKeyForDevelopmentSigning:(id)a3;
- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)a3;
- (__SecKey)createPublicKeyForStrongSigning:(id)a3;
- (id)getAllowedISTSignedComponents:(id)a3;
- (id)getAllowedISTSignedComponentsFromManifest:(id)a3;
- (id)getAllowedSymLinks;
- (id)getBackupItemName:(id)a3;
- (id)getBackupSectionName;
- (id)getComponentData:(id)a3;
- (id)getInstallationOrder;
- (id)getManifestData:(id)a3;
- (id)getSecurityCheckSectionNames;
- (id)getappIconLayoutBackupName;
- (id)verifyFactoryManifestSignature:(id)a3 forDataSectionKeys:(id)a4;
- (id)verifyManifestSignature:(id)a3 forDataSectionKeys:(id)a4 withOptions:(id)a5;
- (void)registerEntitlementNotificationHandler;
- (void)removeBlocklistedItemFromSection:(id)a3 withName:(id)a4;
@end

@implementation MSDDemoManifestCheck

+ (MSDDemoManifestCheck)sharedInstance
{
  if (qword_10005BEB8 != -1)
  {
    sub_100029E10();
  }

  v3 = qword_10005BEB0;

  return v3;
}

- (MSDDemoManifestCheck)init
{
  v12.receiver = self;
  v12.super_class = MSDDemoManifestCheck;
  v2 = [(MSDDemoManifestCheck *)&v12 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = [(MSDDemoManifestCheck *)v2 getAllowedSymLinks];
  [(MSDDemoManifestCheck *)v3 setAllowedSymLinks:v4];

  v5 = [(MSDDemoManifestCheck *)v3 getSettingsComponentNames];
  [(MSDDemoManifestCheck *)v3 setSettingsComponentNames:v5];

  v6 = objc_alloc_init(WhitelistChecker);
  [(MSDDemoManifestCheck *)v3 setWhitelistChecker:v6];

  v7 = [(MSDDemoManifestCheck *)v3 whitelistChecker];
  v8 = [v7 load];

  if ((v8 & 1) == 0)
  {
    sub_100029E24();
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = objc_opt_new();
  [(MSDDemoManifestCheck *)v3 setBlocklistedItems:v9];

  v10 = v3;
LABEL_6:

  return v10;
}

- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)a3 andCheckType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MSDDemoManifestCheck;
  v8 = [(MSDDemoManifestCheck *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(MSDDemoManifestCheck *)v8 getAllowedSymLinks];
    [(MSDDemoManifestCheck *)v9 setAllowedSymLinks:v10];

    v11 = [(MSDDemoManifestCheck *)v9 getSettingsComponentNames];
    [(MSDDemoManifestCheck *)v9 setSettingsComponentNames:v11];

    [(MSDDemoManifestCheck *)v9 setWhitelistChecker:v6];
    [(MSDDemoManifestCheck *)v9 setCheckType:v7];
  }

  return v9;
}

- (id)verifyFactoryManifestSignature:(id)a3 forDataSectionKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = MGCopyAnswer();
  v10 = [v6 objectForKey:@"Info"];
  v11 = 0;
  if (!v10)
  {
    v11 = [0 objectForKey:@"MinimumOSVersion"];
  }

  if (([v9 isEqualToString:v11] & 1) == 0)
  {
    [v8 setObject:&__kCFBooleanTrue forKey:@"ExcludeBlocklistItem"];
  }

  v12 = [(MSDDemoManifestCheck *)self verifyManifestSignature:v6 forDataSectionKeys:v7 withOptions:v8];

  return v12;
}

- (id)verifyManifestSignature:(id)a3 forDataSectionKeys:(id)a4 withOptions:(id)a5
{
  v90 = a3;
  v85 = a4;
  v8 = a5;
  v92 = objc_alloc_init(NSMutableDictionary);
  error = 0;
  v9 = sub_100021268();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Verifying a separate component manifest.", buf, 0xCu);
  }

  v84 = [v8 objectForKey:@"RigorousTestingOverride"];
  v10 = [v8 objectForKey:@"ExcludeBlocklistItem"];
  v11 = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!v11)
  {
    v12 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:v90];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v12];
  }

  v13 = [NSMutableSet alloc];
  v14 = [v90 allKeys];
  v15 = [v13 initWithArray:v14];

  v16 = MGCopyAnswer();
  cf = v16;
  if (v16)
  {
    v88 = CFBooleanGetValue(v16) == 0;
  }

  else
  {
    v88 = 0;
  }

  v17 = [v90 objectForKey:@"Certificates"];
  v81 = v17;
  if (!v17)
  {
    sub_10002A23C();
    v34 = 0;
    v21 = 0;
    v95 = 0;
    v45 = 0;
    v40 = 0;
LABEL_97:
    if (cf)
    {
      CFRelease(cf);
    }

    v71 = 0;
    goto LABEL_107;
  }

  v96 = self;
  v79 = v15;
  v82 = v8;
  v83 = v10;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v110 objects:v127 count:16];
  if (!v19)
  {
    v21 = 0;
    v22 = 0;
    v97 = 0;
    goto LABEL_31;
  }

  v20 = v19;
  v21 = 0;
  v22 = 0;
  v97 = 0;
  v93 = *v111;
  while (2)
  {
    v23 = 0;
    v24 = v21;
    v25 = v22;
    do
    {
      if (*v111 != v93)
      {
        objc_enumerationMutation(v18);
      }

      v26 = *(*(&v110 + 1) + 8 * v23);
      v27 = [v18 objectForKey:v26];
      v22 = [v27 objectForKey:@"TypeOfSignature"];

      v21 = [v27 objectForKey:@"Certificate"];

      if (!v22)
      {
        v58 = sub_100021268();
        v95 = 0;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_10002A000();
        }

        goto LABEL_92;
      }

      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v58 = sub_100021268();
        v95 = v22;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_100029F80();
        }

        goto LABEL_92;
      }

      if (![v21 count])
      {
        v58 = sub_100021268();
        v95 = v22;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_100029F00();
        }

        goto LABEL_92;
      }

      if ([v22 isEqualToString:@"UAT"])
      {
        v28 = [(MSDDemoManifestCheck *)v96 createPublicKeyForDevelopmentSigning:v21];
        v29 = @"Skip";
        if (!v28)
        {
          goto LABEL_90;
        }

        goto LABEL_26;
      }

      v30 = [(MSDDemoManifestCheck *)v96 createPublicKeyForStrongSigning:v21];
      if (!v30)
      {
        v28 = [(MSDDemoManifestCheck *)v96 createPublicKeyAppleISTSigning:v21];
        v29 = @"AppleISTCertCheck";
        if (v28)
        {
LABEL_26:
          v31 = v21;
          goto LABEL_27;
        }

LABEL_90:
        v97 = v29;
        v58 = sub_100021268();
        v95 = v22;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_100029E80();
        }

LABEL_92:
        v15 = v79;

        v34 = 0;
        v45 = 0;
        v40 = v97;
        v8 = v82;
        goto LABEL_97;
      }

      v28 = v30;
      v31 = v21;
      v32 = [(MSDDemoManifestCheck *)v96 isManualSigning:v21];
      v29 = @"Skip";
      if (!v32)
      {
        v29 = @"Default";
      }

LABEL_27:
      v125[0] = @"publicKey";
      v125[1] = @"TypeOfSignature";
      v126[0] = v28;
      v126[1] = v22;
      v125[2] = @"RigorousCheckType";
      v97 = v29;
      v126[2] = v29;
      v33 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:3];
      [v92 setObject:v33 forKeyedSubscript:v26];

      v23 = v23 + 1;
      v24 = v31;
      v25 = v22;
    }

    while (v20 != v23);
    v20 = [v18 countByEnumeratingWithState:&v110 objects:v127 count:16];
    v21 = v31;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v95 = v22;

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v85;
  v73 = [obj countByEnumeratingWithState:&v106 objects:v124 count:16];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (v73)
  {
    v74 = *v107;
    v75 = v21;
    do
    {
      v37 = 0;
      do
      {
        if (*v107 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v94 = v34;
        v77 = v37;
        v38 = *(*(&v106 + 1) + 8 * v37);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v91 = v38;
        v86 = [v90 objectForKey:?];
        v89 = [v86 countByEnumeratingWithState:&v102 objects:v123 count:16];
        if (!v89)
        {
          goto LABEL_50;
        }

        v87 = *v103;
        while (2)
        {
          for (i = 0; i != v89; i = i + 1)
          {
            v40 = v97;
            v41 = v35;
            v42 = v95;
            if (*v103 != v87)
            {
              objc_enumerationMutation(v86);
            }

            v43 = *(*(&v102 + 1) + 8 * i);
            v44 = [v90 objectForKey:v91];
            v45 = [v44 objectForKey:v43];

            v46 = [v45 objectForKey:@"Certificate"];
            v47 = [v92 objectForKey:v46];
            v48 = v47;
            if (!v47)
            {
              v69 = sub_100021268();
              v34 = v94;
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_10002A168();
              }

              goto LABEL_96;
            }

            v49 = [v47 objectForKey:@"TypeOfSignature"];

            v95 = v49;
            v34 = v94;
            if (((v88 | [v49 isEqualToString:@"UAT"] ^ 1) & 1) == 0)
            {
              v69 = sub_100021268();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_10002A078();
              }

              goto LABEL_95;
            }

            v50 = [(MSDDemoManifestCheck *)v96 getComponentData:v45];

            if (!v50)
            {
              v69 = sub_100021268();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_10002A0F8();
              }

              v34 = 0;
LABEL_95:
              v42 = v95;
LABEL_96:
              v8 = v82;
              v10 = v83;
              v15 = v79;

              v95 = v42;
              v21 = v75;
              goto LABEL_97;
            }

            v51 = [v48 objectForKey:@"publicKey"];
            v94 = v50;
            v52 = sub_1000061E4(kCFAllocatorDefault, v43, v50);
            v53 = [v45 objectForKey:@"Signature"];
            LODWORD(v51) = SecKeyVerifySignature(v51, kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA1, [NSData dataWithBytes:v52 length:20], v53, &error);
            free(v52);
            if (!v51)
            {
              v35 = v45;
              v70 = sub_100021268();
              v8 = v82;
              v15 = v79;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
                v118 = 2114;
                *v119 = v43;
                *&v119[8] = 2114;
                v120 = v91;
                v121 = 2114;
                v122 = error;
                _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "%s: signature verification failed for %{public}@ in section %{public}@. Error: %{public}@", buf, 0x2Au);
              }

              goto LABEL_85;
            }

            v40 = [v48 objectForKey:@"RigorousCheckType"];

            v35 = v45;
            [v45 setObject:v40 forKey:@"RigorousCheckType"];
            v54 = [(__CFString *)v40 isEqualToString:@"Skip"];
            v97 = v40;
            if (-[__CFString isEqualToString:](v40, "isEqualToString:", @"AppleISTCertCheck") && [v91 isEqualToString:@"Apps"] && !-[MSDDemoManifestCheck validateISTSignedApp:manifest:](v96, "validateISTSignedApp:manifest:", v43, v90))
            {
              v8 = v82;
              v15 = v79;
LABEL_85:
              v34 = v94;

              v10 = v83;
              v21 = v75;
              v45 = v35;
              goto LABEL_97;
            }

            v36 |= v54 ^ 1;
          }

          v89 = [v86 countByEnumeratingWithState:&v102 objects:v123 count:16];
          if (v89)
          {
            continue;
          }

          break;
        }

LABEL_50:

        v21 = v75;
        v37 = v77 + 1;
        v34 = v94;
      }

      while ((v77 + 1) != v73);
      v73 = [obj countByEnumeratingWithState:&v106 objects:v124 count:16];
    }

    while (v73);
  }

  v15 = v79;
  if (!os_variant_has_internal_content() || !v84 || (v36 & 1) == [v84 BOOLValue])
  {
    v45 = v35;
    if ((v36 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_64;
  }

  v45 = v35;
  v55 = sub_100021268();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [v84 BOOLValue];
    *buf = 136315650;
    v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    v118 = 1024;
    *v119 = v36 & 1;
    *&v119[4] = 1024;
    *&v119[6] = v56;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s: Overriding rigorous testing from %{BOOL}d to %{BOOL}d", buf, 0x18u);
  }

  if ([v84 BOOLValue])
  {
LABEL_64:
    v8 = v82;
    v10 = v83;
    if ([(MSDDemoManifestCheck *)v96 secureManifestCheckForSegmentedManifest:v90 options:v82])
    {
      goto LABEL_65;
    }

    sub_10002A1E0();
    v40 = v97;
    goto LABEL_97;
  }

LABEL_58:
  v57 = sub_100021268();
  v10 = v83;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s: Skipping rigorous manifest testing.", buf, 0xCu);
  }

  v8 = v82;
LABEL_65:
  if (![v10 BOOLValue])
  {
    goto LABEL_104;
  }

  v59 = [(MSDDemoManifestCheck *)v96 blocklistedItems];
  v60 = [v59 count];

  if (!v60)
  {
    v61 = sub_100021268();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No items blocklisted, skip blocklist item exclusion", buf, 2u);
    }

    goto LABEL_102;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v61 = v90;
  v62 = [v61 countByEnumeratingWithState:&v98 objects:v115 count:16];
  if (!v62)
  {
LABEL_102:
    v10 = v83;
    goto LABEL_103;
  }

  v63 = v62;
  v64 = v34;
  v76 = v21;
  v65 = *v99;
  do
  {
    for (j = 0; j != v63; j = j + 1)
    {
      if (*v99 != v65)
      {
        objc_enumerationMutation(v61);
      }

      v67 = *(*(&v98 + 1) + 8 * j);
      v68 = [v61 objectForKey:v67 ofType:objc_opt_class()];
      if (v68)
      {
        [(MSDDemoManifestCheck *)v96 removeBlocklistedItemFromSection:v68 withName:v67];
      }
    }

    v63 = [v61 countByEnumeratingWithState:&v98 objects:v115 count:16];
  }

  while (v63);
  v8 = v82;
  v10 = v83;
  v21 = v76;
  v34 = v64;
LABEL_103:

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  v71 = v90;
  v40 = v97;
LABEL_107:

  return v71;
}

- (BOOL)checkFileForEntitlements:(id)a3 forCorrespondingManifestEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDDemoManifestCheck *)self itemBeingInstalled];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"TypeOfFiles"];
    v11 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v12 = [v11 objectForKey:v10];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_10002A298();
LABEL_27:
      v27 = v39;
      goto LABEL_11;
    }

    v13 = [(MSDDemoManifestCheck *)self getBackupSectionName];
    v14 = [v10 isEqualToString:v13];

    if (v14)
    {
      v36 = v10;
      v37 = v9;
      v38 = v6;
      v35 = [v9 objectForKey:@"Identifier"];
      v15 = [v35 rangeValue];
      v17 = v16;
      v18 = [(MSDDemoManifestCheck *)self getInstallationOrder];
      v19 = v15 + v17 - 1;
      if ((v15 + v17 - 1) >= 0)
      {
        while (1)
        {
          v20 = [v18 objectAtIndex:v19];
          v21 = [(MSDDemoManifestCheck *)self getBackupItemName:v20];

          v22 = [v12 objectForKey:v21];
          v23 = [v22 objectForKey:@"Manifest"];
          v24 = [(MSDDemoManifestCheck *)self getManifestData:v23];

          v25 = [v24 objectForKey:v7];

          if (v25)
          {
            break;
          }

          if (v19-- <= 0)
          {
            goto LABEL_8;
          }
        }

        v32 = [v22 objectForKey:@"RigorousCheckType"];
        v33 = [v32 isEqualToString:@"Skip"];

        v9 = v37;
        v6 = v38;
        v10 = v36;
        if (v33)
        {
          goto LABEL_21;
        }

LABEL_20:
        if (MISValidateSignatureAndCopyInfo())
        {
LABEL_21:
          v28 = 1;
          goto LABEL_22;
        }

        sub_10002A3E8();
        goto LABEL_27;
      }

LABEL_8:

      v9 = v37;
      v6 = v38;
      v10 = v36;
    }

    else if (([v10 isEqualToString:@"ExtensionData"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"AppData") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"GroupData"))
    {
      v27 = [v9 objectForKey:@"Identifier"];
      v29 = [v12 objectForKey:v27];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_10002A33C();
LABEL_11:

        v28 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v30 = [v29 objectForKey:@"RigorousCheckType"];
      v31 = [v30 isEqualToString:@"Skip"];

      if (v31)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v27 = sub_100021268();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10002A490();
    }

    goto LABEL_11;
  }

  v28 = 1;
LABEL_23:

  return v28;
}

- (__SecKey)createPublicKeyForStrongSigning:(id)a3
{
  v4 = a3;
  MobileStoreSigner = SecPolicyCreateMobileStoreSigner();
  v6 = sub_100021268();
  v7 = v6;
  if (MobileStoreSigner)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Verifying strong signing", v10, 2u);
    }

    v8 = [(MSDDemoManifestCheck *)self createPublicKey:v4 usingPolicy:MobileStoreSigner anchors:0];
  }

  else
  {
    sub_10002A500(v6);
    v8 = 0;
  }

  return v8;
}

- (__SecKey)createPublicKeyForDevelopmentSigning:(id)a3
{
  v4 = a3;
  v5 = sub_100021268();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Verifying development signing", v8, 2u);
  }

  v6 = [(MSDDemoManifestCheck *)self createPublicKeyForDevelopmentSigningStandard:v4];
  return v6;
}

- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)a3
{
  v4 = a3;
  TestMobileStoreSigner = SecPolicyCreateTestMobileStoreSigner();
  if (TestMobileStoreSigner)
  {
    v6 = [(MSDDemoManifestCheck *)self createPublicKey:v4 usingPolicy:TestMobileStoreSigner anchors:0];
  }

  else
  {
    sub_10002A594();
    v6 = 0;
  }

  return v6;
}

- (__SecKey)createPublicKey:(id)a3 usingPolicy:(__SecPolicy *)a4 anchors:(id)a5
{
  v7 = a3;
  v8 = a5;
  trust[0] = 0;
  result = kSecTrustResultInvalid;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000DBB4;
  v20 = sub_10000DBC4;
  v21 = 0;
  v9 = [NSMutableArray arrayWithCapacity:0];
  v10 = v17[5];
  v17[5] = v9;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000DBCC;
  v15[3] = &unk_100050DC8;
  v15[4] = &v16;
  [v7 enumerateObjectsUsingBlock:v15];
  v11 = v17[5];
  if (!v11)
  {
LABEL_14:
    v12 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (SecTrustCreateWithCertificates(v11, a4, trust))
  {
    sub_100021268();
    objc_claimAutoreleasedReturnValue();
    sub_10002A630();
LABEL_23:
    v13 = trust[1];
LABEL_13:

    goto LABEL_14;
  }

  if (v8 && SecTrustSetAnchorCertificates(trust[0], v8))
  {
    sub_100021268();
    objc_claimAutoreleasedReturnValue();
    sub_10002A6CC();
    goto LABEL_23;
  }

  if (SecTrustEvaluate(trust[0], &result))
  {
    sub_100021268();
    objc_claimAutoreleasedReturnValue();
    sub_10002A768();
    goto LABEL_23;
  }

  if (result != kSecTrustResultProceed && result != kSecTrustResultUnspecified)
  {
    v13 = sub_100021268();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002A894(&result);
    }

    goto LABEL_13;
  }

  v12 = SecTrustCopyPublicKey(trust[0]);
  if (!v12)
  {
    sub_100021268();
    objc_claimAutoreleasedReturnValue();
    sub_10002A804();
    goto LABEL_23;
  }

  if (a4)
  {
LABEL_15:
    CFRelease(a4);
  }

LABEL_16:
  if (trust[0])
  {
    CFRelease(trust[0]);
    trust[0] = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

- (BOOL)verifySignature:(id)a3 forData:(id)a4 withKey:(__SecKey *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = sub_100021268();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A9D8(v9);
  }

  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  v11 = [v7 bytes];
  v12 = [v7 length];

  CC_SHA1(v11, v12, v10);
  v13 = [v8 bytes];
  v14 = [v8 length];

  v15 = SecKeyRawVerify(a5, 0x8002u, v10, 0x14uLL, v13, v14);
  free(v10);
  if (v15)
  {
    sub_10002AA1C(v15);
  }

  return v15 == 0;
}

- (BOOL)isManualSigning:(id)a3
{
  commonName = 0;
  v3 = [a3 objectAtIndexedSubscript:0];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = sub_100021268();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002AB58();
    }

    goto LABEL_12;
  }

  v4 = SecCertificateCreateWithData(kCFAllocatorDefault, v3);
  if (!v4)
  {
    v9 = sub_100021268();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002AAD8();
    }

LABEL_12:

    v6 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  SecCertificateCopyCommonName(v4, &commonName);
  CFRelease(v5);
  v6 = commonName;
  if ([(__CFString *)commonName isEqualToString:@"Demo Content Signing"])
  {
    v7 = sub_100021268();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A certificate for manual signing is used.", buf, 2u);
    }

    v8 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v7 = sub_100021268();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A certificate for non-manual signing is used.", v11, 2u);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (BOOL)validateISTSignedApp:(id)a3 manifest:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"Apps"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"Manifest"];

  v9 = [v8 objectForKey:@"Info"];
  v10 = [v9 objectForKey:@"AppType"];

  v11 = [v8 objectForKey:@"Dependencies"];
  v12 = v11;
  if (!v11 || [v11 count] == 1 && (objc_msgSend(v12, "objectForKey:", @"ProvisioningProfiles"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = 1;
  }

  else
  {
    sub_10002ABD8();
    v14 = 0;
  }

  return v14;
}

- (BOOL)secureManifestCheckForSegmentedManifest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    sub_10002ACD0();
LABEL_9:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!v8)
  {
    v9 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:v6];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v9];
  }

  [(MSDDemoManifestCheck *)self setSegmentedManifestWithRigorousFlag:v6];
  v10 = [v6 objectForKey:@"Version"];
  -[MSDDemoManifestCheck setManifestVersion:](self, "setManifestVersion:", [v10 unsignedIntValue]);

  if (![(MSDDemoManifestCheck *)self runSecurityCheck:v7])
  {
    sub_10002AC34();
    goto LABEL_9;
  }

  [(MSDDemoManifestCheck *)self registerEntitlementNotificationHandler];
  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)runSecurityCheck:(id)a3
{
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v5 = [(MSDDemoManifestCheck *)self getSecurityCheckSectionNames];
  v6 = [(MSDDemoManifestCheck *)self getappIconLayoutBackupName];
  v7 = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v8 = sub_100021268();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting rigorous security checks", buf, 2u);
  }

  v9 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000E39C;
  v17[3] = &unk_100050E18;
  v10 = v5;
  v18 = v10;
  v19 = self;
  v23 = &v24;
  v11 = v4;
  v20 = v11;
  v12 = v6;
  v21 = v12;
  v13 = v7;
  v22 = v13;
  [v9 enumerateKeysAndObjectsUsingBlock:v17];

  if (v25[3])
  {
    v14 = sub_100021268();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDDemoManifestCheck runSecurityCheck:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:Cleared all checks for manifest. Approving future installations", buf, 0xCu);
    }
  }

  else
  {
    sub_100021268();
    objc_claimAutoreleasedReturnValue();
    sub_10002AD6C();
    v14 = *buf;
  }

  v15 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v15 & 1;
}

- (BOOL)runSecurityChecksForSection:(id)a3 dataType:(id)a4 componentName:(id)a5 options:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(MSDDemoManifestCheck *)self settingsComponentNames];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = [(MSDDemoManifestCheck *)self runSettingsSecurityCheckForSection:v13 component:v11];
  }

  else
  {
    v16 = [(MSDDemoManifestCheck *)self runFileSecurityChecksForSection:v13 dataType:v10 options:v12];
  }

  v17 = v16;

  return v17;
}

- (BOOL)runSettingsSecurityCheckForSection:(id)a3 component:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"locale"])
  {
    v7 = [v5 objectForKey:@"Data"];
    v8 = [v7 objectForKey:@"language"];

    if (!v8)
    {
      sub_10002B0C8();
      goto LABEL_14;
    }

    v9 = [v7 objectForKey:@"region"];

    if (!v9)
    {
      sub_10002B024();
LABEL_14:

LABEL_10:
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (![v6 isEqualToString:@"display"])
    {
      v7 = sub_100021268();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10002AF08();
      }

      goto LABEL_10;
    }

    v7 = [v5 objectForKey:@"Data"];
    v10 = [v7 objectForKey:@"HDR"];

    if (!v10)
    {
      sub_10002AF78();
      goto LABEL_11;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)runFileSecurityChecksForSection:(id)a3 dataType:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"ExcludeBlocklistItem"];
  v12 = +[MSDPlatform sharedInstance];
  LODWORD(a4) = [v12 macOS];

  v77 = v9;
  if (a4)
  {
    v13 = [v8 objectForKey:@"Data"];
    v14 = [(MSDDemoManifestCheck *)self whitelistChecker];
    v15 = v13;
    v16 = [v14 checkManifest:v13];

    if ([v11 BOOLValue])
    {
      v17 = [(MSDDemoManifestCheck *)self blocklistedItems];
      [v17 addObjectsFromArray:v16];
    }

    else if (v16)
    {
      sub_10002B3B4(v16);
LABEL_64:
      v33 = 0;
      goto LABEL_70;
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v15 = v15;
    v23 = [v15 countByEnumeratingWithState:&v101 objects:v108 count:16];
    if (v23)
    {
      v24 = v23;
      v87 = v16;
      v71 = v10;
      v73 = v8;
      v69 = v11;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *v102;
      while (2)
      {
        v29 = 0;
        v30 = v25;
        v31 = v27;
        do
        {
          if (*v102 != v28)
          {
            objc_enumerationMutation(v15);
          }

          v32 = *(*(&v101 + 1) + 8 * v29);

          v25 = [v15 objectForKey:v32];

          v27 = [v25 valueForKey:@"MSDManifestFileAttributes"];

          if (!v27)
          {
            v66 = v32;
            v67 = sub_100021268();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_10002B344();
            }

            v33 = 0;
            v9 = v77;
            v11 = v69;
            v10 = v71;
            v8 = v73;
            v15 = v66;
            goto LABEL_70;
          }

          v29 = v29 + 1;
          v30 = v25;
          v26 = v32;
          v31 = v27;
        }

        while (v24 != v29);
        v26 = v32;
        v24 = [v15 countByEnumeratingWithState:&v101 objects:v108 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v9 = v77;
      v11 = v69;
      v10 = v71;
      v8 = v73;
      v16 = v87;
    }

    v33 = 1;
    goto LABEL_70;
  }

  v76 = [NSSet setWithArray:&off_100056538];
  v18 = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v19 = [(MSDDemoManifestCheck *)self getManifestData:v8];

  v75 = v18;
  v86 = self;
  if ([v9 isEqualToString:v18])
  {
    v20 = [(MSDDemoManifestCheck *)self whitelistChecker];
    v21 = [v20 checkManifest:v19];

    if ([v11 BOOLValue])
    {
      v22 = [(MSDDemoManifestCheck *)self blocklistedItems];
      [v22 addObjectsFromArray:v21];
    }

    else if (v21)
    {
      sub_10002B16C();
      v33 = 0;
      v15 = v76;
      v8 = v19;
      goto LABEL_70;
    }
  }

  v70 = v11;
  v72 = v10;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v8 = v19;
  v80 = [v8 countByEnumeratingWithState:&v97 objects:v107 count:16];
  v34 = 0;
  v35 = 0;
  v15 = 0;
  if (!v80)
  {
    v37 = v75;
    v36 = v76;
    goto LABEL_66;
  }

  v79 = *v98;
  v37 = v75;
  v36 = v76;
  v74 = v8;
  while (2)
  {
    v38 = 0;
    v39 = v15;
    do
    {
      if (*v98 != v79)
      {
        v40 = v38;
        objc_enumerationMutation(v8);
        v38 = v40;
      }

      v81 = v38;
      v41 = *(*(&v97 + 1) + 8 * v38);
      context = objc_autoreleasePoolPush();
      v88 = v41;
      v84 = [v8 objectForKey:v41];
      v15 = [v84 valueForKey:@"MSDManifestFileAttributes"];

      if (!v15)
      {
        v65 = sub_100021268();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_10002B344();
        }

        goto LABEL_63;
      }

      v42 = [v36 containsObject:v9];
      v43 = [v15 valueForKey:@"NSFileType"];

      v83 = v43;
      v44 = [v43 isEqualToString:@"NSFileTypeRegular"];
      if (v42)
      {
        if ((v44 & 1) != 0 || ([v43 isEqualToString:@"NSFileTypeDirectory"]) && !-[MSDDemoManifestCheck isValidDataContainerFile:](v86, "isValidDataContainerFile:", v88, v70, v72))
        {
          goto LABEL_61;
        }
      }

      else if ((v44 & 1) == 0 && ([v43 isEqualToString:@"NSFileTypeDirectory"] & 1) == 0)
      {
        v78 = v15;
        v45 = [v84 valueForKey:@"MSDManifestSymbolicLinkTargetFile"];

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v46 = v86;
        v47 = [(MSDDemoManifestCheck *)v86 allowedSymLinks];
        v48 = [v47 countByEnumeratingWithState:&v93 objects:v106 count:16];
        if (!v48)
        {

          v34 = v45;
          v15 = v78;
LABEL_61:
          v65 = sub_100021268();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v35 = v83;
            sub_10002B1DC();
            goto LABEL_63;
          }

LABEL_62:
          v35 = v83;
LABEL_63:
          v11 = v70;
          v10 = v72;

          objc_autoreleasePoolPop(context);
          goto LABEL_64;
        }

        v49 = v48;
        v85 = 0;
        v50 = *v94;
        v51 = v88;
        do
        {
          for (i = 0; i != v49; i = i + 1)
          {
            if (*v94 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v53 = *(*(&v93 + 1) + 8 * i);
            if ([v51 rangeOfString:{v53, v70, v72}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v54 = [(MSDDemoManifestCheck *)v46 allowedSymLinks];
              v55 = [v54 objectForKey:v53];

              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v56 = v55;
              v57 = [v56 countByEnumeratingWithState:&v89 objects:v105 count:16];
              if (v57)
              {
                v58 = v57;
                v59 = *v90;
                while (2)
                {
                  for (j = 0; j != v58; j = j + 1)
                  {
                    if (*v90 != v59)
                    {
                      objc_enumerationMutation(v56);
                    }

                    if ([v45 rangeOfString:*(*(&v89 + 1) + 8 * j)] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v85 = 1;
                      goto LABEL_49;
                    }
                  }

                  v58 = [v56 countByEnumeratingWithState:&v89 objects:v105 count:16];
                  if (v58)
                  {
                    continue;
                  }

                  break;
                }

LABEL_49:
                v46 = v86;
                v51 = v88;
              }
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v93 objects:v106 count:16];
        }

        while (v49);

        v34 = v45;
        v9 = v77;
        v15 = v78;
        v8 = v74;
        v37 = v75;
        v36 = v76;
        if ((v85 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v61 = [v15 valueForKey:{@"NSFilePosixPermissions", v70, v72}];
      v62 = [v61 longValue];

      if ((v62 & 0xC00) != 0)
      {
        v65 = sub_100021268();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_10002B258();
        }

        goto LABEL_62;
      }

      if ([v9 isEqualToString:v37])
      {
        v63 = [(MSDDemoManifestCheck *)v86 whitelistChecker];
        v64 = [v63 handleSystemContainerFiles:v88 withMetadata:v84];

        if ((v64 & 1) == 0)
        {
          v65 = sub_100021268();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            sub_10002B2D4();
          }

          goto LABEL_62;
        }
      }

      objc_autoreleasePoolPop(context);
      v38 = v81 + 1;
      v35 = v83;
      v39 = v15;
    }

    while ((v81 + 1) != v80);
    v35 = v83;
    v80 = [v8 countByEnumeratingWithState:&v97 objects:v107 count:16];
    if (v80)
    {
      continue;
    }

    break;
  }

LABEL_66:

  v33 = 1;
  v11 = v70;
  v10 = v72;
LABEL_70:

  return v33;
}

- (BOOL)runAppLayoutSecurityCheck:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = +[MSDPlatform sharedInstance];
  v8 = [v7 macOS];

  v61 = v5;
  v62 = v6;
  if (v8)
  {
    [v5 addObject:&off_100056760];
    [v6 addObject:@"staff"];
    v63 = [NSSet setWithArray:&off_100056550];
    goto LABEL_11;
  }

  [v5 addObject:&off_100056778];
  [v5 addObject:&off_100056790];
  [v6 addObject:@"mobile"];
  [v6 addObject:@"wheel"];
  v9 = +[MSDPlatform sharedInstance];
  v10 = [v9 rOS];

  if (v10)
  {
    v11 = &off_100056568;
  }

  else
  {
    v12 = +[MSDPlatform sharedInstance];
    v13 = [v12 iOS];

    if (v13)
    {
      v11 = &off_100056580;
    }

    else
    {
      v14 = +[MSDPlatform sharedInstance];
      v15 = [v14 tvOS];

      if (!v15)
      {
        v16 = objc_alloc_init(NSSet);
        goto LABEL_10;
      }

      v11 = &off_100056598;
    }
  }

  v16 = [NSSet setWithArray:v11];
LABEL_10:
  v63 = v16;
LABEL_11:
  v17 = [(MSDDemoManifestCheck *)self getManifestData:v4];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = &archive_entry_free_ptr;
    v64 = *v66;
    *&v20 = 134218242;
    v58 = v20;
    v59 = v18;
    do
    {
      v23 = 0;
      v60 = v21;
      do
      {
        if (*v66 != v64)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v65 + 1) + 8 * v23);
        v25 = [v18 objectForKey:{v24, v58}];
        if (!v25 || (v26 = v22[371], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          sub_10002B4CC();
LABEL_105:
          v31 = 6;
          goto LABEL_95;
        }

        v27 = [v25 objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        if (v27)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v27 isEqualToString:&stru_1000519D0] & 1) == 0)
          {
            sub_10002B418(v24, v27, v25);
            goto LABEL_105;
          }
        }

        v28 = [v25 objectForKey:@"MSDManifestFileAttributes"];
        if (v28)
        {
          v29 = v22[371];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [v28 objectForKey:@"NSFileType"];
            if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if (([v30 isEqualToString:@"NSFileTypeDirectory"]& 1) != 0)
              {
                v31 = 3;
                goto LABEL_48;
              }

              if (([v30 isEqualToString:@"NSFileTypeRegular"]& 1) != 0)
              {
                if ([v63 containsObject:v24])
                {
                  v32 = [v28 objectForKey:NSFileOwnerAccountID];
                  if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    if ([v32 integerValue]== 501)
                    {
                      v33 = [v28 objectForKey:NSFileGroupOwnerAccountID];

                      if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        if ([v5 containsObject:v33])
                        {
                          v34 = [v28 objectForKey:NSFileOwnerAccountName];
                          if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            if (([v34 isEqualToString:@"mobile"]& 1) != 0)
                            {
                              v35 = [v28 objectForKey:NSFileGroupOwnerAccountName];

                              if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v21 = v60;
                                if ([v62 containsObject:v35])
                                {
                                  v36 = [v28 objectForKey:NSFilePosixPermissions];
                                  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    if (([v36 integerValue]& 0xC00) == 0)
                                    {
                                      v31 = 1;
                                      goto LABEL_45;
                                    }

                                    v49 = sub_100021268();
                                    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                                    {
LABEL_79:

                                      v31 = 6;
LABEL_80:
                                      v21 = v60;
LABEL_45:

LABEL_46:
                                      v5 = v61;
LABEL_47:

                                      v18 = v59;
                                      goto LABEL_48;
                                    }

                                    *buf = 138543362;
                                    v70 = v24;
                                    v50 = v49;
                                    v51 = "IS&T signed component contains setuid item: %{public}@";
                                  }

                                  else
                                  {
                                    v49 = sub_100021268();
                                    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                                    {
                                      goto LABEL_79;
                                    }

                                    *buf = 138543362;
                                    v70 = v24;
                                    v50 = v49;
                                    v51 = "IS&T signed component in wrong format (permission) for %{public}@";
                                  }

                                  _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v51, buf, 0xCu);
                                  goto LABEL_79;
                                }

                                v36 = sub_100021268();
                                if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                                {
LABEL_77:
                                  v31 = 6;
                                  goto LABEL_45;
                                }

                                *buf = 138543618;
                                v70 = v62;
                                v71 = 2114;
                                v72 = v24;
                                v46 = v36;
                                v47 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                                v48 = 22;
                              }

                              else
                              {
                                v36 = sub_100021268();
                                v21 = v60;
                                if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_77;
                                }

                                *buf = 138543362;
                                v70 = v24;
                                v46 = v36;
                                v47 = "IS&T signed component in wrong format (onwer name) for %{public}@";
                                v48 = 12;
                              }

                              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, v47, buf, v48);
                              goto LABEL_77;
                            }

                            v36 = sub_100021268();
                            if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                            {
LABEL_75:
                              v31 = 6;
                              v35 = v34;
                              goto LABEL_80;
                            }

                            *buf = 138543618;
                            v70 = @"mobile";
                            v71 = 2114;
                            v72 = v24;
                            v43 = v36;
                            v44 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                            v45 = 22;
                          }

                          else
                          {
                            v36 = sub_100021268();
                            if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_75;
                            }

                            *buf = 138543362;
                            v70 = v24;
                            v43 = v36;
                            v44 = "IS&T signed component in wrong format (owner name) for %{public}@";
                            v45 = 12;
                          }

                          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, v44, buf, v45);
                          goto LABEL_75;
                        }

                        v35 = sub_100021268();
                        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
LABEL_73:
                          v31 = 6;
                          goto LABEL_46;
                        }

                        *buf = 138543618;
                        v70 = v61;
                        v71 = 2114;
                        v72 = v24;
                        v40 = v35;
                        v41 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                        v42 = 22;
                      }

                      else
                      {
                        v35 = sub_100021268();
                        if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_73;
                        }

                        *buf = 138543362;
                        v70 = v24;
                        v40 = v35;
                        v41 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                        v42 = 12;
                      }

                      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, v41, buf, v42);
                      goto LABEL_73;
                    }

                    v35 = sub_100021268();
                    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
LABEL_71:
                      v31 = 6;
                      v33 = v32;
                      goto LABEL_46;
                    }

                    *buf = v58;
                    v70 = 501;
                    v71 = 2114;
                    v72 = v24;
                    v37 = v35;
                    v38 = "IS&T signed component can only contain %ld owned file - %{public}@";
                    v39 = 22;
                  }

                  else
                  {
                    v35 = sub_100021268();
                    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_71;
                    }

                    *buf = 138543362;
                    v70 = v24;
                    v37 = v35;
                    v38 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                    v39 = 12;
                  }

                  _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, v38, buf, v39);
                  goto LABEL_71;
                }

                v33 = sub_100021268();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v70 = v24;
                  v52 = v33;
                  v53 = "%{public}@ is not allowed in IS&T signed component.";
                  goto LABEL_82;
                }
              }

              else
              {
                v33 = sub_100021268();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v70 = v24;
                  v52 = v33;
                  v53 = "IS&T signed component can only contain regular files - %{public}@";
                  goto LABEL_82;
                }
              }
            }

            else
            {
              v33 = sub_100021268();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v70 = v24;
                v52 = v33;
                v53 = "IS&T signed component in wrong format (file type) for %{public}@";
LABEL_82:
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 0xCu);
              }
            }

            v31 = 6;
            goto LABEL_47;
          }
        }

        v30 = sub_100021268();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v70 = v24;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "IS&T signed component in wrong format (no file attributes) for %{public}@", buf, 0xCu);
        }

        v31 = 6;
LABEL_48:

        if (v31 != 3)
        {
          goto LABEL_95;
        }

        v23 = v23 + 1;
        v22 = &archive_entry_free_ptr;
      }

      while (v21 != v23);
      v54 = [v18 countByEnumeratingWithState:&v65 objects:v73 count:16];
      v21 = v54;
    }

    while (v54);
  }

  v31 = 0;
LABEL_95:

  if (v31)
  {
    v55 = v31 == 6;
  }

  else
  {
    v55 = 1;
  }

  v56 = !v55;

  return v56;
}

- (void)registerEntitlementNotificationHandler
{
  v3 = +[NSNotificationCenter defaultCenter];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000FEA8;
  v5[3] = &unk_100050E40;
  v5[4] = self;
  v4 = [v3 addObserverForName:@"CheckEntitlementsNotify" object:0 queue:0 usingBlock:v5];
}

- (id)getSecurityCheckSectionNames
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v2 = +[MSDPlatform sharedInstance];
    v3 = [v2 macOS];

    if (v3)
    {
      v4 = &off_1000565B0;
    }

    else
    {
      v4 = &off_1000565C8;
    }
  }

  else
  {
    v4 = &off_1000565E0;
  }

  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (id)getManifestData:(id)a3
{
  v4 = a3;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [v4 objectForKey:@"Data" ofType:objc_opt_class()];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)getComponentData:(id)a3
{
  v3 = a3;
  v4 = @"Manifest";
  v5 = [v3 objectForKey:@"Manifest"];

  if (v5 || (v4 = @"Settings", [v3 objectForKey:@"Settings"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v3 objectForKey:v4 ofType:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getBackupSectionName
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    return @"BackupData";
  }

  else
  {
    return @"Backup";
  }
}

- (id)getappIconLayoutBackupName
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]!= 7)
  {
    return @"backup.Merge.AppIconLayout";
  }

  v2 = +[MSDPlatform sharedInstance];
  v3 = [v2 macOS];

  if (v3)
  {
    return @"dockLayout";
  }

  else
  {
    return @"appIconLayout";
  }
}

- (id)getInstallationOrder
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v3 = +[NSMutableArray array];
    v4 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v5 = [v4 objectForKey:@"InstallationOrder"];

    v6 = [v5 objectForKey:@"CriticalComponents"];
    if (v6)
    {
      [v3 addObjectsFromArray:v6];
    }

    v7 = [v5 objectForKey:@"Components"];
    if (v7)
    {
      [v3 addObjectsFromArray:v7];
    }
  }

  else
  {
    v5 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v3 = [v5 objectForKey:@"InstallationOrder"];
  }

  return v3;
}

- (id)getBackupItemName:(id)a3
{
  v4 = a3;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"/BackupData/", "length")}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isValidDataContainerFile:(id)a3
{
  v3 = a3;
  v4 = [v3 pathComponents];
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        v9 = [v8 isEqualToString:@".."];

        if (v9)
        {
          if (!v7)
          {
            v14 = sub_100021268();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10002B570();
            }

            goto LABEL_12;
          }

          v10 = -1;
        }

        else
        {
          v11 = [v5 objectAtIndexedSubscript:v6];
          v12 = [v11 isEqualToString:@"."];

          v10 = v12 ^ 1;
        }

        v7 += v10;
        ++v6;
      }

      while ([v5 count] > v6);
    }

    v13 = 1;
  }

  else
  {
    v14 = sub_100021268();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10002B5E0();
    }

LABEL_12:

    v13 = 0;
  }

  return v13;
}

- (id)getAllowedSymLinks
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[MSDPlatform sharedInstance];
  if ([v3 iOS])
  {
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 rOS];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [NSSet setWithArray:&off_1000565F8];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.carrier"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_1.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_2.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.merged.plist"];
  v7 = [NSSet setWithObject:@"/var/db/timezone/zoneinfo"];
  [v2 setObject:v7 forKey:@"/var/db/timezone/localtime"];

  v8 = [NSSet setWithArray:&off_100056610];
  [v2 setObject:v8 forKey:@"/var/mobile/Media/Books"];

  v9 = [NSSet setWithObject:@"/var/mobile/Library/Shortcuts/ToolKit"];
  [v2 setObject:v9 forKey:@"/var/mobile/Library/Shortcuts/ToolKit/Tools-active"];

  v10 = [NSSet setWithObject:@"Binaries/0/Debug-xros"];
  [v2 setObject:v10 forKey:@"/var/mobile/XcodeBuiltProducts/PressDemoScripts.xctestproducts/Tests/0/Debug-xros"];

  v11 = objc_alloc_init(NSMutableSet);
  [v11 addObject:@"/var/mobile/Containers/Data/Application/"];
  [v11 addObject:@"/var/mobile/Containers/Shared/AppGroup/"];
  [v11 addObject:@"/var/mobile/Containers/Shared/Extension/"];
  [v11 addObject:@"/var/mobile/Library/Cookies"];
  [v11 addObject:@"/private/var/mobile/Library/Preferences/com.apple.PeoplePicker.plist"];
  [v11 addObject:@"/private/var/mobile/Library/Preferences/.GlobalPreferences.plist"];
  [v2 setObject:v11 forKey:@"/var/mobile/Containers/"];

LABEL_5:

  return v2;
}

- (id)getAllowedISTSignedComponents:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = [NSString stringWithFormat:@"%@.%@", @"BackupData", @"appIconLayout"];
  v12[0] = v6;
  v7 = [NSString stringWithFormat:@"%@.%@", @"BackupData", @"dockLayout"];
  v12[1] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:2];

  v9 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponentsFromManifest:v4];

  [v5 addObjectsFromArray:v8];
  [v5 addObjectsFromArray:v9];
  v10 = [NSSet setWithSet:v5];

  return v10;
}

- (id)getAllowedISTSignedComponentsFromManifest:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  [v4 addObject:@"com.apple.ist.DigitalCatalog"];
  [v4 addObject:@"com.apple.ist.demoloop"];
  [v4 addObject:@"com.apple.ist.windward"];
  [v4 addObject:@"com.apple.ist.DemoDiscoveryApp"];
  [v4 addObject:@"com.apple.ist.DigitalSignage.iOS"];
  [v4 addObject:@"com.retailtech.arkenstone"];
  v5 = +[NSMutableArray array];
  v24 = v3;
  v27 = [v3 objectForKeyedSubscript:@"Apps"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v28)
  {
    v26 = *v42;
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v6;
        v7 = [v27 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * v6)];
        v8 = [v7 objectForKeyedSubscript:@"Manifest"];
        v9 = [v8 objectForKeyedSubscript:@"Dependencies"];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          v30 = *v38;
          v31 = v10;
          do
          {
            v14 = 0;
            v32 = v12;
            do
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v37 + 1) + 8 * v14);
              if (([v15 isEqualToString:@"ProvisioningProfiles"] & 1) == 0)
              {
                v16 = [v10 objectForKeyedSubscript:v15];
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v34;
                  do
                  {
                    for (i = 0; i != v18; i = i + 1)
                    {
                      if (*v34 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = [NSString stringWithFormat:@"%@.%@", v15, *(*(&v33 + 1) + 8 * i)];
                      [v5 addObject:v21];
                    }

                    v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v18);
                }

                v13 = v30;
                v10 = v31;
                v12 = v32;
              }

              v14 = v14 + 1;
            }

            while (v14 != v12);
            v12 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        v6 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v28);
  }

  v22 = [NSArray arrayWithArray:v5];

  return v22;
}

- (void)removeBlocklistedItemFromSection:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v59;
    v11 = &archive_entry_free_ptr;
    v37 = self;
    v38 = v6;
    v35 = *v59;
    v36 = v7;
    do
    {
      v12 = 0;
      v39 = v9;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = v11[377];
        v43 = *(*(&v58 + 1) + 8 * v12);
        v14 = [v6 objectForKey:v43 ofType:objc_opt_class()];
        if (v14)
        {
          v15 = [(MSDDemoManifestCheck *)self getComponentData:v14];
          if (v15)
          {
            v16 = [(MSDDemoManifestCheck *)self getManifestData:v15];
            if (v16)
            {
              v40 = v15;
              v41 = v14;
              v42 = v12;
              v17 = objc_opt_new();
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              obj = [(MSDDemoManifestCheck *)self blocklistedItems];
              v18 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
              if (v18)
              {
                v19 = v18;
                v45 = *v55;
                do
                {
                  for (i = 0; i != v19; i = i + 1)
                  {
                    if (*v55 != v45)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v21 = *(*(&v54 + 1) + 8 * i);
                    v50 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v53 = 0u;
                    v22 = v16;
                    v23 = [v22 countByEnumeratingWithState:&v50 objects:v69 count:16];
                    if (v23)
                    {
                      v24 = v23;
                      v25 = *v51;
                      do
                      {
                        for (j = 0; j != v24; j = j + 1)
                        {
                          if (*v51 != v25)
                          {
                            objc_enumerationMutation(v22);
                          }

                          v27 = *(*(&v50 + 1) + 8 * j);
                          if (([v27 isEqualToString:{v21, v35}] & 1) != 0 || objc_msgSend(v27, "hasPrefix:", v21))
                          {
                            [v17 addObject:v27];
                          }
                        }

                        v24 = [v22 countByEnumeratingWithState:&v50 objects:v69 count:16];
                      }

                      while (v24);
                    }
                  }

                  v19 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
                }

                while (v19);
              }

              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v28 = v17;
              v29 = [v28 countByEnumeratingWithState:&v46 objects:v68 count:16];
              v7 = v36;
              if (v29)
              {
                v30 = v29;
                v31 = *v47;
                do
                {
                  for (k = 0; k != v30; k = k + 1)
                  {
                    if (*v47 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v46 + 1) + 8 * k);
                    v34 = sub_100021268();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543874;
                      v63 = v33;
                      v64 = 2114;
                      v65 = v36;
                      v66 = 2114;
                      v67 = v43;
                      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Excluding %{public}@ from section: %{public}@ component:%{public}@", buf, 0x20u);
                    }

                    [v16 removeObjectForKey:v33];
                  }

                  v30 = [v28 countByEnumeratingWithState:&v46 objects:v68 count:16];
                }

                while (v30);
              }

              self = v37;
              v6 = v38;
              v10 = v35;
              v11 = &archive_entry_free_ptr;
              v9 = v39;
              v15 = v40;
              v14 = v41;
              v12 = v42;
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v12 != v9);
      v9 = [v6 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v9);
  }
}

- (__SecKey)createPublicKeyAppleISTSigning:(id)a3
{
  v5 = a3;
  commonName = 0;
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Verifying AppleIST certificate\n", buf, 2u);
  }

  DemoDigitalCatalogSigning = SecPolicyCreateDemoDigitalCatalogSigning();
  if (!DemoDigitalCatalogSigning)
  {
    v27 = sub_100021268();
    if (sub_10001124C(v27))
    {
      *buf = 136315138;
      v53 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      sub_10000C334();
LABEL_38:
      _os_log_error_impl(v28, v29, v30, v31, v32, v33);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v8 = DemoDigitalCatalogSigning;
  if ([v5 count] != 2)
  {
    v34 = sub_100021268();
    if (sub_10001124C(v34))
    {
      *buf = 0;
LABEL_37:
      sub_100011224();
      goto LABEL_38;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_35;
  }

  v9 = [v5 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v3 = [v5 objectAtIndex:0];
  v11 = [(__CFString *)v3 bytes];
  v12 = [v5 objectAtIndex:0];
  v13 = CFDataCreate(kCFAllocatorDefault, v11, [v12 length]);

  if (!v13)
  {
    v35 = sub_100021268();
    if (!sub_10001124C(v35))
    {
      goto LABEL_23;
    }

    *buf = 0;
    goto LABEL_37;
  }

  SecCertificateCreateWithData(kCFAllocatorDefault, v13);
  v14 = SecCertificateCopyOrganizationalUnit();
  v3 = [(__CFString *)v14 objectAtIndex:0];
  v15 = [(__CFString *)v3 isEqualToString:@"1.2.840.113635.100.6.60"];

  if ((v15 & 1) == 0)
  {
    v36 = sub_100021268();
    if (sub_10001124C(v36))
    {
      *buf = 138543362;
      v53 = v14;
      sub_10000C334();
LABEL_28:
      _os_log_error_impl(v37, v38, v39, v40, v41, v42);
    }

LABEL_35:
    v24 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v16 = [v5 objectAtIndex:1];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
LABEL_21:
    v24 = 0;
    v25 = 0;
    goto LABEL_15;
  }

  v18 = [v5 objectAtIndex:1];
  v19 = [v18 bytes];
  v20 = [v5 objectAtIndex:1];
  v3 = CFDataCreate(kCFAllocatorDefault, v19, [v20 length]);

  if (!v3)
  {
    v43 = sub_100021268();
    if (sub_10001124C(v43))
    {
      *buf = 0;
      sub_100011224();
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v21 = SecCertificateCreateWithData(kCFAllocatorDefault, v3);
  SecCertificateCopyCommonName(v21, &commonName);
  v3 = commonName;
  if (([(__CFString *)v3 isEqualToString:@"DemoUnit CA"]& 1) == 0)
  {
    v44 = sub_100021268();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v53 = commonName;
      goto LABEL_40;
    }

LABEL_34:

    goto LABEL_35;
  }

  v22 = CFDataCreate(kCFAllocatorDefault, byte_10005BAF8, dword_10005BE80);
  if (!v22)
  {
    v44 = sub_100021268();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v23 = SecCertificateCreateWithData(kCFAllocatorDefault, v22);
  if (!v23)
  {
    v44 = sub_100021268();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v53 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
LABEL_40:
    sub_10000C334();
    _os_log_error_impl(v45, v46, v47, v48, v49, v50);
    goto LABEL_34;
  }

  v24 = [NSArray arrayWithObjects:v23, 0];
  v25 = [(MSDDemoManifestCheck *)self createPublicKey:v5 usingPolicy:v8 anchors:v24];
LABEL_14:

LABEL_15:
  return v25;
}

@end