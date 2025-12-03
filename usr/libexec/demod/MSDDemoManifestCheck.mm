@interface MSDDemoManifestCheck
+ (MSDDemoManifestCheck)sharedInstance;
- (BOOL)checkFileForEntitlements:(id)entitlements forCorrespondingManifestEntry:(id)entry;
- (BOOL)isManualSigning:(id)signing;
- (BOOL)isValidDataContainerFile:(id)file;
- (BOOL)runAppLayoutSecurityCheck:(id)check;
- (BOOL)runFileSecurityChecksForSection:(id)section dataType:(id)type options:(id)options;
- (BOOL)runSecurityCheck:(id)check;
- (BOOL)runSecurityChecksForSection:(id)section dataType:(id)type componentName:(id)name options:(id)options;
- (BOOL)runSettingsSecurityCheckForSection:(id)section component:(id)component;
- (BOOL)secureManifestCheckForSegmentedManifest:(id)manifest options:(id)options;
- (BOOL)validateISTSignedApp:(id)app manifest:(id)manifest;
- (BOOL)verifySignature:(id)signature forData:(id)data withKey:(__SecKey *)key;
- (MSDDemoManifestCheck)init;
- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)checker andCheckType:(id)type;
- (__SecKey)createPublicKey:(id)key usingPolicy:(__SecPolicy *)policy anchors:(id)anchors;
- (__SecKey)createPublicKeyAppleISTSigning:(id)signing;
- (__SecKey)createPublicKeyForDevelopmentSigning:(id)signing;
- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)standard;
- (__SecKey)createPublicKeyForStrongSigning:(id)signing;
- (id)getAllowedISTSignedComponents:(id)components;
- (id)getAllowedISTSignedComponentsFromManifest:(id)manifest;
- (id)getAllowedSymLinks;
- (id)getBackupItemName:(id)name;
- (id)getBackupSectionName;
- (id)getComponentData:(id)data;
- (id)getInstallationOrder;
- (id)getManifestData:(id)data;
- (id)getSecurityCheckSectionNames;
- (id)getappIconLayoutBackupName;
- (id)verifyFactoryManifestSignature:(id)signature forDataSectionKeys:(id)keys;
- (id)verifyManifestSignature:(id)signature forDataSectionKeys:(id)keys withOptions:(id)options;
- (void)registerEntitlementNotificationHandler;
- (void)removeBlocklistedItemFromSection:(id)section withName:(id)name;
@end

@implementation MSDDemoManifestCheck

