@interface MSDFileMetadata
+ (id)accessControlListWithPath:(id)a3;
+ (id)compareResultToNSString:(int)a3;
+ (id)extendedAttributeKeysWithPath:(id)a3;
+ (id)extendedAttributesWithPath:(id)a3;
+ (id)fileAttributesWithPath:(id)a3;
+ (id)fileHashWithPath:(id)a3;
+ (id)fileMetaDataWithMetadataDictionary:(id)a3;
+ (id)fileMetadatatWithPath:(id)a3;
+ (id)targetFileWithPath:(id)a3;
+ (id)valueForExtendedAttributesKey:(id)a3 forPath:(id)a4;
- (BOOL)removeAllExtendedAttributes:(id)a3;
- (BOOL)restoreAttribuesToPath:(id)a3;
- (MSDFileMetadata)initWithDictionary:(id)a3;
- (MSDFileMetadata)initWithPath:(id)a3;
- (NSData)getAccessControlList;
- (NSData)getHash;
- (NSDictionary)getExtendedAttributes;
- (NSDictionary)getFileAttributes;
- (NSString)getFileType;
- (NSString)getTargetFile;
- (id)fileAttributesAllowSet:(id)a3;
- (int)compareWith:(id)a3;
- (int64_t)getFileSize;
- (void)dealloc;
@end

@implementation MSDFileMetadata

+ (id)fileHashWithPath:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v10];

  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      v6 = [NSURL fileURLWithString:v3];
      v7 = [v6 fileHash];

      if (v7)
      {
        goto LABEL_8;
      }

      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Maybe it's an iCloud file (%{public}@)?", buf, 0xCu);
      }
    }

    v7 = +[NSData data];
  }

  else
  {
    sub_1000DE508();
    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (id)fileAttributesWithPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v10];
  v6 = v10;
  v7 = [v5 mutableCopy];

  if (v6)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000DE59C(v3, v6);
    }
  }

  else
  {
    v11[0] = @"NSFileExtendedAttributes";
    v11[1] = NSFileReferenceCount;
    v11[2] = NSFileSystemNumber;
    v11[3] = NSFileSystemFileNumber;
    v8 = [NSArray arrayWithObjects:v11 count:4];
    [v7 removeObjectsForKeys:v8];
  }

  return v7;
}

+ (id)extendedAttributeKeysWithPath:(id)a3
{
  v3 = a3;
  v4 = [NSMutableArray arrayWithCapacity:0];
  v5 = [v3 fileSystemRepresentation];
  v6 = listxattr(v5, 0, 0, 1);
  if (v6 < 0)
  {
    sub_1000DE6EC();
    v9 = 0;
  }

  else
  {
    v7 = v6;
    v8 = [NSMutableData dataWithLength:v6];
    v9 = v8;
    if (!v7)
    {
LABEL_6:
      v15 = [NSArray arrayWithArray:v4];
      goto LABEL_7;
    }

    v10 = listxattr(v5, [v8 mutableBytes], v7, 1);
    if (v10 > 0)
    {
      v11 = v10;
      [v9 setLength:v10];
      v12 = 0;
      do
      {
        v13 = [v9 bytes];
        v14 = [NSString stringWithUTF8String:&v13[v12]];
        [v4 addObject:v14];
        v12 += strlen(&v13[v12]) + 1;
      }

      while (v12 < v11);
      goto LABEL_6;
    }

    sub_1000DE644();
  }

  v15 = 0;
LABEL_7:

  return v15;
}

