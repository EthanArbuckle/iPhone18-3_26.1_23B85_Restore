@interface CKKSItemEncrypter
+ (id)decryptDictionary:(id)dictionary key:(id)key authenticatedData:(id)data error:(id *)error;
+ (id)decryptItemToDictionary:(id)dictionary keyCache:(id)cache error:(id *)error;
+ (id)decryptItemToDictionaryVersion1or2:(id)version1or2 keyCache:(id)cache error:(id *)error;
+ (id)decryptItemToDictionaryVersionNone:(id)none error:(id *)error;
+ (id)encryptCKKSItem:(id)item dataDictionary:(id)dictionary updatingCKKSItem:(id)sItem parentkey:(id)parentkey keyCache:(id)cache error:(id *)error;
+ (id)encryptDictionary:(id)dictionary key:(id)key authenticatedData:(id)data error:(id *)error;
+ (id)padData:(id)data blockSize:(unint64_t)size additionalBlock:(BOOL)block;
+ (id)removePaddingFromData:(id)data;
@end

@implementation CKKSItemEncrypter

+ (id)decryptDictionary:(id)dictionary key:(id)key authenticatedData:(id)data error:(id *)error
{
  v7 = [key decryptData:dictionary authenticatedData:data error:error];
  if (v7)
  {
    v8 = [CKKSItemEncrypter removePaddingFromData:v7];

    if (v8)
    {
      v7 = [NSPropertyListSerialization propertyListWithData:v8 options:512 format:0 error:error];
LABEL_6:

      goto LABEL_7;
    }

    if (error)
    {
      v10 = NSLocalizedDescriptionKey;
      v11 = @"Could not remove padding from decrypted item: malformed data";
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [NSError errorWithDomain:@"securityd" code:-67673 userInfo:v8];
      *error = v7 = 0;
      goto LABEL_6;
    }

    v7 = 0;
  }

LABEL_7:

  return v7;
}

+ (id)encryptDictionary:(id)dictionary key:(id)key authenticatedData:(id)data error:(id *)error
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  dataCopy = data;
  v12 = [NSPropertyListSerialization dataWithPropertyList:dictionaryCopy format:200 options:0 error:error];
  if (v12)
  {
    v13 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"v_Data"];
    v15 = +[CKKSItemEncrypter padData:blockSize:additionalBlock:](CKKSItemEncrypter, "padData:blockSize:additionalBlock:", v13, 20, [v14 length] < 0x14);

    v16 = [keyCopy encryptData:v15 authenticatedData:dataCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)decryptItemToDictionary:(id)dictionary keyCache:(id)cache error:(id *)error
{
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  encver = [dictionaryCopy encver];
  if (encver == 2 || encver == 1)
  {
    v10 = [CKKSItemEncrypter decryptItemToDictionaryVersion1or2:dictionaryCopy keyCache:cacheCopy error:error];
  }

  else
  {
    v21 = NSLocalizedDescriptionKey;
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unrecognized encryption version: %lu", [dictionaryCopy encver]);
    v22 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v13 = [NSError errorWithDomain:@"securityd" code:1 userInfo:v12];

    zoneID = [dictionaryCopy zoneID];
    zoneName = [zoneID zoneName];
    v16 = sub_100019104(@"item", zoneName);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "decryptItemToDictionary failed: %@", buf, 0xCu);
    }

    if (error)
    {
      v17 = v13;
      *error = v13;
    }

    v10 = 0;
  }

  return v10;
}

