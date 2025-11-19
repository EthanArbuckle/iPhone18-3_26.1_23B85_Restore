@interface MISafeHarborManager
+ (id)defaultManager;
- (BOOL)registerSafeHarborAtURL:(id)a3 withOptions:(id)a4 forIdentifier:(id)a5 forPersona:(id)a6 ofType:(unint64_t)a7 error:(id *)a8;
- (BOOL)removeSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 ofType:(unint64_t)a5 options:(id)a6 error:(id *)a7;
- (id)safeHarborListForType:(unint64_t)a3 forPersona:(id)a4 withError:(id *)a5;
@end

@implementation MISafeHarborManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AB70;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A96D0 != -1)
  {
    dispatch_once(&qword_1000A96D0, block);
  }

  v2 = qword_1000A96C8;

  return v2;
}

- (BOOL)registerSafeHarborAtURL:(id)a3 withOptions:(id)a4 forIdentifier:(id)a5 forPersona:(id)a6 ofType:(unint64_t)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v17 = a6;
  if (a7 <= 7 && ((1 << a7) & 0x94) != 0)
  {
    sub_100054630(v15);
    v18 = +[MIHelperServiceClient sharedInstance];
    v24 = 0;
    v19 = [v18 createSafeHarborWithIdentifier:v15 forPersona:v17 containerType:a7 andMigrateDataFrom:v13 withError:&v24];
    v20 = v24;

    if ((v19 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      if (a8)
      {
        v21 = v20;
        *a8 = v20;
      }
    }

    sub_100054780(v15);
  }

  else
  {
    v22 = sub_100010734("[MISafeHarborManager registerSafeHarborAtURL:withOptions:forIdentifier:forPersona:ofType:error:]", 257, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v16, a7);
    if (a8)
    {
      v22 = v22;
      *a8 = v22;
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)removeSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 ofType:(unint64_t)a5 options:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v14 = a6;
  if (a5 <= 7 && ((1 << a5) & 0x94) != 0)
  {
    sub_100054630(v11);
    v33 = 0;
    v15 = 1;
    v16 = [MIContainer containerWithIdentifier:v11 forPersona:v12 ofContentClass:a5 createIfNeeded:0 created:0 error:&v33];
    v17 = v33;
    v19 = v17;
    if (!v16)
    {
      v24 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 321, MIInstallerErrorDomain, 26, v17, 0, @"Safe harbor with identifier %@ persona %@ of type %ld not found", v18, v11);
      v20 = 0;
      v16 = 0;
      goto LABEL_17;
    }

    v32 = v17;
    v20 = [v16 infoValueForKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v32];
    v21 = v32;

    if (v20)
    {
      v31 = v21;
      v22 = [v16 removeUnderlyingContainerWaitingForDeletion:0 error:&v31];
      v19 = v31;

      if (v22)
      {

        LOBYTE(a7) = 1;
LABEL_20:
        sub_100054780(v11);
        goto LABEL_21;
      }

      v24 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 337, MIInstallerErrorDomain, 4, v19, 0, @"Failed to destroy safe harbor container %@", v23, v16);
LABEL_17:

      if (a7)
      {
        goto LABEL_18;
      }

LABEL_9:

      goto LABEL_19;
    }

    v25 = [v21 domain];
    if ([v25 isEqualToString:MIContainerManagerErrorDomain])
    {
      v26 = [v21 code];

      if (v26 == 24)
      {
        v28 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 329, MIInstallerErrorDomain, 26, v21, 0, @"Safe harbor with identifier %@ persona %@ of type %ld was already installed.", v27, v11);
LABEL_16:
        v24 = v28;
        v20 = 0;
        v19 = v21;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v28 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 331, MIInstallerErrorDomain, 4, v21, 0, @"Unable to get safe harbor container attribute from container %@ : %@", v27, v16);
    goto LABEL_16;
  }

  v15 = 0;
  v24 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 312, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v13, a5);
  v20 = 0;
  v16 = 0;
  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_18:
  v29 = v24;
  *a7 = v24;

  LOBYTE(a7) = 0;
LABEL_19:
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_21:

  return a7;
}

- (id)safeHarborListForType:(unint64_t)a3 forPersona:(id)a4 withError:(id *)a5
{
  v34 = a4;
  v35 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (a3 > 7 || ((1 << a3) & 0x94) == 0)
  {
    v7 = 0;
    v14 = sub_100010734("[MISafeHarborManager safeHarborListForType:forPersona:withError:]", 384, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v6, a3);
    v28 = 0;
    goto LABEL_43;
  }

  sub_100054C30();
  v43 = 0;
  v7 = 1;
  v8 = [MIContainer containersWithClass:a3 personaUniqueString:v34 error:&v43];
  v9 = v43;
  v11 = v9;
  if (!v8)
  {
    v14 = sub_100010734("[MISafeHarborManager safeHarborListForType:forPersona:withError:]", 393, MIInstallerErrorDomain, 4, v9, 0, @"Failed to get list of containers of type %ld for persona %@: %@", v10, a3);
    v28 = 0;
    goto LABEL_42;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v12)
  {
    v14 = v11;
    goto LABEL_41;
  }

  v13 = *v40;
  v36 = MIContainerManagerErrorDomain;
  v14 = v11;
  do
  {
    v15 = 0;
    v16 = v14;
    do
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v39 + 1) + 8 * v15);
      v18 = objc_autoreleasePoolPush();
      v38 = v16;
      v19 = [v17 infoValueForKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v38];
      v14 = v38;

      if (v19)
      {
        objc_opt_class();
        v20 = v19;
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v24 = [v20 mutableCopy];
          v25 = [v17 containerURL];
          v26 = [v25 path];

          if (v26)
          {
            [v24 setObject:v26 forKeyedSubscript:@"HarborPathKey"];
            v27 = [v17 identifier];
            if (v27)
            {
              [v35 setObject:v24 forKeyedSubscript:v27];
            }

            else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              MOLogWrite();
            }
          }

          else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            MOLogWrite();
          }
        }

        else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v22 = [v14 domain];
        if ([v22 isEqualToString:v36])
        {
          v23 = [v14 code] == 24;

          if (v23)
          {
            goto LABEL_35;
          }
        }

        else
        {
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
LABEL_22:
          MOLogWrite();
        }
      }

LABEL_35:

      objc_autoreleasePoolPop(v18);
      v15 = v15 + 1;
      v16 = v14;
    }

    while (v12 != v15);
    v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  }

  while (v12);
LABEL_41:

  v7 = 1;
  v28 = [v35 copy];
  v11 = obj;
LABEL_42:

LABEL_43:
  if (a5 && !v28)
  {
    v29 = v14;
    *a5 = v14;
  }

  if (v7)
  {
    sub_100054DC0(v30, v31);
  }

  return v28;
}

@end