@interface SecDbKeychainItemV7
+ (id)decryptionOperation;
+ (id)encryptionOperation;
+ (id)keySpecifier;
- (SecDbKeychainItemV7)initWithData:(id)data decryptionKeybag:(int)keybag error:(id *)error;
- (SecDbKeychainItemV7)initWithSecretAttributes:(id)attributes metadataAttributes:(id)metadataAttributes tamperCheck:(id)check keyclass:(int)keyclass;
- (id)metadataAttributesWithError:(id *)error;
- (id)unwrapFromAKS:(id)s accessControl:(__SecAccessControl *)control acmContext:(id)context callerAccessGroups:(id)groups delete:(BOOL)delete keyDiversify:(BOOL)diversify error:(id *)error;
@end

@implementation SecDbKeychainItemV7

- (SecDbKeychainItemV7)initWithData:(id)data decryptionKeybag:(int)keybag error:(id *)error
{
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = SecDbKeychainItemV7;
  v9 = [(SecDbKeychainItemV7 *)&v26 init];
  if (v9)
  {
    v10 = [[SecDbKeychainSerializedItemV7 alloc] initWithData:dataCopy];
    if (!v10)
    {
      goto LABEL_8;
    }

    if ([dataCopy length] >= 0x959A)
    {
      v11 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [dataCopy length];
        *buf = 134217984;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: serialized item exceeds reasonable size (%lu bytes)", buf, 0xCu);
      }
    }

    v9->_keybag = keybag;
    v13 = [SecDbKeychainSecretData alloc];
    encryptedSecretData = [(SecDbKeychainSerializedItemV7 *)v10 encryptedSecretData];
    v15 = [(SecDbKeychainSecretData *)v13 initWithData:encryptedSecretData];
    encryptedSecretData = v9->_encryptedSecretData;
    v9->_encryptedSecretData = v15;

    v17 = [SecDbKeychainMetadata alloc];
    encryptedMetadata = [(SecDbKeychainSerializedItemV7 *)v10 encryptedMetadata];
    v19 = [(SecDbKeychainMetadata *)v17 initWithData:encryptedMetadata];
    encryptedMetadata = v9->_encryptedMetadata;
    v9->_encryptedMetadata = v19;

    v9->_keyclass = [(SecDbKeychainSerializedItemV7 *)v10 keyclass];
    tamperCheck = [(SecDbKeychainSecretData *)v9->_encryptedSecretData tamperCheck];
    tamperCheck2 = [(SecDbKeychainMetadata *)v9->_encryptedMetadata tamperCheck];
    v23 = [tamperCheck isEqualToString:tamperCheck2];

    if ((v23 & 1) == 0)
    {
LABEL_8:

      v9 = 0;
    }
  }

  if (error && !v9)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"failed to deserialize keychain item blob";
    v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-26275 userInfo:v24];
  }

  return v9;
}

- (SecDbKeychainItemV7)initWithSecretAttributes:(id)attributes metadataAttributes:(id)metadataAttributes tamperCheck:(id)check keyclass:(int)keyclass
{
  attributesCopy = attributes;
  metadataAttributesCopy = metadataAttributes;
  checkCopy = check;
  if (!checkCopy)
  {
    sub_100040CD0(a2, self);
  }

  v22.receiver = self;
  v22.super_class = SecDbKeychainItemV7;
  v14 = [(SecDbKeychainItemV7 *)&v22 init];
  if (v14)
  {
    if (attributesCopy)
    {
      v15 = [attributesCopy copy];
    }

    else
    {
      v15 = +[NSDictionary dictionary];
    }

    secretAttributes = v14->_secretAttributes;
    v14->_secretAttributes = v15;

    if (metadataAttributesCopy)
    {
      v17 = [metadataAttributesCopy copy];
    }

    else
    {
      v17 = +[NSDictionary dictionary];
    }

    metadataAttributes = v14->_metadataAttributes;
    v14->_metadataAttributes = v17;

    v19 = [checkCopy copy];
    tamperCheck = v14->_tamperCheck;
    v14->_tamperCheck = v19;

    v14->_keyclass = keyclass;
  }

  return v14;
}