+ (MSDDemoManifestCheck)sharedInstance
{
  if (qword_1001A5970 != -1)
  {
    sub_1000E1324();
  }

  v3 = qword_1001A5968;

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

  getAllowedSymLinks = [(MSDDemoManifestCheck *)v2 getAllowedSymLinks];
  [(MSDDemoManifestCheck *)v3 setAllowedSymLinks:getAllowedSymLinks];

  getSettingsComponentNames = [(MSDDemoManifestCheck *)v3 getSettingsComponentNames];
  [(MSDDemoManifestCheck *)v3 setSettingsComponentNames:getSettingsComponentNames];

  v6 = objc_alloc_init(WhitelistChecker);
  [(MSDDemoManifestCheck *)v3 setWhitelistChecker:v6];

  whitelistChecker = [(MSDDemoManifestCheck *)v3 whitelistChecker];
  load = [whitelistChecker load];

  if ((load & 1) == 0)
  {
    sub_1000E1338();
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

- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)checker andCheckType:(id)type
{
  checkerCopy = checker;
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = MSDDemoManifestCheck;
  v8 = [(MSDDemoManifestCheck *)&v13 init];
  v9 = v8;
  if (v8)
  {
    getAllowedSymLinks = [(MSDDemoManifestCheck *)v8 getAllowedSymLinks];
    [(MSDDemoManifestCheck *)v9 setAllowedSymLinks:getAllowedSymLinks];

    getSettingsComponentNames = [(MSDDemoManifestCheck *)v9 getSettingsComponentNames];
    [(MSDDemoManifestCheck *)v9 setSettingsComponentNames:getSettingsComponentNames];

    [(MSDDemoManifestCheck *)v9 setWhitelistChecker:checkerCopy];
    [(MSDDemoManifestCheck *)v9 setCheckType:typeCopy];
  }

  return v9;
}

- (id)verifyFactoryManifestSignature:(id)signature forDataSectionKeys:(id)keys
{
  signatureCopy = signature;
  keysCopy = keys;
  v8 = objc_opt_new();
  v9 = MGCopyAnswer();
  v10 = [signatureCopy objectForKey:@"Info"];
  v11 = 0;
  if (!v10)
  {
    v11 = [0 objectForKey:@"MinimumOSVersion"];
  }

  if (([v9 isEqualToString:v11] & 1) == 0)
  {
    [v8 setObject:&__kCFBooleanTrue forKey:@"ExcludeBlocklistItem"];
  }

  v12 = [(MSDDemoManifestCheck *)self verifyManifestSignature:signatureCopy forDataSectionKeys:keysCopy withOptions:v8];

  return v12;
}

- (id)verifyManifestSignature:(id)signature forDataSectionKeys:(id)keys withOptions:(id)options
{
  signatureCopy = signature;
  keysCopy = keys;
  optionsCopy = options;
  v92 = objc_alloc_init(NSMutableDictionary);
  error = 0;
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Verifying a separate component manifest.", buf, 0xCu);
  }

  v84 = [optionsCopy objectForKey:@"RigorousTestingOverride"];
  v10 = [optionsCopy objectForKey:@"ExcludeBlocklistItem"];
  allowedISTSignedComponents = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!allowedISTSignedComponents)
  {
    v12 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:signatureCopy];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v12];
  }

  v13 = [NSMutableSet alloc];
  allKeys = [signatureCopy allKeys];
  v15 = [v13 initWithArray:allKeys];

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

  v17 = [signatureCopy objectForKey:@"Certificates"];
  v81 = v17;
  if (!v17)
  {
    sub_1000E1750();
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

  selfCopy = self;
  v79 = v15;
  v82 = optionsCopy;
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
        v58 = sub_100063A54();
        v95 = 0;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_1000E1514();
        }

        goto LABEL_92;
      }

      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v58 = sub_100063A54();
        v95 = v22;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_1000E1494();
        }

        goto LABEL_92;
      }

      if (![v21 count])
      {
        v58 = sub_100063A54();
        v95 = v22;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_1000E1414();
        }

        goto LABEL_92;
      }

      if ([v22 isEqualToString:@"UAT"])
      {
        v28 = [(MSDDemoManifestCheck *)selfCopy createPublicKeyForDevelopmentSigning:v21];
        v29 = @"Skip";
        if (!v28)
        {
          goto LABEL_90;
        }

        goto LABEL_26;
      }

      v30 = [(MSDDemoManifestCheck *)selfCopy createPublicKeyForStrongSigning:v21];
      if (!v30)
      {
        v28 = [(MSDDemoManifestCheck *)selfCopy createPublicKeyAppleISTSigning:v21];
        v29 = @"AppleISTCertCheck";
        if (v28)
        {
LABEL_26:
          v31 = v21;
          goto LABEL_27;
        }

LABEL_90:
        v97 = v29;
        v58 = sub_100063A54();
        v95 = v22;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_1000E1394();
        }

LABEL_92:
        v15 = v79;

        v34 = 0;
        v45 = 0;
        v40 = v97;
        optionsCopy = v82;
        goto LABEL_97;
      }

      v28 = v30;
      v31 = v21;
      v32 = [(MSDDemoManifestCheck *)selfCopy isManualSigning:v21];
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
  obj = keysCopy;
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
        v86 = [signatureCopy objectForKey:?];
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
            v44 = [signatureCopy objectForKey:v91];
            v45 = [v44 objectForKey:v43];

            v46 = [v45 objectForKey:@"Certificate"];
            v47 = [v92 objectForKey:v46];
            v48 = v47;
            if (!v47)
            {
              v69 = sub_100063A54();
              v34 = v94;
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_1000E167C();
              }

              goto LABEL_96;
            }

            v49 = [v47 objectForKey:@"TypeOfSignature"];

            v95 = v49;
            v34 = v94;
            if (((v88 | [v49 isEqualToString:@"UAT"] ^ 1) & 1) == 0)
            {
              v69 = sub_100063A54();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_1000E158C();
              }

              goto LABEL_95;
            }

            v50 = [(MSDDemoManifestCheck *)selfCopy getComponentData:v45];

            if (!v50)
            {
              v69 = sub_100063A54();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                sub_1000E160C();
              }

              v34 = 0;
LABEL_95:
              v42 = v95;
