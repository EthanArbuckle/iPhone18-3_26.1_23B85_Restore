@interface CKKSItemEncrypter
+ (id)decryptDictionary:(id)a3 key:(id)a4 authenticatedData:(id)a5 error:(id *)a6;
+ (id)decryptItemToDictionary:(id)a3 keyCache:(id)a4 error:(id *)a5;
+ (id)decryptItemToDictionaryVersion1or2:(id)a3 keyCache:(id)a4 error:(id *)a5;
+ (id)decryptItemToDictionaryVersionNone:(id)a3 error:(id *)a4;
+ (id)encryptCKKSItem:(id)a3 dataDictionary:(id)a4 updatingCKKSItem:(id)a5 parentkey:(id)a6 keyCache:(id)a7 error:(id *)a8;
+ (id)encryptDictionary:(id)a3 key:(id)a4 authenticatedData:(id)a5 error:(id *)a6;
+ (id)padData:(id)a3 blockSize:(unint64_t)a4 additionalBlock:(BOOL)a5;
+ (id)removePaddingFromData:(id)a3;
@end

@implementation CKKSItemEncrypter

+ (id)decryptDictionary:(id)a3 key:(id)a4 authenticatedData:(id)a5 error:(id *)a6
{
  v7 = [a4 decryptData:a3 authenticatedData:a5 error:a6];
  if (v7)
  {
    v8 = [CKKSItemEncrypter removePaddingFromData:v7];

    if (v8)
    {
      v7 = [NSPropertyListSerialization propertyListWithData:v8 options:512 format:0 error:a6];
LABEL_6:

      goto LABEL_7;
    }

    if (a6)
    {
      v10 = NSLocalizedDescriptionKey;
      v11 = @"Could not remove padding from decrypted item: malformed data";
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [NSError errorWithDomain:@"securityd" code:-67673 userInfo:v8];
      *a6 = v7 = 0;
      goto LABEL_6;
    }

    v7 = 0;
  }

LABEL_7:

  return v7;
}

+ (id)encryptDictionary:(id)a3 key:(id)a4 authenticatedData:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:a6];
  if (v12)
  {
    v13 = v12;
    v14 = [v9 objectForKeyedSubscript:@"v_Data"];
    v15 = +[CKKSItemEncrypter padData:blockSize:additionalBlock:](CKKSItemEncrypter, "padData:blockSize:additionalBlock:", v13, 20, [v14 length] < 0x14);

    v16 = [v10 encryptData:v15 authenticatedData:v11 error:a6];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)decryptItemToDictionary:(id)a3 keyCache:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 encver];
  if (v9 == 2 || v9 == 1)
  {
    v10 = [CKKSItemEncrypter decryptItemToDictionaryVersion1or2:v7 keyCache:v8 error:a5];
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unrecognized encryption version: %lu", [v7 encver]);
    v22 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"securityd" code:1 userInfo:v12];

    v14 = [v7 zoneID];
    v15 = [v14 zoneName];
    v16 = sub_100019104(@"item", v15);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "decryptItemToDictionary failed: %@", buf, 0xCu);
    }

    if (a5)
    {
      v17 = v13;
      *a5 = v13;
    }

    v10 = 0;
  }

  return v10;
}

