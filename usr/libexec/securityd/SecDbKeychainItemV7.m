@interface SecDbKeychainItemV7
+ (id)decryptionOperation;
+ (id)encryptionOperation;
+ (id)keySpecifier;
- (SecDbKeychainItemV7)initWithData:(id)a3 decryptionKeybag:(int)a4 error:(id *)a5;
- (SecDbKeychainItemV7)initWithSecretAttributes:(id)a3 metadataAttributes:(id)a4 tamperCheck:(id)a5 keyclass:(int)a6;
- (id)metadataAttributesWithError:(id *)a3;
- (id)unwrapFromAKS:(id)a3 accessControl:(__SecAccessControl *)a4 acmContext:(id)a5 callerAccessGroups:(id)a6 delete:(BOOL)a7 keyDiversify:(BOOL)a8 error:(id *)a9;
@end

@implementation SecDbKeychainItemV7

+ (id)decryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161C58;
  block[3] = &unk_100346E68;
  block[4] = a1;
  if (qword_10039DF88 != -1)
  {
    dispatch_once(&qword_10039DF88, block);
  }

  v2 = qword_10039DF80;

  return v2;
}

+ (id)keySpecifier
{
  if (qword_10039DF68 != -1)
  {
    dispatch_once(&qword_10039DF68, &stru_100338758);
  }

  v3 = qword_10039DF60;

  return v3;
}

+ (id)encryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161CD0;
  block[3] = &unk_100346E68;
  block[4] = a1;
  if (qword_10039DF78 != -1)
  {
    dispatch_once(&qword_10039DF78, block);
  }

  v2 = qword_10039DF70;

  return v2;
}

- (id)unwrapFromAKS:(id)a3 accessControl:(__SecAccessControl *)a4 acmContext:(id)a5 callerAccessGroups:(id)a6 delete:(BOOL)a7 keyDiversify:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = [v13 wrappedKey];
  if (v9)
  {
    v17 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrMultiUser];
    if (sub_100013E34(v17))
    {
      v18 = [v17 bytes];
      v43 = [v17 length];
      v19 = sub_100006274("KeyDiversify");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "unwrapFromAKS: Key diversification feature persona(musr) %@ is data separated", buf, 0xCu);
      }
    }

    else
    {
      v43 = 0;
      v18 = 0;
    }
  }

  else
  {
    v43 = 0;
    v18 = 0;
  }

  if (![v13 type])
  {
    v25 = [NSMutableData dataWithLength:32];
    if (![SecAKSObjCWrappers aksDecryptWithKeybag:self->_keybag keyclass:self->_keyclass ciphertext:v16 outKeyclass:&self->_keyclass plaintext:v25 personaId:v18 personaIdLength:v43 error:a9])
    {
      v23 = 0;
      goto LABEL_21;
    }

    v34 = [_SFAESKey alloc];
    v30 = [objc_opt_class() keySpecifier];
    v23 = [v34 initWithData:v25 specifier:v30 error:a9];
    goto LABEL_19;
  }

  if ([v13 type] == 1)
  {
    *buf = 0;
    keybag = self->_keybag;
    v21 = [v13 refKeyBlob];
    [v21 bytes];
    [v13 refKeyBlob];
    v22 = v42 = v14;
    [v22 length];
    LODWORD(keybag) = aks_ref_key_create_with_blob();

    v14 = v42;
    v23 = 0;
    if (keybag)
    {
      goto LABEL_24;
    }

    v51 = 0;
    v50 = 0;
    external_data = aks_ref_key_get_external_data();
    if (external_data)
    {
      theDict = 0;
      sub_1000068E0(0, &theDict, &v51, external_data, external_data + v50);
      v25 = theDict;
      if (!theDict)
      {
        sub_1000103CC(-26275, &v51, @"SecDbKeychainItemV7: failed to decode acl dict");
      }

      CFDictionaryGetValue(v25, @"acl");
      SecAccessControlSetConstraints();
      if (v15)
      {
        v29 = sub_10000E384(v15, &v51, v26, v27, v28);
        v30 = [[NSMutableData alloc] initWithLength:v29];
        v31 = [v30 mutableBytes];
        v32 = [v30 mutableBytes];
        v33 = v31;
        v14 = v42;
        sub_10000E614(v15, &v51, 0, v33, v32 + v29);
      }

      else
      {
        v30 = 0;
      }

      v47 = 0;
      v48 = 0;
      v23 = aks_params_create();
      v46 = v23;
      if (v23)
      {
        if (v18)
        {
          aks_params_set_data();
        }

        v36 = v30;
        [v30 bytes];
        aks_params_set_data();
        [v42 bytes];
        [v42 length];
        aks_params_set_data();
        aks_params_get_der();
        v44 = 0;
        v45 = 0;
        [v16 bytes];
        [v16 length];
        v37 = aks_ref_key_decrypt();
        if (v37)
        {
          v38 = v37;
          v14 = v42;
          v39 = a9;
          if (v42 || v37 != -536363000)
          {
            v40 = SecAccessControlCopyData();
            sub_100193860(v38, @"od", 0, 0, v40, v42, &v51);
            if (v40)
            {
              CFRelease(v40);
            }
          }

          else
          {
            sub_1001935E8(&v51, 0);
          }

          aks_ref_key_free();
          free(v48);
          v48 = 0;
          aks_params_free();
          v41 = v51;
          if (a9)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v39 = a9;
          sub_1000103CC(-26275, &v51, @"SecDbKeychainItemV7: failed to decrypt item, Item can't be decrypted due to failed decode der, so drop the item.");
          aks_ref_key_free();
          free(v48);
          v48 = 0;
          aks_params_free();
          v41 = v51;
          v14 = v42;
          if (a9)
          {
LABEL_40:
            v23 = 0;
            *v39 = v41;
            v51 = 0;
LABEL_45:
            v30 = v36;
            v25 = theDict;
            goto LABEL_19;
          }
        }

        if (v41)
        {
          v51 = 0;
          CFRelease(v41);
        }

        v23 = 0;
        goto LABEL_45;
      }

      aks_ref_key_free();
LABEL_19:

LABEL_21:
      goto LABEL_24;
    }

    aks_ref_key_free();
  }

  v23 = 0;