+ (id)accessControlListWithPath:(id)a3
{
  v3 = a3;
  file = acl_get_file([v3 fileSystemRepresentation], ACL_TYPE_EXTENDED);
  if (file)
  {
    v5 = file;
    if (acl_valid(file))
    {
      sub_1000DE794(v3, &v13);
      v12 = v13;
    }

    else
    {
      v6 = acl_size(v5);
      v7 = malloc_type_malloc(v6, 0x85F3635CuLL);
      if (v7)
      {
        v8 = v7;
        v9 = acl_copy_ext(v7, v5, v6);
        if (v9 < 0)
        {
          sub_1000DE858();
          v10 = 0;
        }

        else
        {
          v10 = [NSData dataWithBytes:v8 length:v9];
        }

        acl_free(v5);
        free(v8);
        goto LABEL_9;
      }

      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000DE8FC(v12);
      }
    }

    acl_free(v5);
  }

  else
  {
    if (*__error() == 2)
    {
      v10 = +[NSData data];
      goto LABEL_9;
    }

    sub_1000DE940();
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)valueForExtendedAttributesKey:(id)a3 forPath:(id)a4
{
  v5 = a4;
  v6 = [a3 UTF8String];
  v7 = [v5 fileSystemRepresentation];
  v8 = +[NSMutableData data];
  v9 = getxattr(v7, v6, 0, 0, 0, 1);
  if (v9 < 0)
  {
    sub_1000DEA78();
  }

  else
  {
    v10 = [NSMutableData dataWithLength:v9];

    v8 = v10;
    v11 = getxattr(v7, v6, [v10 mutableBytes], v9, 0, 1);
    if (v11 < 0)
    {
      sub_1000DE9E4();
    }

    else
    {
      [v10 setLength:v11];
    }
  }

  return v8;
}

+ (id)extendedAttributesWithPath:(id)a3
{
  v3 = a3;
  v4 = [MSDFileMetadata extendedAttributeKeysWithPath:v3];
  if (v4)
  {
    v5 = [NSMutableDictionary dictionaryWithCapacity:0];
    if ([v4 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = v4;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v19;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v18 + 1) + 8 * v11);
            v9 = [MSDFileMetadata valueForExtendedAttributesKey:v13 forPath:v3];

            [v5 setObject:v9 forKey:v13];
            v11 = v11 + 1;
            v12 = v9;
          }

          while (v8 != v11);
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      v4 = v17;
    }

    else
    {
      v9 = 0;
    }

    v14 = [NSDictionary dictionaryWithDictionary:v5];
  }

  else
  {
    sub_1000DEB28();
    v9 = 0;
    v5 = 0;
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)targetFileWithPath:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v8 = 0;
  v5 = [v4 destinationOfSymbolicLinkAtPath:v3 error:&v8];
  v6 = v8;

  if (v6)
  {
    sub_1000DEBBC(v3, v6);
  }

  return v5;
}

- (MSDFileMetadata)initWithDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MSDFileMetadata;
  v6 = [(MSDFileMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, a3);
  }

  return v7;
}

- (MSDFileMetadata)initWithPath:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MSDFileMetadata;
  v5 = [(MSDFileMetadata *)&v19 init];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [MSDFileMetadata fileAttributesWithPath:v4];
    if (v7)
    {
      v8 = [MSDFileMetadata extendedAttributesWithPath:v4];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 objectForKey:NSFileType];
        v11 = [v10 isEqualToString:NSFileTypeSymbolicLink];

        if (v11)
        {
          v12 = [MSDFileMetadata targetFileWithPath:v4];
          if (v12)
          {
            v13 = v12;
            [v6 setObject:v12 forKey:@"MSDManifestSymbolicLinkTargetFile"];

            [v6 setObject:v7 forKey:@"MSDManifestFileAttributes"];
            v14 = 0;
            v15 = 0;
LABEL_11:
            if ([v9 count])
            {
              [v6 setObject:v9 forKey:@"MSDManifestFileExtendedAttributes"];
            }

            if (v14 && [v14 length])
            {
              [v6 setObject:v14 forKey:@"MSDManifestFileACL"];
            }

            objc_storeStrong(&v5->_dict, v6);

            goto LABEL_17;
          }

          goto LABEL_22;
        }

        v16 = [MSDFileMetadata accessControlListWithPath:v4];
        if (!v16)
        {
LABEL_22:

          goto LABEL_24;
        }

        v14 = v16;
        v17 = [MSDFileMetadata fileHashWithPath:v4];
        if (v17)
        {
          v15 = v17;
          [v6 setObject:v7 forKey:@"MSDManifestFileAttributes"];
          if ([v15 length])
          {
            [v6 setObject:v15 forKey:@"MSDManifestFileHash"];
          }

          goto LABEL_11;
        }

LABEL_24:
        v5 = 0;
