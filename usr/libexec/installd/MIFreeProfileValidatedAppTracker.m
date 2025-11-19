@interface MIFreeProfileValidatedAppTracker
+ (id)sharedTracker;
- (BOOL)_onQueue_addAppIdentifierIfCachedOnContainer:(id)a3 error:(id *)a4;
- (BOOL)_onQueue_addReferenceForApplicationIdentifier:(id)a3 bundle:(id)a4 error:(id *)a5;
- (BOOL)_onQueue_discoverReferencesWithError:(id *)a3;
- (BOOL)_onQueue_removeReferenceForBundle:(id)a3 error:(id *)a4;
- (BOOL)addReferenceForApplicationIdentifier:(id)a3 bundle:(id)a4 error:(id *)a5;
- (BOOL)removeReferenceForBundle:(id)a3 error:(id *)a4;
- (MIFreeProfileValidatedAppTracker)init;
- (void)invalidateCache;
@end

@implementation MIFreeProfileValidatedAppTracker

+ (id)sharedTracker
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039AE4;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A96B0 != -1)
  {
    dispatch_once(&qword_1000A96B0, block);
  }

  v2 = qword_1000A96A8;

  return v2;
}

- (MIFreeProfileValidatedAppTracker)init
{
  v8.receiver = self;
  v8.super_class = MIFreeProfileValidatedAppTracker;
  v2 = [(MIFreeProfileValidatedAppTracker *)&v8 init];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.installd.MIFreeProfileValidatedAppTracker", v3), q = v2->_q, v2->_q = v4, q, v3, !v2->_q))
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

- (void)invalidateCache
{
  v3 = [(MIFreeProfileValidatedAppTracker *)self q];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039C78;
  block[3] = &unk_100090D48;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)_onQueue_addAppIdentifierIfCachedOnContainer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100039E10;
  v21 = sub_100039E20;
  v22 = 0;
  v7 = [v6 containerURL];
  v8 = +[MIFileManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100039E28;
  v16[3] = &unk_100091888;
  v16[4] = self;
  v16[5] = &v17;
  v9 = [v8 enumerateURLsForItemsInDirectoryAtURL:v7 ignoreSymlinks:1 withBlock:v16];

  v10 = v18[5];
  if (v10 || (v10 = v9) != 0)
  {
    v11 = v10;
    v12 = v11;
    if (a4)
    {
      v13 = v11;
      v14 = 0;
      *a4 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v12 = 0;
    v14 = 1;
  }

  _Block_object_dispose(&v17, 8);
  return v14;
}

- (BOOL)_onQueue_discoverReferencesWithError:(id *)a3
{
  v5 = [(MIFreeProfileValidatedAppTracker *)self q];
  dispatch_assert_queue_V2(v5);

  v6 = objc_opt_new();
  [(MIFreeProfileValidatedAppTracker *)self setRefs:v6];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100039E10;
  v20 = sub_100039E20;
  v21 = 0;
  v7 = +[MIGlobalConfiguration sharedInstance];
  v8 = [v7 primaryPersonaString];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003A138;
  v15[3] = &unk_1000918B0;
  v15[4] = self;
  v15[5] = &v16;
  v9 = [MIMCMContainer enumerateContainersWithClass:1 forPersona:v8 isTransient:0 identifiers:0 groupIdentifiers:0 usingBlock:v15];

  v10 = v17[5];
  if (v10)
  {
    v11 = v10;

    v12 = 0;
    v9 = v11;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = v9 == 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v12)
  {
    v13 = v9;
    *a3 = v9;
  }

LABEL_7:

  _Block_object_dispose(&v16, 8);
  return v12;
}

- (BOOL)_onQueue_addReferenceForApplicationIdentifier:(id)a3 bundle:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MIFreeProfileValidatedAppTracker *)self q];
  dispatch_assert_queue_V2(v10);

  v11 = +[MIFileManager defaultManager];
  if (([v9 isPlaceholder] & 1) != 0 || objc_msgSend(v9, "bundleType") != 4)
  {
    v14 = 0;
    goto LABEL_6;
  }

  v12 = [(MIFreeProfileValidatedAppTracker *)self refs];
  if (v12)
  {

    v13 = 0;
  }

  else
  {
    v33 = 0;
    v17 = [(MIFreeProfileValidatedAppTracker *)self _onQueue_discoverReferencesWithError:&v33];
    v13 = v33;
    v14 = v13;
    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v18 = [(MIFreeProfileValidatedAppTracker *)self refs];
  if ([v18 count] <= 2)
  {

    goto LABEL_13;
  }

  v19 = [(MIFreeProfileValidatedAppTracker *)self refs];
  v20 = [v19 containsObject:v8];

  if (v20)
  {
LABEL_13:
    v26 = [v9 bundleURL];
    v32 = v13;
    v27 = [v11 setValidatedByFreeProfileAppIdentifier:v8 insecurelyCachedOnBundle:v26 error:&v32];
    v14 = v32;

    if ((v27 & 1) == 0)
    {
      v29 = MIInstallerErrorDomain;
      v22 = [v9 bundleURL];
      v23 = [v22 path];
      v25 = sub_100010734("[MIFreeProfileValidatedAppTracker _onQueue_addReferenceForApplicationIdentifier:bundle:error:]", 176, v29, 4, v14, 0, @"Failed to set app identifier (%@) for %@", v30, v8);
      v13 = v14;
      goto LABEL_16;
    }

    v28 = [(MIFreeProfileValidatedAppTracker *)self refs];
    [v28 addObject:v8];

LABEL_6:
    v15 = 1;
    goto LABEL_7;
  }

  v21 = MIInstallerErrorDomain;
  v34[0] = @"LegacyErrorString";
  v34[1] = MILibMISErrorNumberKey;
  v35[0] = @"ApplicationVerificationFailed";
  v35[1] = &off_10009B6E0;
  v22 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  v23 = [(MIFreeProfileValidatedAppTracker *)self refs];
  v25 = sub_100010734("[MIFreeProfileValidatedAppTracker _onQueue_addReferenceForApplicationIdentifier:bundle:error:]", 171, v21, 13, 0, v22, @"This device has reached the maximum number of installed apps using a free developer profile: %@", v24, v23);
LABEL_16:

  v14 = v25;
LABEL_17:
  if (a5)
  {
    v31 = v14;
    v15 = 0;
    *a5 = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_7:

  return v15;
}

- (BOOL)addReferenceForApplicationIdentifier:(id)a3 bundle:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100039E10;
  v24 = sub_100039E20;
  v25 = 0;
  v10 = [(MIFreeProfileValidatedAppTracker *)self q];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A678;
  block[3] = &unk_100091638;
  v18 = &v26;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(v10, block);

  v13 = *(v27 + 24);
  if (a5 && (v27[3] & 1) == 0)
  {
    *a5 = v21[5];
    v13 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13 & 1;
}

- (BOOL)_onQueue_removeReferenceForBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([v6 isPlaceholder] & 1) != 0 || objc_msgSend(v6, "bundleType") != 4)
  {
    goto LABEL_12;
  }

  v7 = +[MIFileManager defaultManager];
  v8 = [v6 bundleURL];
  v26 = 0;
  v9 = [v7 insecureCachedAppIdentifierIfValidatedByFreeProfileForBundle:v8 error:&v26];
  v10 = v26;

  if (v9)
  {
    v11 = [v9 rangeOfString:@"."];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || (v13 = v11 + 1, v11 + 1 >= [v9 length]))
    {
      sub_100010734("[MIFreeProfileValidatedAppTracker _onQueue_removeReferenceForBundle:error:]", 229, MIInstallerErrorDomain, 4, 0, 0, @"Cached app identifier contains invalid data (%@)", v12, v9);
      v14 = 0;
      v10 = v18 = v10;
    }

    else
    {
      v14 = [v9 substringFromIndex:v13];
      v15 = [v6 identifier];
      v16 = [v14 isEqualToString:v15];

      if (v16)
      {
        v17 = [(MIFreeProfileValidatedAppTracker *)self refs];
        [v17 removeObject:v9];

        MIUninstallProfilesForAppIdentifier();
LABEL_13:
        v20 = 1;
        goto LABEL_14;
      }

      v22 = MIInstallerErrorDomain;
      v18 = [v6 identifier];
      v24 = sub_100010734("[MIFreeProfileValidatedAppTracker _onQueue_removeReferenceForBundle:error:]", 234, v22, 4, 0, 0, @"Cached bundle identifier (%@) does not match bundle identifier (%@)", v23, v14);

      v10 = v24;
    }

    goto LABEL_18;
  }

  v18 = [v10 domain];
  if ([v18 isEqualToString:NSPOSIXErrorDomain])
  {
    v19 = [v10 code];

    if (v19 != 93)
    {
      v14 = 0;
      goto LABEL_19;
    }

LABEL_12:
    v9 = 0;
    v14 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v14 = 0;
LABEL_18:

LABEL_19:
  if (a4)
  {
    v25 = v10;
    v20 = 0;
    *a4 = v10;
  }

  else
  {
    v20 = 0;
  }

LABEL_14:

  return v20;
}

- (BOOL)removeReferenceForBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100039E10;
  v19 = sub_100039E20;
  v20 = 0;
  v7 = [(MIFreeProfileValidatedAppTracker *)self q];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003AAFC;
  v11[3] = &unk_100090CD8;
  v13 = &v21;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(v7, v11);

  v9 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

@end