LABEL_96:
              optionsCopy = v82;
              v10 = v83;
              v15 = v79;

              v95 = v42;
              v21 = v75;
              goto LABEL_97;
            }

            v51 = [v48 objectForKey:@"publicKey"];
            v94 = v50;
            v52 = sub_1000559DC(kCFAllocatorDefault, v43, v50);
            v53 = [v45 objectForKey:@"Signature"];
            LODWORD(v51) = SecKeyVerifySignature(v51, kSecKeyAlgorithmRSASignatureDigestPKCS1v15SHA1, [NSData dataWithBytes:v52 length:20], v53, &error);
            free(v52);
            if (!v51)
            {
              v35 = v45;
              v70 = sub_100063A54();
              optionsCopy = v82;
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
            if (-[__CFString isEqualToString:](v40, "isEqualToString:", @"AppleISTCertCheck") && [v91 isEqualToString:@"Apps"] && !-[MSDDemoManifestCheck validateISTSignedApp:manifest:](selfCopy, "validateISTSignedApp:manifest:", v43, signatureCopy))
            {
              optionsCopy = v82;
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
  v55 = sub_100063A54();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    bOOLValue = [v84 BOOLValue];
    *buf = 136315650;
    v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    v118 = 1024;
    *v119 = v36 & 1;
    *&v119[4] = 1024;
    *&v119[6] = bOOLValue;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s: Overriding rigorous testing from %{BOOL}d to %{BOOL}d", buf, 0x18u);
  }

  if ([v84 BOOLValue])
  {
LABEL_64:
    optionsCopy = v82;
    v10 = v83;
    if ([(MSDDemoManifestCheck *)selfCopy secureManifestCheckForSegmentedManifest:signatureCopy options:v82])
    {
      goto LABEL_65;
    }

    sub_1000E16F4();
    v40 = v97;
    goto LABEL_97;
  }

LABEL_58:
  v57 = sub_100063A54();
  v10 = v83;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v117 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s: Skipping rigorous manifest testing.", buf, 0xCu);
  }

  optionsCopy = v82;
LABEL_65:
  if (![v10 BOOLValue])
  {
    goto LABEL_104;
  }

  blocklistedItems = [(MSDDemoManifestCheck *)selfCopy blocklistedItems];
  v60 = [blocklistedItems count];

  if (!v60)
  {
    v61 = sub_100063A54();
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
  v61 = signatureCopy;
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
        [(MSDDemoManifestCheck *)selfCopy removeBlocklistedItemFromSection:v68 withName:v67];
      }
    }

    v63 = [v61 countByEnumeratingWithState:&v98 objects:v115 count:16];
  }

  while (v63);
  optionsCopy = v82;
  v10 = v83;
  v21 = v76;
  v34 = v64;
LABEL_103:

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  v71 = signatureCopy;
  v40 = v97;
LABEL_107:

  return v71;
}

- (BOOL)checkFileForEntitlements:(id)entitlements forCorrespondingManifestEntry:(id)entry
{
  entitlementsCopy = entitlements;
  entryCopy = entry;
  itemBeingInstalled = [(MSDDemoManifestCheck *)self itemBeingInstalled];
  v9 = itemBeingInstalled;
  if (itemBeingInstalled)
  {
    v10 = [itemBeingInstalled objectForKey:@"TypeOfFiles"];
    segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v12 = [segmentedManifestWithRigorousFlag objectForKey:v10];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1000E17AC();
LABEL_27:
      v27 = v39;
      goto LABEL_11;
    }

    getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
    v14 = [v10 isEqualToString:getBackupSectionName];

    if (v14)
    {
      v36 = v10;
      v37 = v9;
      v38 = entitlementsCopy;
      v35 = [v9 objectForKey:@"Identifier"];
      rangeValue = [v35 rangeValue];
      v17 = v16;
      getInstallationOrder = [(MSDDemoManifestCheck *)self getInstallationOrder];
      v19 = rangeValue + v17 - 1;
      if ((rangeValue + v17 - 1) >= 0)
      {
        while (1)
        {
          v20 = [getInstallationOrder objectAtIndex:v19];
          v21 = [(MSDDemoManifestCheck *)self getBackupItemName:v20];

          v22 = [v12 objectForKey:v21];
          v23 = [v22 objectForKey:@"Manifest"];
          v24 = [(MSDDemoManifestCheck *)self getManifestData:v23];

          v25 = [v24 objectForKey:entryCopy];

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
        entitlementsCopy = v38;
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

        sub_1000E18FC();
        goto LABEL_27;
      }

LABEL_8:

      v9 = v37;
      entitlementsCopy = v38;
      v10 = v36;
    }

    else if (([v10 isEqualToString:@"ExtensionData"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"AppData") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"GroupData"))
    {
      v27 = [v9 objectForKey:@"Identifier"];
      v29 = [v12 objectForKey:v27];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        sub_1000E1850();
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

    v27 = sub_100063A54();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000E19A4();
    }

    goto LABEL_11;
  }

  v28 = 1;
LABEL_23:

  return v28;
}

- (__SecKey)createPublicKeyForStrongSigning:(id)signing
{
  signingCopy = signing;
  MobileStoreSigner = SecPolicyCreateMobileStoreSigner();
  v6 = sub_100063A54();
  v7 = v6;
  if (MobileStoreSigner)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Verifying strong signing", v10, 2u);
    }

    v8 = [(MSDDemoManifestCheck *)self createPublicKey:signingCopy usingPolicy:MobileStoreSigner anchors:0];
  }

  else
  {
    sub_1000E1A14(v6);
    v8 = 0;
  }

  return v8;
}

- (__SecKey)createPublicKeyForDevelopmentSigning:(id)signing
{
  signingCopy = signing;
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Verifying development signing", v8, 2u);
  }

  v6 = [(MSDDemoManifestCheck *)self createPublicKeyForDevelopmentSigningStandard:signingCopy];
  return v6;
}

- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)standard
{
  standardCopy = standard;
  TestMobileStoreSigner = SecPolicyCreateTestMobileStoreSigner();
  if (TestMobileStoreSigner)
  {
    v6 = [(MSDDemoManifestCheck *)self createPublicKey:standardCopy usingPolicy:TestMobileStoreSigner anchors:0];
  }

  else
  {
    sub_1000E1AA8();
    v6 = 0;
  }

  return v6;
}

- (__SecKey)createPublicKey:(id)key usingPolicy:(__SecPolicy *)policy anchors:(id)anchors
{
  keyCopy = key;
  anchorsCopy = anchors;
  trust[0] = 0;
  result = kSecTrustResultInvalid;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10009068C;
  v20 = sub_10009069C;
  v21 = 0;
  v9 = [NSMutableArray arrayWithCapacity:0];
  v10 = v17[5];
  v17[5] = v9;

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000906A4;
  v15[3] = &unk_10016BB10;
  v15[4] = &v16;
  [keyCopy enumerateObjectsUsingBlock:v15];
  v11 = v17[5];
  if (!v11)
  {
LABEL_14:
    v12 = 0;
    if (!policy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (SecTrustCreateWithCertificates(v11, policy, trust))
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E1B44();
LABEL_23:
    v13 = trust[1];
LABEL_13:

    goto LABEL_14;
  }

  if (anchorsCopy && SecTrustSetAnchorCertificates(trust[0], anchorsCopy))
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E1BE0();
    goto LABEL_23;
  }

  if (SecTrustEvaluate(trust[0], &result))
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E1C7C();
    goto LABEL_23;
  }

  if (result != kSecTrustResultProceed && result != kSecTrustResultUnspecified)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E1DA8(&result);
    }

    goto LABEL_13;
  }

  v12 = SecTrustCopyPublicKey(trust[0]);
  if (!v12)
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E1D18();
    goto LABEL_23;
  }

  if (policy)
  {
LABEL_15:
    CFRelease(policy);
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

- (BOOL)verifySignature:(id)signature forData:(id)data withKey:(__SecKey *)key
{
  dataCopy = data;
  signatureCopy = signature;
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000E1EEC(v9);
  }

  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  bytes = [dataCopy bytes];
  v12 = [dataCopy length];

  CC_SHA1(bytes, v12, v10);
  bytes2 = [signatureCopy bytes];
  v14 = [signatureCopy length];

  v15 = SecKeyRawVerify(key, 0x8002u, v10, 0x14uLL, bytes2, v14);
  free(v10);
  if (v15)
  {
    sub_1000E1F30(v15);
  }

  return v15 == 0;
}

- (BOOL)isManualSigning:(id)signing
{
  commonName = 0;
  v3 = [signing objectAtIndexedSubscript:0];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E206C();
    }

    goto LABEL_12;
  }

  v4 = SecCertificateCreateWithData(kCFAllocatorDefault, v3);
  if (!v4)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E1FEC();
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
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A certificate for manual signing is used.", buf, 2u);
    }

    v8 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A certificate for non-manual signing is used.", v11, 2u);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (BOOL)validateISTSignedApp:(id)app manifest:(id)manifest
{
  appCopy = app;
  v6 = [manifest objectForKey:@"Apps"];
  v7 = [v6 objectForKey:appCopy];

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
    sub_1000E20EC();
    v14 = 0;
  }

  return v14;
}

- (BOOL)secureManifestCheckForSegmentedManifest:(id)manifest options:(id)options
{
  manifestCopy = manifest;
  optionsCopy = options;
  if (!manifestCopy)
  {
    sub_1000E21E4();
LABEL_9:
    v11 = 0;
    goto LABEL_6;
  }

  allowedISTSignedComponents = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!allowedISTSignedComponents)
  {
    v9 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:manifestCopy];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v9];
  }

  [(MSDDemoManifestCheck *)self setSegmentedManifestWithRigorousFlag:manifestCopy];
  v10 = [manifestCopy objectForKey:@"Version"];
  -[MSDDemoManifestCheck setManifestVersion:](self, "setManifestVersion:", [v10 unsignedIntValue]);

  if (![(MSDDemoManifestCheck *)self runSecurityCheck:optionsCopy])
  {
    sub_1000E2148();
    goto LABEL_9;
  }

  [(MSDDemoManifestCheck *)self registerEntitlementNotificationHandler];
  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)runSecurityCheck:(id)check
{
  checkCopy = check;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  getSecurityCheckSectionNames = [(MSDDemoManifestCheck *)self getSecurityCheckSectionNames];
  getappIconLayoutBackupName = [(MSDDemoManifestCheck *)self getappIconLayoutBackupName];
  getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting rigorous security checks", buf, 2u);
  }

  segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090E74;
  v17[3] = &unk_10016BB60;
  v10 = getSecurityCheckSectionNames;
  v18 = v10;
  selfCopy = self;
  v23 = &v24;
  v11 = checkCopy;
  v20 = v11;
  v12 = getappIconLayoutBackupName;
  v21 = v12;
  v13 = getBackupSectionName;
  v22 = v13;
  [segmentedManifestWithRigorousFlag enumerateKeysAndObjectsUsingBlock:v17];

  if (v25[3])
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDDemoManifestCheck runSecurityCheck:]";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:Cleared all checks for manifest. Approving future installations", buf, 0xCu);
    }
  }

  else
  {
    sub_100063A54();
    objc_claimAutoreleasedReturnValue();
    sub_1000E2280();
    v14 = *buf;
  }

  v15 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v15 & 1;
}