LABEL_17:

        goto LABEL_18;
      }

      sub_1000DEC7C();
    }

    else
    {
      sub_1000DED10();
    }

    v9 = v5;
    goto LABEL_24;
  }

LABEL_18:

  return v5;
}

+ (id)fileMetadatatWithPath:(id)a3
{
  v3 = a3;
  v4 = [[MSDFileMetadata alloc] initWithPath:v3];

  return v4;
}

+ (id)fileMetaDataWithMetadataDictionary:(id)a3
{
  v3 = a3;
  v4 = [[MSDFileMetadata alloc] initWithDictionary:v3];

  return v4;
}

- (void)dealloc
{
  dict = self->_dict;
  self->_dict = 0;

  v4.receiver = self;
  v4.super_class = MSDFileMetadata;
  [(MSDFileMetadata *)&v4 dealloc];
}

- (BOOL)removeAllExtendedAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 fileSystemRepresentation];
  v5 = 1;
  v6 = listxattr(v4, 0, 0, 1);
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = malloc_type_malloc(v6, 0x8C268854uLL);
    if (v8)
    {
      v9 = v8;
      v10 = listxattr(v4, v8, v7, 1);
      if (v10 < 1)
      {
        v14 = sub_100063A54();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEE2C(v14);
        }
      }

      else
      {
        v11 = &v9[v10];
        v12 = v9;
        while (!removexattr(v4, v12, 1))
        {
          v12 += strlen(v12) + 1;
          if (v12 >= v11)
          {
            v5 = 1;
            goto LABEL_8;
          }
        }

        v14 = sub_100063A54();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1000DEDA4(v12, v3, v14);
        }
      }

      v5 = 0;
LABEL_8:
      free(v9);
    }

    else
    {
      sub_1000DEE70();
      v5 = 0;
    }
  }

  return v5;
}

