@interface MSDSignedManifestFactoryMetadata
+ (id)languageIdentifiersForMetadataList:(id)list;
+ (id)loadManifestMetadata:(id)metadata;
+ (id)metadataWithLanugageIdentifier:(id)identifier fromList:(id)list;
- (MSDSignedManifestFactoryMetadata)initWithContentPlistFile:(id)file;
- (id)description;
@end

@implementation MSDSignedManifestFactoryMetadata

+ (id)loadManifestMetadata:(id)metadata
{
  v22 = 0;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = sub_100093F4C;
  v20[3] = sub_100093F5C;
  metadataCopy = metadata;
  v21 = metadataCopy;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100093F4C;
  v17[4] = sub_100093F5C;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100093F4C;
  v15 = sub_100093F5C;
  v16 = objc_opt_new();
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:*(v20[0] + 40) isDirectory:&v22])
  {
    if (v22)
    {
      v5 = [v4 contentsOfDirectoryAtPath:*(v20[0] + 40) error:0];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100093F64;
      v10[3] = &unk_10016BB88;
      v10[4] = &v19;
      v10[5] = v17;
      v10[6] = &v11;
      [v5 enumerateObjectsUsingBlock:v10];
      goto LABEL_4;
    }

    v9 = sub_100063A54();
    sub_1000E2C08(v9, v20, &v23);
  }

  else
  {
    v8 = sub_100063A54();
    sub_1000E2B64(v8, v20, &v23);
  }

  v5 = 0;
LABEL_4:
  v6 = [v12[5] copy];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);

  _Block_object_dispose(&v19, 8);

  return v6;
}

+ (id)languageIdentifiersForMetadataList:(id)list
{
  listCopy = list;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          languageIdentifier = [v10 languageIdentifier];
          if (languageIdentifier)
          {
            [v4 addObject:languageIdentifier];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)metadataWithLanugageIdentifier:(id)identifier fromList:(id)list
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  listCopy = list;
  v7 = [listCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(listCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          languageIdentifier = [v10 languageIdentifier];
          if ([languageIdentifier isEqualToString:identifierCopy])
          {
            v7 = v10;

            goto LABEL_13;
          }
        }
      }

      v7 = [listCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (MSDSignedManifestFactoryMetadata)initWithContentPlistFile:(id)file
{
  fileCopy = file;
  v38.receiver = self;
  v38.super_class = MSDSignedManifestFactoryMetadata;
  v5 = [(MSDSignedManifestFactoryMetadata *)&v38 init];
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    if ([v6 fileExistsAtPath:fileCopy])
    {
      v7 = [NSMutableDictionary dictionaryWithContentsOfFile:fileCopy];
      v8 = sub_100063A54();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = fileCopy;
          v41 = 2114;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Content.plist at path %{public}@: %{public}@", buf, 0x16u);
        }

        v10 = [v7 objectForKey:@"Name"];
        name = v5->_name;
        v5->_name = v10;

        v12 = [v7 objectForKey:@"ManifestBundleID"];
        bundleID = v5->_bundleID;
        v5->_bundleID = v12;

        v14 = [v7 objectForKey:@"ManifestFileName"];
        fileName = v5->_fileName;
        v5->_fileName = v14;

        v16 = [v7 objectForKey:@"IsPrimaryBundle"];
        v17 = [v7 objectForKey:@"ManifestLanguageCode"];
        languageIdentifier = v5->_languageIdentifier;
        v5->_languageIdentifier = v17;

        v19 = [v7 objectForKey:@"ManifestRegionCode"];
        regionCode = v5->_regionCode;
        v5->_regionCode = v19;

        v21 = [v7 objectForKey:@"SupportRegionCodes"];
        supportedRegions = v5->_supportedRegions;
        v5->_supportedRegions = v21;

        if (v16)
        {
          bOOLValue = [v16 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v5->_isPrimaryBundle = bOOLValue;

        goto LABEL_10;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E2D84(fileCopy, v9, v32, v33, v34, v35, v36, v37);
      }
    }

    else
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E2D18(fileCopy, v9, v26, v27, v28, v29, v30, v31);
      }
    }

    v24 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v24 = v5;
LABEL_11:

  return v24;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(MSDSignedManifestFactoryMetadata *)self name];
  languageIdentifier = [(MSDSignedManifestFactoryMetadata *)self languageIdentifier];
  regionCode = [(MSDSignedManifestFactoryMetadata *)self regionCode];
  v8 = [NSString stringWithFormat:@"<%@: Name: %@ Language: %@; Region: %@>", v4, name, languageIdentifier, regionCode];;

  return v8;
}

@end