LABEL_24:

  return v23;
}

- (id)metadataAttributesWithError:(id *)a3
{
  p_metadataAttributes = &self->_metadataAttributes;
  metadataAttributes = self->_metadataAttributes;
  if (metadataAttributes)
  {
    goto LABEL_26;
  }

  v7 = [(SecDbKeychainItemV7 *)self metadataClassKeyWithKeybag:self->_keybag allowWrites:0 error:a3];
  if (v7)
  {
    v8 = [objc_opt_class() decryptionOperation];
    v9 = [(SecDbKeychainMetadata *)self->_encryptedMetadata wrappedKey];
    v35 = 0;
    v10 = [v8 decrypt:v9 withKey:v7 error:&v35];
    v11 = v35;

    if (v10)
    {
      v12 = [_SFAESKey alloc];
      v13 = [objc_opt_class() keySpecifier];
      v14 = [v12 initWithData:v10 specifier:v13 error:a3];

      if (v14)
      {
        v15 = [objc_opt_class() decryptionOperation];
        v16 = [(SecDbKeychainMetadata *)self->_encryptedMetadata ciphertext];
        v34 = v11;
        v17 = [v15 decrypt:v16 withKey:v14 error:&v34];
        v33 = v34;

        if (v17)
        {
          v32 = v17;
          v18 = sub_10000DA84(v17);
          v19 = [v18 mutableCopy];

          v20 = [v19 objectForKeyedSubscript:@"TamperCheck"];
          v21 = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
          v22 = v20;
          LODWORD(v20) = [v20 isEqualToString:v21];

          if (v20)
          {
            [v19 removeObjectForKey:@"TamperCheck"];
            objc_storeStrong(p_metadataAttributes, v19);
          }

          else
          {
            v29 = sub_100006274("SecError");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
              *buf = 138412546;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *v37 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: tamper check failed for metadata decryption, expected %@ found %@", buf, 0x16u);
            }

            if (a3)
            {
              *buf = 0;
              sub_1000103CC(-26275, buf, @"tamper check failed for metadata decryption");
              *a3 = *buf;
            }
          }

          v17 = v32;
          v28 = v33;
        }

        else
        {
          v27 = sub_100006274("SecError");
          v28 = v33;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error decrypting metadata content: %@", buf, 0xCu);
          }

          if (a3)
          {
            *buf = v33;
            sub_1000103CC(-26275, buf, @"failed to decrypt item metadata contents");
            *a3 = *buf;
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
      v23 = sub_100006274("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(SecDbKeychainItemV7 *)self keyclass];
        keybag = self->_keybag;
        *buf = 67109634;
        *&buf[4] = v24;
        *&buf[8] = 1024;
        *&buf[10] = keybag;
        *v37 = 2112;
        *&v37[2] = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error unwrapping item metadata key (class %d, bag %d): %@", buf, 0x18u);
      }

      if (a3)
      {
        *buf = v11;
        sub_1000103CC(-26275, buf, @"failed to unwrap item metadata key");
        *a3 = *buf;
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

- (SecDbKeychainItemV7)initWithSecretAttributes:(id)a3 metadataAttributes:(id)a4 tamperCheck:(id)a5 keyclass:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v13)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SecDbKeychainItemV7.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"tamperCheck"}];
  }

  v23.receiver = self;
  v23.super_class = SecDbKeychainItemV7;
  v14 = [(SecDbKeychainItemV7 *)&v23 init];
  if (v14)
  {
    if (v11)
    {
      v15 = [v11 copy];
    }

    else
    {
      v15 = +[NSDictionary dictionary];
    }

    secretAttributes = v14->_secretAttributes;
    v14->_secretAttributes = v15;

    if (v12)
    {
      v17 = [v12 copy];
    }

    else
    {
      v17 = +[NSDictionary dictionary];
    }

    metadataAttributes = v14->_metadataAttributes;
    v14->_metadataAttributes = v17;

    v19 = [v13 copy];
    tamperCheck = v14->_tamperCheck;
    v14->_tamperCheck = v19;

    v14->_keyclass = a6;
  }

  return v14;
}