- (int)compareWith:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MSDFileMetadata *)self getFileType];
    v6 = [v4 getFileType];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [(MSDFileMetadata *)self getFileType];
      v9 = [v8 isEqualToString:NSFileTypeRegular];

      if (v9 && (-[MSDFileMetadata getHash](self, "getHash"), v10 = objc_claimAutoreleasedReturnValue(), [v4 getHash], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToData:", v11), v11, v10, !v12))
      {
        v47 = 2;
      }

      else
      {
        v13 = [(MSDFileMetadata *)self getFileType];
        v14 = [v13 isEqualToString:NSFileTypeSymbolicLink];

        if (!v14 || (-[MSDFileMetadata getTargetFile](self, "getTargetFile"), v15 = objc_claimAutoreleasedReturnValue(), [v4 getTargetFile], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqualToString:", v16), v16, v15, v17))
        {
          v56 = self;
          v18 = [(MSDFileMetadata *)self getFileAttributes];
          v57 = v4;
          v19 = [v4 getFileAttributes];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v63 objects:v68 count:16];
          if (v21)
          {
            v22 = v21;
            v58 = *v64;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v64 != v58)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v63 + 1) + 8 * i);
                if (([v24 isEqualToString:NSFileGroupOwnerAccountID] & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", NSFileOwnerAccountID) & 1) != 0 || objc_msgSend(v24, "isEqualToString:", NSFilePosixPermissions))
                {
                  v25 = [v20 objectForKey:v24];
                  [v19 objectForKey:v24];
                  v27 = v26 = v20;
                  v28 = [v25 isEqual:v27];

                  v20 = v26;
                  if (!v28)
                  {
                    v47 = 4;
                    v34 = v26;
                    v35 = v19;
                    v4 = v57;
                    goto LABEL_54;
                  }
                }

                if ([v24 isEqualToString:NSFileProtectionKey])
                {
                  v29 = [v20 objectForKey:v24];
                  v30 = [v19 objectForKey:v24];
                  if (([v29 isEqualToString:v30] & 1) == 0)
                  {
                    v31 = [v29 isEqualToString:NSFileProtectionNone];
                    v32 = v30 ? 0 : v31;
                    if (v32 & 1) == 0 && !v29 && ([v30 isEqualToString:NSFileProtectionNone])
                    {
                      v47 = 4;
                      v35 = v19;
                      v34 = v20;
LABEL_52:
                      v4 = v57;
                      goto LABEL_53;
                    }
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v63 objects:v68 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v33 = v56;
          v34 = [(MSDFileMetadata *)v56 getExtendedAttributes];

          v4 = v57;
          v35 = [v57 getExtendedAttributes];

          if (v34)
          {
            if (v35)
            {
              v36 = [NSMutableDictionary dictionaryWithDictionary:v34];
              v30 = [NSMutableDictionary dictionaryWithDictionary:v35];
              [v36 removeObjectForKey:@"com.apple.assetsd.dbRebuildUuid"];
              [v30 removeObjectForKey:@"com.apple.assetsd.dbRebuildUuid"];
              v37 = [v36 count];
              if (v37 != [v30 count])
              {
                v47 = 4;
                v20 = v36;
                goto LABEL_53;
              }

              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v38 = v36;
              v39 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v60;
                while (2)
                {
                  for (j = 0; j != v40; j = j + 1)
                  {
                    if (*v60 != v41)
                    {
                      objc_enumerationMutation(v38);
                    }

                    v43 = *(*(&v59 + 1) + 8 * j);
                    v44 = [v38 objectForKey:v43];
                    v45 = [v30 objectForKey:v43];
                    v46 = [v44 isEqualToData:v45];

                    if (!v46)
                    {
                      v20 = v38;

                      v47 = 4;
                      goto LABEL_52;
                    }
                  }

                  v40 = [v38 countByEnumeratingWithState:&v59 objects:v67 count:16];
                  if (v40)
                  {
                    continue;
                  }

                  break;
                }
              }

              v33 = v56;
              v4 = v57;
LABEL_47:
              v48 = [(MSDFileMetadata *)v33 getFileType];
              v49 = [v48 isEqualToString:NSFileTypeSymbolicLink];

              if (v49)
              {
                v47 = 5;
                goto LABEL_55;
              }

              v20 = [(MSDFileMetadata *)v33 getAccessControlList];
              v51 = [v4 getAccessControlList];
              v30 = v51;
              if (v20)
              {
                if (v51)
                {
                  [(MSDFileMetadata *)v56 getAccessControlList];
                  v53 = v52 = v20;
                  v54 = [v4 getAccessControlList];
                  v55 = [v53 isEqualToData:v54];

                  v20 = v52;
                  if (v55)
                  {
                    goto LABEL_60;
                  }
                }
              }

              else if (!v51)
              {
LABEL_60:
                v47 = 5;
                goto LABEL_53;
              }

              v47 = 4;
LABEL_53:

LABEL_54:
              goto LABEL_55;
            }
          }

          else
          {
            if (!v35)
            {
              goto LABEL_47;
            }

            v34 = 0;
          }

          v47 = 4;
LABEL_55:

          goto LABEL_56;
        }

        v47 = 3;
      }
    }

    else
    {
      v47 = 1;
    }
  }

  else
  {
    v47 = 0;
  }

LABEL_56:

  return v47;
}

- (id)fileAttributesAllowSet:(id)a3
{
  v3 = a3;
  v4 = [NSArray arrayWithObjects:NSFileBusy, NSFileHFSCreatorCode, NSFileHFSTypeCode, NSFileImmutable, NSFileCreationDate, NSFileExtensionHidden, NSFileGroupOwnerAccountID, NSFileGroupOwnerAccountName, NSFileModificationDate, NSFileOwnerAccountID, NSFileOwnerAccountName, NSFilePosixPermissions, 0];
  v5 = [v3 allKeys];
  v6 = [NSMutableArray arrayWithArray:v5];

  [v6 removeObjectsInArray:v4];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v3];

  [v7 removeObjectsForKeys:v6];

  return v7;
}