+ (id)keySpecifier
{
  if (qword_100073888 != -1)
  {
    sub_100040D4C();
  }

  v3 = qword_100073880;

  return v3;
}

+ (id)encryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D74C;
  block[3] = &unk_10005A068;
  block[4] = self;
  if (qword_100073898 != -1)
  {
    dispatch_once(&qword_100073898, block);
  }

  v2 = qword_100073890;

  return v2;
}

+ (id)decryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D864;
  block[3] = &unk_10005A068;
  block[4] = self;
  if (qword_1000738A8 != -1)
  {
    dispatch_once(&qword_1000738A8, block);
  }

  v2 = qword_1000738A0;

  return v2;
}

- (id)metadataAttributesWithError:(id *)error
{
  p_metadataAttributes = &self->_metadataAttributes;
  metadataAttributes = self->_metadataAttributes;
  if (metadataAttributes)
  {
    goto LABEL_26;
  }

  v7 = [(SecDbKeychainItemV7 *)self metadataClassKeyWithKeybag:self->_keybag allowWrites:0 error:error];
  if (v7)
  {
    decryptionOperation = [objc_opt_class() decryptionOperation];
    wrappedKey = [(SecDbKeychainMetadata *)self->_encryptedMetadata wrappedKey];
    v35 = 0;
    v10 = [decryptionOperation decrypt:wrappedKey withKey:v7 error:&v35];
    v11 = v35;

    if (v10)
    {
      v12 = [_SFAESKey alloc];
      keySpecifier = [objc_opt_class() keySpecifier];
      v14 = [v12 initWithData:v10 specifier:keySpecifier error:error];

      if (v14)
      {
        decryptionOperation2 = [objc_opt_class() decryptionOperation];
        ciphertext = [(SecDbKeychainMetadata *)self->_encryptedMetadata ciphertext];
        v34 = v11;
        v17 = [decryptionOperation2 decrypt:ciphertext withKey:v14 error:&v34];
        v33 = v34;

        if (v17)
        {
          v32 = v17;
          v18 = sub_10002DD28(v17);
          v19 = [v18 mutableCopy];

          v20 = [v19 objectForKeyedSubscript:@"TamperCheck"];
          tamperCheck = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
          v22 = v20;
          LODWORD(v20) = [v20 isEqualToString:tamperCheck];

          if (v20)
          {
            [v19 removeObjectForKey:@"TamperCheck"];
            objc_storeStrong(p_metadataAttributes, v19);
          }

          else
          {
            v29 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              tamperCheck2 = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
              *buf = 138412546;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *v37 = tamperCheck2;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: tamper check failed for metadata decryption, expected %@ found %@", buf, 0x16u);
            }

            if (error)
            {
              *buf = 0;
              SecError(-26275, buf, @"tamper check failed for metadata decryption");
              *error = *buf;
            }
          }

          v17 = v32;
          v28 = v33;
        }

        else
        {
          v27 = secLogObjForScope("SecError");
          v28 = v33;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error decrypting metadata content: %@", buf, 0xCu);
          }

          if (error)
          {
            *buf = v33;
            SecError(-26275, buf, @"failed to decrypt item metadata contents");
            *error = *buf;
          }
        }

        if (v17)
        {
          goto LABEL_25;
        }

LABEL_14:

        v26 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v23 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        keyclass = [(SecDbKeychainItemV7 *)self keyclass];
        keybag = self->_keybag;
        *buf = 67109634;
        *&buf[4] = keyclass;
        *&buf[8] = 1024;
        *&buf[10] = keybag;
        *v37 = 2112;
        *&v37[2] = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error unwrapping item metadata key (class %d, bag %d): %@", buf, 0x18u);
      }

      if (error)
      {
        *buf = v11;
        SecError(-26275, buf, @"failed to unwrap item metadata key");
        *error = *buf;
      }
    }

    goto LABEL_14;
  }