- (BOOL)runSecurityChecksForSection:(id)section dataType:(id)type componentName:(id)name options:(id)options
{
  typeCopy = type;
  nameCopy = name;
  optionsCopy = options;
  sectionCopy = section;
  settingsComponentNames = [(MSDDemoManifestCheck *)self settingsComponentNames];
  v15 = [settingsComponentNames containsObject:nameCopy];

  if (v15)
  {
    v16 = [(MSDDemoManifestCheck *)self runSettingsSecurityCheckForSection:sectionCopy component:nameCopy];
  }

  else
  {
    v16 = [(MSDDemoManifestCheck *)self runFileSecurityChecksForSection:sectionCopy dataType:typeCopy options:optionsCopy];
  }

  v17 = v16;

  return v17;
}

- (BOOL)runSettingsSecurityCheckForSection:(id)section component:(id)component
{
  sectionCopy = section;
  componentCopy = component;
  if ([componentCopy isEqualToString:@"locale"])
  {
    v7 = [sectionCopy objectForKey:@"Data"];
    v8 = [v7 objectForKey:@"language"];

    if (!v8)
    {
      sub_1000E25DC();
      goto LABEL_14;
    }

    v9 = [v7 objectForKey:@"region"];

    if (!v9)
    {
      sub_1000E2538();
LABEL_14:

LABEL_10:
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (![componentCopy isEqualToString:@"display"])
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000E241C();
      }

      goto LABEL_10;
    }

    v7 = [sectionCopy objectForKey:@"Data"];
    v10 = [v7 objectForKey:@"HDR"];

    if (!v10)
    {
      sub_1000E248C();
      goto LABEL_11;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)runFileSecurityChecksForSection:(id)section dataType:(id)type options:(id)options
{
  sectionCopy = section;
  typeCopy = type;
  optionsCopy = options;
  v11 = [optionsCopy objectForKey:@"ExcludeBlocklistItem"];
  v12 = +[MSDPlatform sharedInstance];
  LODWORD(type) = [v12 macOS];

  v77 = typeCopy;
  if (type)
  {
    v13 = [sectionCopy objectForKey:@"Data"];
    whitelistChecker = [(MSDDemoManifestCheck *)self whitelistChecker];
    v15 = v13;
    v16 = [whitelistChecker checkManifest:v13];

    if ([v11 BOOLValue])
    {
      blocklistedItems = [(MSDDemoManifestCheck *)self blocklistedItems];
      [blocklistedItems addObjectsFromArray:v16];
    }

    else if (v16)
    {
      sub_1000E28C8(v16);
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
      v71 = optionsCopy;
      v73 = sectionCopy;
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
            v67 = sub_100063A54();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_1000E2858();
            }

            v33 = 0;
            typeCopy = v77;
            v11 = v69;
            optionsCopy = v71;
            sectionCopy = v73;
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

      typeCopy = v77;
      v11 = v69;
      optionsCopy = v71;
      sectionCopy = v73;
      v16 = v87;
    }

    v33 = 1;
    goto LABEL_70;
  }

  v76 = [NSSet setWithArray:&off_10017BE68];
  getBackupSectionName = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v19 = [(MSDDemoManifestCheck *)self getManifestData:sectionCopy];

  v75 = getBackupSectionName;
  selfCopy = self;
  if ([typeCopy isEqualToString:getBackupSectionName])
  {
    whitelistChecker2 = [(MSDDemoManifestCheck *)self whitelistChecker];
    v21 = [whitelistChecker2 checkManifest:v19];

    if ([v11 BOOLValue])
    {
      blocklistedItems2 = [(MSDDemoManifestCheck *)self blocklistedItems];
      [blocklistedItems2 addObjectsFromArray:v21];
    }

    else if (v21)
    {
      sub_1000E2680();
      v33 = 0;
      v15 = v76;
      sectionCopy = v19;
      goto LABEL_70;
    }
  }

  v70 = v11;
  v72 = optionsCopy;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  sectionCopy = v19;
  v80 = [sectionCopy countByEnumeratingWithState:&v97 objects:v107 count:16];
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
  v74 = sectionCopy;
  while (2)
  {
    v38 = 0;
    v39 = v15;
    do
    {
      if (*v98 != v79)
      {
        v40 = v38;
        objc_enumerationMutation(sectionCopy);
        v38 = v40;
      }

      v81 = v38;
      v41 = *(*(&v97 + 1) + 8 * v38);
      context = objc_autoreleasePoolPush();
      v88 = v41;
      v84 = [sectionCopy objectForKey:v41];
      v15 = [v84 valueForKey:@"MSDManifestFileAttributes"];

      if (!v15)
      {
        v65 = sub_100063A54();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1000E2858();
        }

        goto LABEL_63;
      }

      v42 = [v36 containsObject:typeCopy];
      v43 = [v15 valueForKey:@"NSFileType"];

      v83 = v43;
      v44 = [v43 isEqualToString:@"NSFileTypeRegular"];
      if (v42)
      {
        if ((v44 & 1) != 0 || ([v43 isEqualToString:@"NSFileTypeDirectory"]) && !-[MSDDemoManifestCheck isValidDataContainerFile:](selfCopy, "isValidDataContainerFile:", v88, v70, v72))
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
        v46 = selfCopy;
        allowedSymLinks = [(MSDDemoManifestCheck *)selfCopy allowedSymLinks];
        v48 = [allowedSymLinks countByEnumeratingWithState:&v93 objects:v106 count:16];
        if (!v48)
        {

          v34 = v45;
          v15 = v78;
LABEL_61:
          v65 = sub_100063A54();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v35 = v83;
            sub_1000E26F0();
            goto LABEL_63;
          }

LABEL_62:
          v35 = v83;
LABEL_63:
          v11 = v70;
          optionsCopy = v72;

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
              objc_enumerationMutation(allowedSymLinks);
            }

            v53 = *(*(&v93 + 1) + 8 * i);
            if ([v51 rangeOfString:{v53, v70, v72}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              allowedSymLinks2 = [(MSDDemoManifestCheck *)v46 allowedSymLinks];
              v55 = [allowedSymLinks2 objectForKey:v53];

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
                v46 = selfCopy;
                v51 = v88;
              }
            }
          }

          v49 = [allowedSymLinks countByEnumeratingWithState:&v93 objects:v106 count:16];
        }

        while (v49);

        v34 = v45;
        typeCopy = v77;
        v15 = v78;
        sectionCopy = v74;
        v37 = v75;
        v36 = v76;
        if ((v85 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v61 = [v15 valueForKey:{@"NSFilePosixPermissions", v70, v72}];
      longValue = [v61 longValue];

      if ((longValue & 0xC00) != 0)
      {
        v65 = sub_100063A54();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          sub_1000E276C();
        }

        goto LABEL_62;
      }

      if ([typeCopy isEqualToString:v37])
      {
        whitelistChecker3 = [(MSDDemoManifestCheck *)selfCopy whitelistChecker];
        v64 = [whitelistChecker3 handleSystemContainerFiles:v88 withMetadata:v84];

        if ((v64 & 1) == 0)
        {
          v65 = sub_100063A54();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            sub_1000E27E8();
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
    v80 = [sectionCopy countByEnumeratingWithState:&v97 objects:v107 count:16];
    if (v80)
    {
      continue;
    }

    break;
  }

LABEL_66:

  v33 = 1;
  v11 = v70;
  optionsCopy = v72;
LABEL_70:

  return v33;
}

- (BOOL)runAppLayoutSecurityCheck:(id)check
{
  checkCopy = check;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = +[MSDPlatform sharedInstance];
  macOS = [v7 macOS];

  v61 = v5;
  v62 = v6;
  if (macOS)
  {
    [v5 addObject:&off_10017B230];
    [v6 addObject:@"staff"];
    v63 = [NSSet setWithArray:&off_10017BE80];
    goto LABEL_11;
  }

  [v5 addObject:&off_10017B248];
  [v5 addObject:&off_10017B260];
  [v6 addObject:@"mobile"];
  [v6 addObject:@"wheel"];
  v9 = +[MSDPlatform sharedInstance];
  v10 = [v9 rOS];

  if (v10)
  {
    v11 = &off_10017BE98;
  }

  else
  {
    v12 = +[MSDPlatform sharedInstance];
    v13 = [v12 iOS];

    if (v13)
    {
      v11 = &off_10017BEB0;
    }

    else
    {
      v14 = +[MSDPlatform sharedInstance];
      tvOS = [v14 tvOS];

      if (!tvOS)
      {
        v16 = objc_alloc_init(NSSet);
        goto LABEL_10;
      }

      v11 = &off_10017BEC8;
    }
  }

  v16 = [NSSet setWithArray:v11];
LABEL_10:
  v63 = v16;
LABEL_11:
  v17 = [(MSDDemoManifestCheck *)self getManifestData:checkCopy];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = &IDSSendMessageOptionFireAndForgetKey_ptr;
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
        if (!v25 || (v26 = v22[148], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          sub_1000E29E0();
LABEL_105:
          v31 = 6;
          goto LABEL_95;
        }

        v27 = [v25 objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        if (v27)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v27 isEqualToString:&stru_10016D9D8] & 1) == 0)
          {
            sub_1000E292C(v24, v27, v25);
            goto LABEL_105;
          }
        }

        v28 = [v25 objectForKey:@"MSDManifestFileAttributes"];
        if (v28)
        {
          v29 = v22[148];
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

                                    v49 = sub_100063A54();
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
                                    v49 = sub_100063A54();
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

                                v36 = sub_100063A54();
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
                                v36 = sub_100063A54();
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

                            v36 = sub_100063A54();
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
                            v36 = sub_100063A54();
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

                        v35 = sub_100063A54();
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
                        v35 = sub_100063A54();
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

                    v35 = sub_100063A54();
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
                    v35 = sub_100063A54();
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

                v33 = sub_100063A54();
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
                v33 = sub_100063A54();
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
              v33 = sub_100063A54();
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

        v30 = sub_100063A54();
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
        v22 = &IDSSendMessageOptionFireAndForgetKey_ptr;
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
  v5[2] = sub_100092980;
  v5[3] = &unk_100169CE8;
  v5[4] = self;
  v4 = [v3 addObserverForName:@"CheckEntitlementsNotify" object:0 queue:0 usingBlock:v5];
}

