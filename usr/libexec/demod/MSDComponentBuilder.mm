@interface MSDComponentBuilder
- (BOOL)isDuplicateApp:(id)a3;
- (MSDComponentBuilder)initWithSignedManifest:(id)a3 andOptions:(id)a4;
- (id)_buildAppComponentsNotInManifest:(id)a3;
- (id)buildComponentsFromManifest;
- (id)buildComponentsNotInManifest;
@end

@implementation MSDComponentBuilder

- (MSDComponentBuilder)initWithSignedManifest:(id)a3 andOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = MSDComponentBuilder;
  v8 = [(MSDComponentBuilder *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(MSDComponentBuilder *)v8 setSignedManifest:v6];
    [(MSDComponentBuilder *)v9 setIsCriticalUpdate:0];
    [(MSDComponentBuilder *)v9 setForBackgroundDownload:0];
    [(MSDComponentBuilder *)v9 setVerifyHashBeforeStaging:0];
    [(MSDComponentBuilder *)v9 setAppItemToDefer:0];
    v10 = [v7 objectForKey:@"IsCriticalUpdate"];
    v11 = v10;
    if (v10)
    {
      -[MSDComponentBuilder setIsCriticalUpdate:](v9, "setIsCriticalUpdate:", [v10 BOOLValue]);
    }

    v12 = [v7 objectForKey:@"ForBackgroundDownload"];
    v13 = v12;
    if (v12)
    {
      -[MSDComponentBuilder setForBackgroundDownload:](v9, "setForBackgroundDownload:", [v12 BOOLValue]);
    }

    v14 = [v7 objectForKey:@"VerifyHashBeforeStaging"];
    v15 = v14;
    if (v14)
    {
      -[MSDComponentBuilder setVerifyHashBeforeStaging:](v9, "setVerifyHashBeforeStaging:", [v14 BOOLValue]);
    }

    v16 = [v7 objectForKey:@"AppItemToDefer"];
    if (v16)
    {
      [(MSDComponentBuilder *)v9 setAppItemToDefer:v16];
    }
  }

  return v9;
}

- (id)buildComponentsFromManifest
{
  v3 = [(MSDComponentBuilder *)self isCriticalUpdate];
  v4 = [(MSDComponentBuilder *)self signedManifest];
  v5 = v4;
  if (v3)
  {
    [v4 criticalComponents];
  }

  else
  {
    [v4 installationOrder];
  }
  v6 = ;

  v7 = +[MSDAppHelper sharedInstance];
  v8 = [v7 installedApps];

  v9 = [(MSDComponentBuilder *)self signedManifest];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 getVersion]);

  v11 = +[MSDProgressUpdater sharedInstance];
  v12 = [v11 bundleInProgress];

  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100031BD8;
  v48[4] = sub_100031BE8;
  v13 = [MSDOperationBuilder alloc];
  v14 = [(MSDComponentBuilder *)self signedManifest];
  v49 = [(MSDOperationBuilder *)v13 initWithSignedManifest:v14 forBackgroundDownload:[(MSDComponentBuilder *)self forBackgroundDownload] verifyHashBeforeStaging:[(MSDComponentBuilder *)self verifyHashBeforeStaging]];

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100031BD8;
  v46 = sub_100031BE8;
  v47 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100031BD8;
  v40 = sub_100031BE8;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100031BF0;
  v23 = &unk_10016A780;
  v15 = v10;
  v24 = v15;
  v16 = v12;
  v25 = v16;
  v26 = self;
  v28 = v48;
  v17 = v8;
  v27 = v17;
  v29 = &v36;
  v30 = &v42;
  v31 = &v32;
  [v6 enumerateObjectsUsingBlock:&v20];
  if (v33[3])
  {
    if (v37[5])
    {
      [v43[5] addObject:{v20, v21, v22, v23, v24, v25, v26}];
    }

    v18 = [v43[5] copy];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v48, 8);

  return v18;
}

- (BOOL)isDuplicateApp:(id)a3
{
  v4 = a3;
  v5 = [(MSDComponentBuilder *)self signedManifest];
  v6 = [v5 getAppManifest:v4];

  if (!v6)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = +[MSDAppHelper sharedInstance];
  v8 = [v7 bundlePathForInstalledApp:v4];

  v9 = [MSDiOSApp appWithPath:v8];
  v10 = [v9 uniqueIdentifier];
  v11 = [v6 objectForKey:@"Identifier"];
  if ([v10 isEqualToString:v11])
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v12 = sub_100063A54();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The app %{public}@ has a different version installed.  Will need to remove currently installed version in preparation for newer version.", &v15, 0xCu);
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (id)_buildAppComponentsNotInManifest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(MSDComponentBuilder *)self signedManifest];
  v7 = [v6 getAppList];

  v8 = +[MSDAppHelper sharedInstance];
  v9 = [v8 installedApps];

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Building components for removing app not in manifest...", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v27;
    *&v13 = 138543362;
    v25 = v13;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v7 objectForKey:{v17, v25, v26}];

        if (!v18)
        {
          v19 = sub_100063A54();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v31 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Building component for removing app: %{public}@", buf, 0xCu);
          }

          v20 = [v4 buildAppRemovalOperationsWithIdentifier:v17];
          if (!v20 || (v21 = [[MSDComponent alloc] initWithName:v17 andOperations:v20]) == 0)
          {
            sub_1000CD394(v20, v11);
            v23 = 0;
            goto LABEL_17;
          }

          v22 = v21;
          [(MSDComponent *)v21 setForRemoval:1];
          [v5 addObject:v22];
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v23 = v5;
LABEL_17:

  return v23;
}

- (id)buildComponentsNotInManifest
{
  v3 = [MSDOperationBuilder alloc];
  v4 = [(MSDComponentBuilder *)self signedManifest];
  v5 = [(MSDOperationBuilder *)v3 initWithSignedManifest:v4 forBackgroundDownload:[(MSDComponentBuilder *)self forBackgroundDownload] verifyHashBeforeStaging:[(MSDComponentBuilder *)self verifyHashBeforeStaging]];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(MSDComponentBuilder *)self _buildAppComponentsNotInManifest:v5];
  if (v7)
  {
    [v6 addObjectsFromArray:v7];
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end