LABEL_25:

  metadataAttributes = *p_metadataAttributes;
LABEL_26:
  v26 = metadataAttributes;
LABEL_27:

  return v26;
}

- (id)unwrapFromAKS:(id)s accessControl:(__SecAccessControl *)control acmContext:(id)context callerAccessGroups:(id)groups delete:(BOOL)delete keyDiversify:(BOOL)diversify error:(id *)error
{
  diversifyCopy = diversify;
  errorCopy2 = error;
  sCopy = s;
  contextCopy = context;
  groupsCopy = groups;
  wrappedKey = [sCopy wrappedKey];
  if (diversifyCopy)
  {
    v18 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrMultiUser];
    if (sub_1000295F0(v18))
    {
      bytes = [v18 bytes];
      v20 = [v18 length];
      v21 = secLogObjForScope("KeyDiversify");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100040DD8(v18, v21);
      }
    }

    else
    {
      v20 = 0;
      bytes = 0;
    }

    errorCopy2 = error;
  }

  else
  {
    v20 = 0;
    bytes = 0;
  }

  if (![sCopy type])
  {
    v47 = [NSMutableData dataWithLength:32];
    if ([SecAKSObjCWrappers aksDecryptWithKeybag:self->_keybag keyclass:self->_keyclass ciphertext:wrappedKey outKeyclass:&self->_keyclass plaintext:v47 personaId:bytes personaIdLength:v20 error:errorCopy2])
    {
      v48 = [_SFAESKey alloc];
      keySpecifier = [objc_opt_class() keySpecifier];
      v26 = [v48 initWithData:v47 specifier:keySpecifier error:errorCopy2];
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_23;
  }

  if ([sCopy type] != 1)
  {
    goto LABEL_22;
  }

  v75 = errorCopy2;
  v87 = 0;
  keybag = self->_keybag;
  refKeyBlob = [sCopy refKeyBlob];
  bytes2 = [refKeyBlob bytes];
  [sCopy refKeyBlob];
  v25 = v76 = contextCopy;
  LODWORD(keybag) = aks_ref_key_create_with_blob(keybag, bytes2, [v25 length], &v87);

  contextCopy = v76;
  v26 = 0;
  if (keybag)
  {
    goto LABEL_23;
  }

  v86 = 0;
  v85 = 0;
  external_data = aks_ref_key_get_external_data(v87, &v85);
  if (!external_data)
  {
    aks_ref_key_free(&v87);
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  theDict = 0;
  der_decode_plist(0, &theDict, &v86, external_data, external_data + v85, v28, v29, v30);
  v31 = theDict;
  if (!theDict)
  {
    SecError(-26275, &v86, @"SecDbKeychainItemV7: failed to decode acl dict");
    v31 = theDict;
  }

  CFDictionaryGetValue(v31, @"acl");
  SecAccessControlSetConstraints();
  if (groupsCopy)
  {
    v38 = der_sizeof_plist(groupsCopy, &v86, v32, v33, v34, v35, v36, v37);
    v39 = [[NSMutableData alloc] initWithLength:v38];
    mutableBytes = [v39 mutableBytes];
    mutableBytes2 = [v39 mutableBytes];
    v42 = mutableBytes;
    contextCopy = v76;
    der_encode_plist(groupsCopy, &v86, v42, mutableBytes2 + v38, v43, v44, v45, v46);
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v82 = 0;
  v83 = 0;
  v51 = aks_params_create();
  v26 = v51;
  v81 = v51;
  if (v51)
  {
    if (bytes)
    {
      aks_params_set_data(v51, 15, bytes, v20);
      v26 = v81;
    }

    v52 = v39;
    aks_params_set_data(v26, 1, [v39 bytes], v38);
    aks_params_set_data(v81, 3, [v76 bytes], objc_msgSend(v76, "length"));
    aks_params_get_der(v81, &v83, &v82);
    v79 = 0;
    v80 = 0;
    v53 = aks_ref_key_decrypt(v87, v83, v82, [wrappedKey bytes], objc_msgSend(wrappedKey, "length"), &v80, &v79);
    if (v53)
    {
      v57 = v53;
      contextCopy = v76;
      if (v76 || v53 != -536363000)
      {
        v69 = SecAccessControlCopyData();
        sub_100011D68(v57, @"od", 0, 0, v69, v76, &v86);
        if (v69)
        {
          CFRelease(v69);
        }
      }

      else
      {
        sub_100011A30(&v86, 0);
      }

      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      aks_params_free(&v81);
      v70 = v86;
      if (v75)
      {
        v26 = 0;
        *v75 = v86;
        v86 = 0;
      }

      else
      {
        if (v86)
        {
          v86 = 0;
          CFRelease(v70);
        }

        v26 = 0;
      }

      goto LABEL_73;
    }

    if (!v80)
    {
      SecError(-26275, &v86, @"SecDbKeychainItemV7: failed to decrypt item, Item can't be decrypted due to failed decode der, so drop the item.");
      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      aks_params_free(&v81);
      v71 = v86;
      if (v75)
      {
        v26 = 0;
        *v75 = v86;
        v86 = 0;
        contextCopy = v76;
      }

      else
      {
        contextCopy = v76;
        if (v86)
        {
          v86 = 0;
          CFRelease(v71);
        }

        v26 = 0;
      }

      goto LABEL_73;
    }

    cf = 0;
    der_decode_plist(0, &cf, &v86, v80, v80 + v79, v54, v55, v56);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [_SFAESKey alloc];
      v59 = cf;
      keySpecifier2 = [objc_opt_class() keySpecifier];
      v61 = [v58 initWithData:v59 specifier:keySpecifier2 error:v75];

      v62 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v62);
      }

      contextCopy = v76;
      if (!delete || (v63 = aks_ref_key_delete(), !v63))
      {
        v74 = v86;
        if (v75)
        {
          *v75 = v86;
          v86 = 0;
          v39 = v52;
        }

        else
        {
          v39 = v52;
          if (v86)
          {
            v86 = 0;
            CFRelease(v74);
          }
        }

        aks_ref_key_free(&v87);
        free(v83);
        v83 = 0;
        free(v80);
        v80 = 0;
        aks_params_free(&v81);
        v61 = v61;
        v26 = v61;
        goto LABEL_72;
      }

      v64 = v63;
      v65 = SecAccessControlCopyData();
      sub_100011D68(v64, @"odel", 0, 0, v65, v76, &v86);
      if (v65)
      {
        CFRelease(v65);
      }

      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      free(v80);
      v80 = 0;
      aks_params_free(&v81);
      v66 = v86;
      v67 = v75;
      if (v75)
      {
        v68 = v86;
LABEL_58:
        v26 = 0;
        *v67 = v68;
        v86 = 0;
LABEL_68:
        v39 = v52;
LABEL_72:

        goto LABEL_73;
      }

      if (v86)
      {
        v86 = 0;
        CFRelease(v66);
      }
    }

    else
    {
      SecError(-26275, &v86, @"SecDbKeychainItemV7: failed to decrypt item, Item can't be decrypted due to failed decode der, so drop the item.");
      v72 = cf;
      v67 = v75;
      if (cf)
      {
        cf = 0;
        CFRelease(v72);
      }

      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      free(v80);
      v80 = 0;
      aks_params_free(&v81);
      v73 = v86;
      contextCopy = v76;
      if (v75)
      {
        v68 = v86;
        v61 = 0;
        goto LABEL_58;
      }

      if (v86)
      {
        v86 = 0;
        CFRelease(v73);
      }

      v61 = 0;
    }

    v26 = 0;
    goto LABEL_68;
  }

  aks_ref_key_free(&v87);
LABEL_73:

LABEL_23:

  return v26;
}

@end