+ (id)decryptItemToDictionaryVersion1or2:(id)version1or2 keyCache:(id)cache error:(id *)error
{
  version1or2Copy = version1or2;
  cacheCopy = cache;
  parentKeyUUID = [version1or2Copy parentKeyUUID];
  contextID = [version1or2Copy contextID];
  zoneID = [version1or2Copy zoneID];
  if (cacheCopy)
  {
    [cacheCopy loadKeyForUUID:parentKeyUUID contextID:contextID zoneID:zoneID error:error];
  }

  else
  {
    [CKKSKey loadKeyWithUUID:parentKeyUUID contextID:contextID zoneID:zoneID error:error];
  }
  v13 = ;

  if (v13 && ([version1or2Copy wrappedkey], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "unwrapAESKey:error:", v14, error), v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
  {
    v16 = [version1or2Copy makeAuthenticatedDataDictionaryUpdatingCKKSItem:version1or2Copy encryptionVersion:{objc_msgSend(version1or2Copy, "encver")}];
    encitem = [version1or2Copy encitem];
    v18 = [self decryptDictionary:encitem key:v15 authenticatedData:v16 error:error];

    if (!v18)
    {
      zoneID2 = [version1or2Copy zoneID];
      zoneName = [zoneID2 zoneName];
      v21 = sub_100019104(@"item", zoneName);

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *error;
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

+ (id)decryptItemToDictionaryVersionNone:(id)none error:(id *)error
{
  encitem = [none encitem];
  v6 = [NSPropertyListSerialization propertyListWithData:encitem options:512 format:0 error:error];

  return v6;
}

+ (id)encryptCKKSItem:(id)item dataDictionary:(id)dictionary updatingCKKSItem:(id)sItem parentkey:(id)parentkey keyCache:(id)cache error:(id *)error
{
  itemCopy = item;
  dictionaryCopy = dictionary;
  sItemCopy = sItem;
  parentkeyCopy = parentkey;
  cacheCopy = cache;
  if (!sItemCopy)
  {
    goto LABEL_4;
  }

  v18 = [CKKSItemEncrypter decryptItemToDictionary:sItemCopy keyCache:cacheCopy error:error];
  v19 = [v18 mutableCopy];

  if (v19)
  {
    [v19 addEntriesFromDictionary:dictionaryCopy];

    dictionaryCopy = v19;
LABEL_4:
    v20 = [parentkeyCopy getKeychainBackedKey:error];
    if (v20 && ([CKKSKeychainBackedKey randomKeyWrappedByParent:v20 error:error], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v21;
      v44 = itemCopy;
      v23 = [[CKKSItem alloc] initCopyingCKKSItem:itemCopy];
      v43 = parentkeyCopy;
      uuid = [parentkeyCopy uuid];
      [v23 setParentKeyUUID:uuid];

      wrappedkey = [v22 wrappedkey];
      [v23 setWrappedkey:wrappedkey];

      if (sItemCopy)
      {
        [sItemCopy encver];
      }

      [v23 setEncver:2];
      storedCKRecord = [sItemCopy storedCKRecord];

      if (storedCKRecord)
      {
        storedCKRecord2 = [sItemCopy storedCKRecord];
        storedCKRecord3 = [sItemCopy storedCKRecord];
        [storedCKRecord3 recordID];
        v28 = v42 = cacheCopy;
        zoneID = [v28 zoneID];
        v30 = [v23 updateCKRecord:storedCKRecord2 zoneID:zoneID];
        [v23 setStoredCKRecord:v30];

        cacheCopy = v42;
      }

      v31 = [v23 makeAuthenticatedDataDictionaryUpdatingCKKSItem:sItemCopy encryptionVersion:{objc_msgSend(v23, "encver")}];
      aessivkey = [v22 aessivkey];
      v33 = [CKKSItemEncrypter encryptDictionary:dictionaryCopy key:aessivkey authenticatedData:v31 error:error];
      [v23 setEncitem:v33];

      encitem = [v23 encitem];

      if (encitem)
      {
        v35 = v23;
      }

      else
      {
        v35 = 0;
      }

      parentkeyCopy = v43;
      itemCopy = v44;
    }

    else
    {
      v35 = 0;
    }

    goto LABEL_22;
  }

  zoneID2 = [sItemCopy zoneID];
  zoneName = [zoneID2 zoneName];
  v38 = sub_100019104(@"ckme", zoneName);

  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v39 = *error;
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

+ (id)removePaddingFromData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = [dataCopy bytes] - 1;
  while (v4)
  {
    v6 = (v4--)[v5];
    if (v6)
    {
      if (v6 == 128)
      {
        v4 = [dataCopy subdataWithRange:0];
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

+ (id)padData:(id)data blockSize:(unint64_t)size additionalBlock:(BOOL)block
{
  blockCopy = block;
  dataCopy = data;
  if (!size)
  {
    v8 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKKS padding function received invalid blocksize 0, using 1 instead", v16, 2u);
    }

    size = 1;
  }

  v9 = [NSMutableData dataWithData:dataCopy];
  v10 = [v9 length];
  if (blockCopy)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 0;
  }

  v12 = size + sizeCopy + v10 / size * size - v10;
  v13 = [NSMutableData dataWithLength:v12];
  [v9 appendData:v13];

  mutableBytes = [v9 mutableBytes];
  *([v9 length] + mutableBytes - v12) = 0x80;

  return v9;
}

@end