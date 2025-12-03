@interface LSBundleRecord
+ (id)sr_bundleRecordWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)sr_isSocialNetworking;
- (BOOL)sr_supportsDataGeneration;
- (BOOL)sr_supportsMessagingIntents;
- (BOOL)sr_supportsVOIP;
@end

@implementation LSBundleRecord

+ (id)sr_bundleRecordWithIdentifier:(id)identifier error:(id *)error
{
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifier allowPlaceholder:0 error:error];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v4;
}

- (BOOL)sr_supportsVOIP
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([-[LSBundleRecord UIBackgroundModes](self "UIBackgroundModes")])
  {
    return 1;
  }

  appTags = [(LSBundleRecord *)self appTags];

  return [appTags containsObject:@"any-telephony"];
}

- (BOOL)sr_supportsMessagingIntents
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([-[LSBundleRecord supportedIntents](self "supportedIntents")] & 1) == 0)
    {
      applicationExtensionRecords = [(LSBundleRecord *)self applicationExtensionRecords];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = [applicationExtensionRecords countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (!v3)
      {
        return v3;
      }

      v6 = v3;
      v7 = *v11;
LABEL_10:
      v8 = 0;
      while (1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(applicationExtensionRecords);
        }

        if ([objc_msgSend(*(*(&v10 + 1) + 8 * v8) "supportedIntents")])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [applicationExtensionRecords countByEnumeratingWithState:&v10 objects:v14 count:16];
          LOBYTE(v3) = 0;
          if (v6)
          {
            goto LABEL_10;
          }

          return v3;
        }
      }
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      supportedIntents = [(LSBundleRecord *)self supportedIntents];

      LOBYTE(v3) = [supportedIntents containsObject:@"INSendMessageIntent"];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)sr_supportsDataGeneration
{
  v2 = [-[LSBundleRecord infoDictionary](self "infoDictionary")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  return [v2 BOOLValue];
}

- (BOOL)sr_isSocialNetworking
{
  objc_opt_class();
  selfCopy = self;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      containingBundleRecord = [(LSBundleRecord *)self containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy = containingBundleRecord;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  v5 = [-[LSBundleRecord iTunesMetadata](selfCopy "iTunesMetadata")];
  v6 = [-[LSBundleRecord iTunesMetadata](selfCopy "iTunesMetadata")];
  infoDictionary = [(LSBundleRecord *)selfCopy infoDictionary];
  v8 = objc_opt_class();
  v9 = [infoDictionary objectForKey:@"SBMatchingApplicationGenres" ofClass:v8 valuesOfClass:objc_opt_class()];
  if (qword_100071A50 != -1)
  {
    dispatch_once(&qword_100071A50, &stru_100060FA0);
    v10 = qword_100071A58;
    if (!os_log_type_enabled(qword_100071A58, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = qword_100071A58;
  if (os_log_type_enabled(qword_100071A58, OS_LOG_TYPE_INFO))
  {
LABEL_9:
    v12 = 138478595;
    bundleIdentifier = [(LSBundleRecord *)self bundleIdentifier];
    v14 = 2050;
    v15 = v5;
    v16 = 2113;
    v17 = v6;
    v18 = 2113;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "bundle id: %{private}@, genre id: %{public}llu, genre: %{private}@, genres: %{private}@", &v12, 0x2Au);
  }

LABEL_10:
  if (v5 == 6005 || ([v6 isEqualToString:@"Social Networking"] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [v9 containsObject:@"Social Networking"];
  }
}

@end