- (NSData)getHash
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileHash"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSDictionary)getFileAttributes
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileAttributes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSDictionary)getExtendedAttributes
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileExtendedAttributes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSData)getAccessControlList
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileACL"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)getFileType
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileAttributes"];
  v3 = [v2 objectForKey:NSFileType];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (NSString)getTargetFile
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (int64_t)getFileSize
{
  v2 = [(NSDictionary *)self->_dict objectForKey:@"MSDManifestFileAttributes"];
  v3 = [v2 fileType];
  v4 = [v3 isEqualToString:@"NSFileTypeRegular"];

  if (v4)
  {
    v5 = [v2 fileSize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)compareResultToNSString:(int)a3
{
  if (a3 > 5)
  {
    return @"Unknown compare result.";
  }

  else
  {
    return off_10016B960[a3];
  }
}

- (BOOL)restoreAttribuesToPath:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [(MSDFileMetadata *)self getFileType];
  v7 = [v6 isEqualToString:?];

  if (v7)
  {
    v8 = [v4 UTF8String];
    v9 = [(MSDFileMetadata *)self getFileAttributes];
    v10 = [v9 fileOwnerAccountID];
    v11 = [v10 intValue];
    v12 = [(MSDFileMetadata *)self getFileAttributes];
    v13 = [v12 fileGroupOwnerAccountID];
    LODWORD(v8) = lchown(v8, v11, [v13 intValue]);

    if (v8)
    {
      v60 = sub_100063A54();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v61 = __error();
      sub_100086004(*v61, 5.8382e-34);
      v62 = "Could not set file ownership on symlink %{public}@ with error - %{public, errno}d";
    }

    else
    {
      v14 = [v4 UTF8String];
      v15 = [(MSDFileMetadata *)self getFileAttributes];
      LODWORD(v14) = lchmod(v14, [v15 filePosixPermissions]);

      if (!v14)
      {
        v16 = 0;
        goto LABEL_8;
      }

      v60 = sub_100063A54();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
LABEL_50:

        v39 = 0;
        v16 = 0;
        goto LABEL_51;
      }

      v75 = __error();
      sub_100086004(*v75, 5.8382e-34);
      v62 = "Could not set file permission on symlink %{public}@ with error - %{public, errno}d";
    }

    _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, v62, buf, 0x12u);
    goto LABEL_50;
  }

  v17 = [(MSDFileMetadata *)self getFileAttributes];
  v18 = [(MSDFileMetadata *)self fileAttributesAllowSet:v17];
  v96 = 0;
  v19 = [v5 setAttributes:v18 ofItemAtPath:v4 error:&v96];
  v16 = v96;

  if ((v19 & 1) == 0)
  {
    v63 = sub_100063A54();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [v16 localizedDescription];
      v72 = v71 = v5;
      v73 = [(MSDFileMetadata *)self getFileAttributes];
      v74 = [(MSDFileMetadata *)self fileAttributesAllowSet:v73];
      *buf = 138543874;
      v99 = v4;
      v100 = 2114;
      v101 = v72;
      v102 = 2114;
      v103 = v74;
      _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Could not set file attributes at %{public}@ with error - %{public}@, attributes = %{public}@", buf, 0x20u);

      v5 = v71;
    }

    goto LABEL_48;
  }

  v20 = [(MSDFileMetadata *)self getFileAttributes];
  v21 = [v20 objectForKey:NSFileProtectionKey];
  v22 = [NSDictionary dictionaryWithObjectsAndKeys:v21, NSFileProtectionKey, 0];
  v95 = v16;
  v23 = [v5 setAttributes:v22 ofItemAtPath:v4 error:&v95];
  v24 = v95;

  if ((v23 & 1) == 0)
  {
    v64 = sub_100063A54();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v76 = [v24 localizedDescription];
      v77 = [(MSDFileMetadata *)self getFileAttributes];
      v78 = [v77 objectForKey:NSFileProtectionKey];
      *buf = 138543874;
      v99 = v4;
      v100 = 2114;
      v101 = v76;
      v102 = 2114;
      v103 = v78;
      _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Could not set file protection key at %{public}@ with error - %{public}@, attributes = %{public}@", buf, 0x20u);
    }

    v39 = 0;
    v31 = 0;
    v30 = 0;
    v16 = v24;
    goto LABEL_40;
  }

  v16 = v24;