- (id)getSecurityCheckSectionNames
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v2 = +[MSDPlatform sharedInstance];
    macOS = [v2 macOS];

    if (macOS)
    {
      v4 = &off_10017BEE0;
    }

    else
    {
      v4 = &off_10017BEF8;
    }
  }

  else
  {
    v4 = &off_10017BF10;
  }

  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (id)getManifestData:(id)data
{
  dataCopy = data;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [dataCopy objectForKey:@"Data" ofType:objc_opt_class()];
  }

  else
  {
    v5 = dataCopy;
  }

  v6 = v5;

  return v6;
}

- (id)getComponentData:(id)data
{
  dataCopy = data;
  v4 = @"Manifest";
  v5 = [dataCopy objectForKey:@"Manifest"];

  if (v5 || (v4 = @"Settings", [dataCopy objectForKey:@"Settings"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [dataCopy objectForKey:v4 ofType:objc_opt_class()];
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
  macOS = [v2 macOS];

  if (macOS)
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
    segmentedManifestWithRigorousFlag = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    segmentedManifestWithRigorousFlag2 = [segmentedManifestWithRigorousFlag objectForKey:@"InstallationOrder"];

    v6 = [segmentedManifestWithRigorousFlag2 objectForKey:@"CriticalComponents"];
    if (v6)
    {
      [v3 addObjectsFromArray:v6];
    }

    v7 = [segmentedManifestWithRigorousFlag2 objectForKey:@"Components"];
    if (v7)
    {
      [v3 addObjectsFromArray:v7];
    }
  }

  else
  {
    segmentedManifestWithRigorousFlag2 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v3 = [segmentedManifestWithRigorousFlag2 objectForKey:@"InstallationOrder"];
  }

  return v3;
}

- (id)getBackupItemName:(id)name
{
  nameCopy = name;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [nameCopy substringFromIndex:{objc_msgSend(@"/BackupData/", "length")}];
  }

  else
  {
    v5 = nameCopy;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isValidDataContainerFile:(id)file
{
  fileCopy = file;
  pathComponents = [fileCopy pathComponents];
  v5 = pathComponents;
  if (pathComponents)
  {
    if ([pathComponents count])
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
            v14 = sub_100063A54();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_1000E2A84();
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
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000E2AF4();
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

  v6 = [NSSet setWithArray:&off_10017BF28];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.carrier"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_1.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_2.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.merged.plist"];
  v7 = [NSSet setWithObject:@"/var/db/timezone/zoneinfo"];
  [v2 setObject:v7 forKey:@"/var/db/timezone/localtime"];

  v8 = [NSSet setWithArray:&off_10017BF40];
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

- (id)getAllowedISTSignedComponents:(id)components
{
  componentsCopy = components;
  v5 = +[NSMutableSet set];
  v6 = [NSString stringWithFormat:@"%@.%@", @"BackupData", @"appIconLayout"];
  v12[0] = v6;
  v7 = [NSString stringWithFormat:@"%@.%@", @"BackupData", @"dockLayout"];
  v12[1] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:2];

  v9 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponentsFromManifest:componentsCopy];

  [v5 addObjectsFromArray:v8];
  [v5 addObjectsFromArray:v9];
  v10 = [NSSet setWithSet:v5];

  return v10;
}

- (id)getAllowedISTSignedComponentsFromManifest:(id)manifest
{
  manifestCopy = manifest;
  v4 = +[NSMutableArray array];
  [v4 addObject:@"com.apple.ist.DigitalCatalog"];
  [v4 addObject:@"com.apple.ist.demoloop"];
  [v4 addObject:@"com.apple.ist.windward"];
  [v4 addObject:@"com.apple.ist.DemoDiscoveryApp"];
  [v4 addObject:@"com.apple.ist.DigitalSignage.iOS"];
  [v4 addObject:@"com.retailtech.arkenstone"];
  v5 = +[NSMutableArray array];
  v24 = manifestCopy;
  v27 = [manifestCopy objectForKeyedSubscript:@"Apps"];
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

- (void)removeBlocklistedItemFromSection:(id)section withName:(id)name
{
  sectionCopy = section;
  nameCopy = name;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = [sectionCopy countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v59;
    v11 = &IDSSendMessageOptionFireAndForgetKey_ptr;
    selfCopy = self;
    v38 = sectionCopy;
    v35 = *v59;
    v36 = nameCopy;
    do
    {
      v12 = 0;
      v39 = v9;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(sectionCopy);
        }

        v13 = v11[154];
        v43 = *(*(&v58 + 1) + 8 * v12);
        v14 = [sectionCopy objectForKey:v43 ofType:objc_opt_class()];
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
              nameCopy = v36;
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
                    v34 = sub_100063A54();
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

              self = selfCopy;
              sectionCopy = v38;
              v10 = v35;
              v11 = &IDSSendMessageOptionFireAndForgetKey_ptr;
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
      v9 = [sectionCopy countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v9);
  }
}

- (__SecKey)createPublicKeyAppleISTSigning:(id)signing
{
  signingCopy = signing;
  commonName = 0;
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Verifying AppleIST certificate\n", buf, 2u);
  }

  DemoDigitalCatalogSigning = SecPolicyCreateDemoDigitalCatalogSigning();
  if (!DemoDigitalCatalogSigning)
  {
    v27 = sub_100063A54();
    if (sub_100018978(v27))
    {
      *buf = 136315138;
      v53 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      sub_10005F09C();
LABEL_38:
      _os_log_error_impl(v28, v29, v30, v31, v32, v33);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v8 = DemoDigitalCatalogSigning;
  if ([signingCopy count] != 2)
  {
    v34 = sub_100063A54();
    if (sub_100018978(v34))
    {
      *buf = 0;
LABEL_37:
      sub_100093CA4();
      goto LABEL_38;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_35;
  }

  v9 = [signingCopy objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v3 = [signingCopy objectAtIndex:0];
  bytes = [(__CFString *)v3 bytes];
  v12 = [signingCopy objectAtIndex:0];
  v13 = CFDataCreate(kCFAllocatorDefault, bytes, [v12 length]);

  if (!v13)
  {
    v35 = sub_100063A54();
    if (!sub_100018978(v35))
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
    v36 = sub_100063A54();
    if (sub_100018978(v36))
    {
      *buf = 138543362;
      v53 = v14;
      sub_10005F09C();
LABEL_28:
      _os_log_error_impl(v37, v38, v39, v40, v41, v42);
    }

LABEL_35:
    v24 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v16 = [signingCopy objectAtIndex:1];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
LABEL_21:
    v24 = 0;
    v25 = 0;
    goto LABEL_15;
  }

  v18 = [signingCopy objectAtIndex:1];
  bytes2 = [v18 bytes];
  v20 = [signingCopy objectAtIndex:1];
  v3 = CFDataCreate(kCFAllocatorDefault, bytes2, [v20 length]);

  if (!v3)
  {
    v43 = sub_100063A54();
    if (sub_100018978(v43))
    {
      *buf = 0;
      sub_100093CA4();
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v21 = SecCertificateCreateWithData(kCFAllocatorDefault, v3);
  SecCertificateCopyCommonName(v21, &commonName);
  v3 = commonName;
  if (([(__CFString *)v3 isEqualToString:@"DemoUnit CA"]& 1) == 0)
  {
    v44 = sub_100063A54();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v53 = commonName;
      goto LABEL_40;
    }

LABEL_34:

    goto LABEL_35;
  }

  v22 = CFDataCreate(kCFAllocatorDefault, byte_1001A4CB8, dword_1001A5040);
  if (!v22)
  {
    v44 = sub_100063A54();
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
    v44 = sub_100063A54();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v53 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
LABEL_40:
    sub_10005F09C();
    _os_log_error_impl(v45, v46, v47, v48, v49, v50);
    goto LABEL_34;
  }

  v24 = [NSArray arrayWithObjects:v23, 0];
  v25 = [(MSDDemoManifestCheck *)self createPublicKey:signingCopy usingPolicy:v8 anchors:v24];
LABEL_14:

LABEL_15:
  return v25;
}

@end