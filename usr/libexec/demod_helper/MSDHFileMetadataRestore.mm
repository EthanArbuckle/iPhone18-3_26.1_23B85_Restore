@interface MSDHFileMetadataRestore
- (BOOL)_gatherDeviceDemoUserAccountInfo;
- (BOOL)restoreAttributesUnder:(id)under fromManifestData:(id)data;
- (MSDHFileMetadataRestore)initWithManifestUID:(id)d deviceUID:(id)iD;
- (id)_updateFile:(id)file withAttributes:(id)attributes;
- (id)_updateFileAttributes:(id)attributes;
- (id)_updateFileAttributesFromManifestData:(id)data;
@end

@implementation MSDHFileMetadataRestore

- (BOOL)restoreAttributesUnder:(id)under fromManifestData:(id)data
{
  underCopy = under;
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  v9 = sub_100021268();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[MSDHFileMetadataRestore restoreAttributesUnder:fromManifestData:]";
    v35 = 2114;
    v36 = underCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Restoring file attributes under: %{public}@", buf, 0x16u);
  }

  userHomePath = [(MSDHFileMetadataRestore *)self userHomePath];
  v11 = [underCopy stringByAppendingPathComponent:userHomePath];

  pathsToSkip = [(MSDHFileMetadataRestore *)self pathsToSkip];
  lowercaseString = [v11 lowercaseString];
  [pathsToSkip addObject:lowercaseString];

  v14 = [MSDManifest alloc];
  userHomePath2 = [(MSDHFileMetadataRestore *)self userHomePath];
  v16 = [(MSDManifest *)v14 initWithDictionary:dataCopy andUserHomePath:userHomePath2];

  if (v16)
  {
    pathSet = [(MSDManifest *)v16 pathSet];
    allObjects = [pathSet allObjects];

    v19 = [allObjects count];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017B60;
    block[3] = &unk_100051000;
    v28 = &v29;
    v24 = allObjects;
    v25 = v16;
    v26 = underCopy;
    selfCopy = self;
    dispatch_apply(v19, 0, block);
    v20 = *(v30 + 24);

    v21 = v24;
  }

  else
  {
    v21 = sub_100021268();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10002EA44(v21);
    }

    v20 = 0;
  }

  _Block_object_dispose(&v29, 8);
  objc_autoreleasePoolPop(v8);

  return v20 & 1;
}

- (BOOL)_gatherDeviceDemoUserAccountInfo
{
  *__error() = 0;
  deviceUID = [(MSDHFileMetadataRestore *)self deviceUID];
  v4 = getpwuid([deviceUID unsignedIntValue]);

  if (v4)
  {
    v5 = getgrgid(v4->pw_gid);
    if (v5)
    {
      v6 = v5;
      v7 = [[NSString alloc] initWithUTF8String:v4->pw_name];
      [(MSDHFileMetadataRestore *)self setDeviceUserName:v7];

      v8 = [NSNumber numberWithUnsignedInt:v4->pw_gid];
      [(MSDHFileMetadataRestore *)self setDeviceGID:v8];

      v9 = [[NSString alloc] initWithUTF8String:v6->gr_name];
      [(MSDHFileMetadataRestore *)self setDeviceGroupName:v9];

      deviceUserName = [(MSDHFileMetadataRestore *)self deviceUserName];
      v11 = NSHomeDirectoryForUser(deviceUserName);
      [(MSDHFileMetadataRestore *)self setUserHomePath:v11];

      return 1;
    }

    sub_10002EB0C(self, &v4->pw_gid);
  }

  else
  {
    sub_10002EC0C(self);
  }

  return 0;
}

- (id)_updateFileAttributesFromManifestData:(id)data
{
  dataCopy = data;
  v22 = [NSMutableDictionary dictionaryWithDictionary:dataCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = dataCopy;
  v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v23)
  {
    v20 = *v27;
    while (2)
    {
      v8 = 0;
      v9 = v4;
      v10 = v5;
      v11 = v6;
      v12 = v7;
      do
      {
        v25 = v9;
        v13 = obj;
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v8);
        v15 = objc_autoreleasePoolPush();
        v5 = [obj objectForKey:v14];

        v6 = [v5 objectForKey:@"MSDManifestFileAttributes"];

        v7 = [(MSDHFileMetadataRestore *)self _updateFile:v14 withAttributes:v6];

        if (!v7)
        {
          sub_10002ECFC(v14, v15, obj);
          v17 = 0;
          v16 = v22;
          v18 = v25;
          goto LABEL_11;
        }

        v4 = [NSMutableDictionary dictionaryWithDictionary:v5];

        [v4 setObject:v7 forKey:@"MSDManifestFileAttributes"];
        [v22 setObject:v4 forKey:v14];
        objc_autoreleasePoolPop(v15);
        v8 = v8 + 1;
        v9 = v4;
        v10 = v5;
        v11 = v6;
        v12 = v7;
      }

      while (v23 != v8);
      v23 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v16 = v22;
  v17 = v22;
  v18 = v4;
  v13 = obj;
LABEL_11:

  return v17;
}

- (id)_updateFile:(id)file withAttributes:(id)attributes
{
  fileCopy = file;
  attributesCopy = attributes;
  v8 = [attributesCopy objectForKey:NSFileOwnerAccountID];
  manifestUID = [(MSDHFileMetadataRestore *)self manifestUID];
  v10 = [v8 isEqualToNumber:manifestUID];

  if (v10)
  {
    v11 = [(MSDHFileMetadataRestore *)self _updateFileAttributes:attributesCopy];
  }

  else
  {
    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10002EDCC(fileCopy, v8, v12);
    }

    v11 = attributesCopy;
  }

  v13 = v11;

  return v13;
}

- (id)_updateFileAttributes:(id)attributes
{
  v4 = [NSMutableDictionary dictionaryWithDictionary:attributes];
  deviceUserName = [(MSDHFileMetadataRestore *)self deviceUserName];
  [v4 setObject:deviceUserName forKey:NSFileOwnerAccountName];

  deviceGID = [(MSDHFileMetadataRestore *)self deviceGID];
  [v4 setObject:deviceGID forKey:NSFileGroupOwnerAccountID];

  deviceGroupName = [(MSDHFileMetadataRestore *)self deviceGroupName];
  [v4 setObject:deviceGroupName forKey:NSFileGroupOwnerAccountName];

  deviceUID = [(MSDHFileMetadataRestore *)self deviceUID];
  [v4 setObject:deviceUID forKey:NSFileOwnerAccountID];

  return v4;
}

- (MSDHFileMetadataRestore)initWithManifestUID:(id)d deviceUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = MSDHFileMetadataRestore;
  v8 = [(MSDHFileMetadataRestore *)&v12 init];
  if (v8 && (v9 = objc_alloc_init(NSMutableSet), [(MSDHFileMetadataRestore *)v8 setPathsToSkip:v9], v9, [(MSDHFileMetadataRestore *)v8 setManifestUID:dCopy], [(MSDHFileMetadataRestore *)v8 setDeviceUID:iDCopy], [(MSDHFileMetadataRestore *)v8 _gatherDeviceDemoUserAccountInfo]))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end