+ (id)decryptItemToDictionaryVersion1or2:(id)a3 keyCache:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 parentKeyUUID];
  v11 = [v8 contextID];
  v12 = [v8 zoneID];
  if (v9)
  {
    [v9 loadKeyForUUID:v10 contextID:v11 zoneID:v12 error:a5];
  }

  else
  {
    [CKKSKey loadKeyWithUUID:v10 contextID:v11 zoneID:v12 error:a5];
  }
  v13 = ;

  if (v13 && ([v8 wrappedkey], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "unwrapAESKey:error:", v14, a5), v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
  {
    v16 = [v8 makeAuthenticatedDataDictionaryUpdatingCKKSItem:v8 encryptionVersion:{objc_msgSend(v8, "encver")}];
    v17 = [v8 encitem];
    v18 = [a1 decryptDictionary:v17 key:v15 authenticatedData:v16 error:a5];

    if (!v18)
    {
      v19 = [v8 zoneID];
      v20 = [v19 zoneName];
      v21 = sub_100019104(@"item", v20);

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *a5;
        v24 = 138412290;
        v25 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "ckks: couldn't decrypt item %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)decryptItemToDictionaryVersionNone:(id)a3 error:(id *)a4
{
  v5 = [a3 encitem];
  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:512 format:0 error:a4];

  return v6;
}

+ (id)encryptCKKSItem:(id)a3 dataDictionary:(id)a4 updatingCKKSItem:(id)a5 parentkey:(id)a6 keyCache:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v15)
  {
    goto LABEL_4;
  }

  v18 = [CKKSItemEncrypter decryptItemToDictionary:v15 keyCache:v17 error:a8];
  v19 = [v18 mutableCopy];

  if (v19)
  {
    [v19 addEntriesFromDictionary:v14];

    v14 = v19;
LABEL_4:
    v20 = [v16 getKeychainBackedKey:a8];
    if (v20 && ([CKKSKeychainBackedKey randomKeyWrappedByParent:v20 error:a8], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v21;
      v44 = v13;
      v23 = [[CKKSItem alloc] initCopyingCKKSItem:v13];
      v43 = v16;
      v24 = [v16 uuid];
      [v23 setParentKeyUUID:v24];

      v25 = [v22 wrappedkey];
      [v23 setWrappedkey:v25];

      if (v15)
      {
        [v15 encver];
      }

      [v23 setEncver:2];
      v26 = [v15 storedCKRecord];

      if (v26)
      {
        v41 = [v15 storedCKRecord];
        v27 = [v15 storedCKRecord];
        [v27 recordID];
        v28 = v42 = v17;
        v29 = [v28 zoneID];
        v30 = [v23 updateCKRecord:v41 zoneID:v29];
        [v23 setStoredCKRecord:v30];

        v17 = v42;
      }

      v31 = [v23 makeAuthenticatedDataDictionaryUpdatingCKKSItem:v15 encryptionVersion:{objc_msgSend(v23, "encver")}];
      v32 = [v22 aessivkey];
      v33 = [CKKSItemEncrypter encryptDictionary:v14 key:v32 authenticatedData:v31 error:a8];
      [v23 setEncitem:v33];

      v34 = [v23 encitem];

      if (v34)
      {
        v35 = v23;
      }

      else
      {
        v35 = 0;
      }

      v16 = v43;
      v13 = v44;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_22;
  }

  v36 = [v15 zoneID];
  v37 = [v36 zoneName];
  v38 = sub_100019104(@"ckme", v37);

  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    if (a8)
    {
      v39 = *a8;
    }

    else
    {
      v39 = @"null error passed in";
    }

    *buf = 138412290;
    v46 = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Couldn't decrypt old CKMirror entry: %@", buf, 0xCu);
  }

  v35 = 0;
LABEL_22:

  return v35;
}

+ (id)removePaddingFromData:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = [v3 bytes] - 1;
  while (v4)
  {
    v6 = (v4--)[v5];
    if (v6)
    {
      if (v6 == 128)
      {
        v4 = [v3 subdataWithRange:0];
      }

      else
      {
        v4 = 0;
      }

      break;
    }
  }

  return v4;
}

+ (id)padData:(id)a3 blockSize:(unint64_t)a4 additionalBlock:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (!a4)
  {
    v8 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKKS padding function received invalid blocksize 0, using 1 instead", v16, 2u);
    }

    a4 = 1;
  }

  v9 = [NSMutableData dataWithData:v7];
  v10 = [v9 length];
  if (v5)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  v12 = a4 + v11 + v10 / a4 * a4 - v10;
  v13 = [NSMutableData dataWithLength:v12];
  [v9 appendData:v13];

  v14 = [v9 mutableBytes];
  *([v9 length] + v14 - v12) = 0x80;

  return v9;
}

@end