LABEL_8:
  if (![(MSDFileMetadata *)self removeAllExtendedAttributes:v4])
  {
LABEL_48:
    v39 = 0;
LABEL_51:
    v31 = 0;
    v30 = 0;
    goto LABEL_40;
  }

  v89 = v16;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v25 = [(MSDFileMetadata *)self getExtendedAttributes];
  v26 = [v25 allKeys];

  obj = v26;
  v27 = [v26 countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (!v27)
  {
    v30 = 0;
    goto LABEL_21;
  }

  v28 = v27;
  v29 = self;
  v88 = v5;
  v30 = 0;
  v31 = 0;
  v32 = *v92;
  while (2)
  {
    v33 = 0;
    v34 = v30;
    v35 = v31;
    do
    {
      if (*v92 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v91 + 1) + 8 * v33);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v44 = sub_100063A54();
        if (sub_100086030(v44))
        {
          *buf = 0;
          sub_100085FF4();
          _os_log_error_impl(v45, v46, v47, v48, v49, 2u);
        }

        goto LABEL_33;
      }

      v36 = [(MSDFileMetadata *)v29 getExtendedAttributes];
      v30 = [v36 objectForKey:v31];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = sub_100063A54();
        if (!sub_100086030(v50))
        {
LABEL_32:
          v34 = v30;
LABEL_33:
          v5 = v88;

          v39 = 1;
          v30 = v34;
          goto LABEL_34;
        }

        *buf = 0;
        sub_100085FF4();
        v56 = 2;
LABEL_42:
        _os_log_error_impl(v51, v52, v53, v54, v55, v56);
        goto LABEL_32;
      }

      if (setxattr([v4 fileSystemRepresentation], objc_msgSend(v31, "UTF8String"), objc_msgSend(v30, "bytes"), objc_msgSend(v30, "length"), 0, 1))
      {
        v57 = sub_100063A54();
        if (!sub_100086030(v57))
        {
          goto LABEL_32;
        }

        *buf = 138543362;
        v99 = v4;
        sub_100085FF4();
        v56 = 12;
        goto LABEL_42;
      }

      v33 = v33 + 1;
      v34 = v30;
      v35 = v31;
    }

    while (v28 != v33);
    v28 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

  v5 = v88;
  self = v29;
LABEL_21:

  v37 = [(MSDFileMetadata *)self getFileType];
  v38 = [v37 isEqualToString:NSFileTypeSymbolicLink];

  if ((v38 & 1) == 0)
  {
    v40 = [(MSDFileMetadata *)self getAccessControlList];
    v41 = [v40 length];

    if (v41)
    {
      v42 = [(MSDFileMetadata *)self getAccessControlList];
      self = acl_copy_int([v42 bytes]);

      if (!self)
      {
        v43 = sub_100063A54();
        if (sub_100086030(v43))
        {
          goto LABEL_65;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v58 = acl_init(0);
      if (!v58)
      {
        v70 = sub_100063A54();
        if (sub_100086030(v70))
        {
LABEL_65:
          v81 = __error();
          v82 = strerror(*v81);
          sub_100085FD8(v82, 5.8382e-34);
          sub_100085FF4();
          _os_log_error_impl(v83, v84, v85, v86, v87, 0x16u);
        }

LABEL_60:

        goto LABEL_22;
      }

      self = v58;
    }

    v16 = v89;
    if (acl_valid(self))
    {
      v65 = v5;
      v66 = sub_100063A54();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      v67 = __error();
      v68 = strerror(*v67);
      sub_100085FD8(v68, 5.8382e-34);
      v69 = "Could not validate ACL for %{public}@ with error - %{public}s";
    }

    else
    {
      if (!acl_set_file([v4 fileSystemRepresentation], ACL_TYPE_EXTENDED, self))
      {
LABEL_39:
        acl_free(self);
        v31 = 0;
        v39 = 1;
        goto LABEL_40;
      }

      v65 = v5;
      v66 = sub_100063A54();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
LABEL_58:

        v5 = v65;
        goto LABEL_39;
      }

      v79 = __error();
      v80 = strerror(*v79);
      sub_100085FD8(v80, 5.8382e-34);
      v69 = "Could not set ACL for %{public}@ with error - %{public}s";
    }

    _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, v69, buf, 0x16u);
    goto LABEL_58;
  }

LABEL_22:
  v31 = 0;
  v39 = 1;
LABEL_34:
  v16 = v89;
LABEL_40:

  return v39;
}

@end