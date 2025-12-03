@interface MISafeHarborManager
+ (id)defaultManager;
- (BOOL)registerSafeHarborAtURL:(id)l withOptions:(id)options forIdentifier:(id)identifier forPersona:(id)persona ofType:(unint64_t)type error:(id *)error;
- (BOOL)removeSafeHarborWithIdentifier:(id)identifier forPersona:(id)persona ofType:(unint64_t)type options:(id)options error:(id *)error;
- (id)safeHarborListForType:(unint64_t)type forPersona:(id)persona withError:(id *)error;
@end

@implementation MISafeHarborManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AB70;
  block[3] = &unk_100090CF8;
  block[4] = self;
  if (qword_1000A96D0 != -1)
  {
    dispatch_once(&qword_1000A96D0, block);
  }

  v2 = qword_1000A96C8;

  return v2;
}

- (BOOL)registerSafeHarborAtURL:(id)l withOptions:(id)options forIdentifier:(id)identifier forPersona:(id)persona ofType:(unint64_t)type error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  identifierCopy = identifier;
  personaCopy = persona;
  if (type <= 7 && ((1 << type) & 0x94) != 0)
  {
    sub_100054630(identifierCopy);
    v18 = +[MIHelperServiceClient sharedInstance];
    v24 = 0;
    v19 = [v18 createSafeHarborWithIdentifier:identifierCopy forPersona:personaCopy containerType:type andMigrateDataFrom:lCopy withError:&v24];
    v20 = v24;

    if ((v19 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        MOLogWrite();
      }

      if (error)
      {
        v21 = v20;
        *error = v20;
      }
    }

    sub_100054780(identifierCopy);
  }

  else
  {
    v22 = sub_100010734("[MISafeHarborManager registerSafeHarborAtURL:withOptions:forIdentifier:forPersona:ofType:error:]", 257, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v16, type);
    if (error)
    {
      v22 = v22;
      *error = v22;
    }

    v19 = 0;
  }

  return v19;
}

- (BOOL)removeSafeHarborWithIdentifier:(id)identifier forPersona:(id)persona ofType:(unint64_t)type options:(id)options error:(id *)error
{
  identifierCopy = identifier;
  personaCopy = persona;
  optionsCopy = options;
  if (type <= 7 && ((1 << type) & 0x94) != 0)
  {
    sub_100054630(identifierCopy);
    v33 = 0;
    v15 = 1;
    v16 = [MIContainer containerWithIdentifier:identifierCopy forPersona:personaCopy ofContentClass:type createIfNeeded:0 created:0 error:&v33];
    v17 = v33;
    v19 = v17;
    if (!v16)
    {
      v24 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 321, MIInstallerErrorDomain, 26, v17, 0, @"Safe harbor with identifier %@ persona %@ of type %ld not found", v18, identifierCopy);
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

        LOBYTE(error) = 1;
LABEL_20:
        sub_100054780(identifierCopy);
        goto LABEL_21;
      }

      v24 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 337, MIInstallerErrorDomain, 4, v19, 0, @"Failed to destroy safe harbor container %@", v23, v16);
LABEL_17:

      if (error)
      {
        goto LABEL_18;
      }

LABEL_9:

      goto LABEL_19;
    }

    domain = [v21 domain];
    if ([domain isEqualToString:MIContainerManagerErrorDomain])
    {
      code = [v21 code];

      if (code == 24)
      {
        v28 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 329, MIInstallerErrorDomain, 26, v21, 0, @"Safe harbor with identifier %@ persona %@ of type %ld was already installed.", v27, identifierCopy);
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
  v24 = sub_100010734("[MISafeHarborManager removeSafeHarborWithIdentifier:forPersona:ofType:options:error:]", 312, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v13, type);
  v20 = 0;
  v16 = 0;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_18:
  v29 = v24;
  *error = v24;

  LOBYTE(error) = 0;
LABEL_19:
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_21:

  return error;
}

- (id)safeHarborListForType:(unint64_t)type forPersona:(id)persona withError:(id *)error
{
  personaCopy = persona;
  v35 = [NSMutableDictionary dictionaryWithCapacity:0];
  if (type > 7 || ((1 << type) & 0x94) == 0)
  {
    v7 = 0;
    v14 = sub_100010734("[MISafeHarborManager safeHarborListForType:forPersona:withError:]", 384, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v6, type);
    v28 = 0;
    goto LABEL_43;
  }

  sub_100054C30();
  v43 = 0;
  v7 = 1;
  v8 = [MIContainer containersWithClass:type personaUniqueString:personaCopy error:&v43];
  v9 = v43;
  v11 = v9;
  if (!v8)
  {
    v14 = sub_100010734("[MISafeHarborManager safeHarborListForType:forPersona:withError:]", 393, MIInstallerErrorDomain, 4, v9, 0, @"Failed to get list of containers of type %ld for persona %@: %@", v10, type);
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
          containerURL = [v17 containerURL];
          path = [containerURL path];

          if (path)
          {
            [v24 setObject:path forKeyedSubscript:@"HarborPathKey"];
            identifier = [v17 identifier];
            if (identifier)
            {
              [v35 setObject:v24 forKeyedSubscript:identifier];
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
        domain = [v14 domain];
        if ([domain isEqualToString:v36])
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
  if (error && !v28)
  {
    v29 = v14;
    *error = v14;
  }

  if (v7)
  {
    sub_100054DC0(v30, v31);
  }

  return v28;
}

@end