- (SecDbKeychainItemV7)initWithData:(id)a3 decryptionKeybag:(int)a4 error:(id *)a5
{
  v8 = a3;
  v26.receiver = self;
  v26.super_class = SecDbKeychainItemV7;
  v9 = [(SecDbKeychainItemV7 *)&v26 init];
  if (v9)
  {
    v10 = [[SecDbKeychainSerializedItemV7 alloc] initWithData:v8];
    if (!v10)
    {
      goto LABEL_8;
    }

    if ([v8 length] >= 0x959A)
    {
      v11 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v8 length];
        *buf = 134217984;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: serialized item exceeds reasonable size (%lu bytes)", buf, 0xCu);
      }
    }

    v9->_keybag = a4;
    v13 = [SecDbKeychainSecretData alloc];
    v14 = [(SecDbKeychainSerializedItemV7 *)v10 encryptedSecretData];
    v15 = [(SecDbKeychainSecretData *)v13 initWithData:v14];
    encryptedSecretData = v9->_encryptedSecretData;
    v9->_encryptedSecretData = v15;

    v17 = [SecDbKeychainMetadata alloc];
    v18 = [(SecDbKeychainSerializedItemV7 *)v10 encryptedMetadata];
    v19 = [(SecDbKeychainMetadata *)v17 initWithData:v18];
    encryptedMetadata = v9->_encryptedMetadata;
    v9->_encryptedMetadata = v19;

    v9->_keyclass = [(SecDbKeychainSerializedItemV7 *)v10 keyclass];
    v21 = [(SecDbKeychainSecretData *)v9->_encryptedSecretData tamperCheck];
    v22 = [(SecDbKeychainMetadata *)v9->_encryptedMetadata tamperCheck];
    v23 = [v21 isEqualToString:v22];

    if ((v23 & 1) == 0)
    {
LABEL_8:

      v9 = 0;
    }
  }

  if (a5 && !v9)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"failed to deserialize keychain item blob";
    v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *a5 = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-26275 userInfo:v24];
  }

  return v9;
}

@end