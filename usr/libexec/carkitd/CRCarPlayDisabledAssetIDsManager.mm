@interface CRCarPlayDisabledAssetIDsManager
- (BOOL)isAssetDisabled:(id)disabled accessoryContentVersion:(id)version iosContentVersion:(id)contentVersion;
- (CRCarPlayDisabledAssetIDsManager)init;
- (CRCarPlayDisabledAssetIDsManager)initWithFile:(id)file;
@end

@implementation CRCarPlayDisabledAssetIDsManager

- (CRCarPlayDisabledAssetIDsManager)init
{
  v6.receiver = self;
  v6.super_class = CRCarPlayDisabledAssetIDsManager;
  v2 = [(CRCarPlayDisabledAssetIDsManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_ferriteDisabled = 0;
    disabledAssetIDsData = v2->_disabledAssetIDsData;
    v2->_disabledAssetIDsData = &__NSDictionary0__struct;
  }

  return v3;
}

- (CRCarPlayDisabledAssetIDsManager)initWithFile:(id)file
{
  fileCopy = file;
  self->_ferriteDisabled = 0;
  disabledAssetIDsData = self->_disabledAssetIDsData;
  self->_disabledAssetIDsData = &__NSDictionary0__struct;

  v27.receiver = self;
  v27.super_class = CRCarPlayDisabledAssetIDsManager;
  v6 = [(CRCarPlayDisabledAssetIDsManager *)&v27 init];
  if (v6)
  {
    v26 = 0;
    v25 = 0;
    v7 = [fileCopy getResourceValue:&v26 forKey:NSURLIsRegularFileKey error:&v25];
    v8 = v26;
    v9 = v25;
    if (v7)
    {
      if (v8)
      {
        if ([v8 BOOLValue])
        {
          v24 = 0;
          v10 = [NSDictionary dictionaryWithContentsOfURL:fileCopy error:&v24];
          v11 = v24;
          if (v11 || !v10)
          {
            v12 = CarGeneralLogging();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v29 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to load Disable Asset IDs plist: %@", buf, 0xCu);
            }

            goto LABEL_33;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v10 objectForKeyedSubscript:@"DisableClusterExperience"];
            v13 = [v10 objectForKeyedSubscript:@"Assets"];
            if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v6->_ferriteDisabled = [v12 BOOLValue];
            }

            else
            {
              v18 = CarGeneralLogging();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DisableClusterExperience is not in plist", buf, 2u);
              }
            }

            if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v19 = v13;
              p_super = &v6->_disabledAssetIDsData->super;
              v6->_disabledAssetIDsData = v19;
            }

            else
            {
              p_super = CarGeneralLogging();
              if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
              {
                v21 = objc_opt_class();
                *buf = 138412290;
                v29 = v21;
                v22 = v21;
                _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Failed to retrieve Disable Asset IDs.  Expected a dictionary and got %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v12 = CarGeneralLogging();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
LABEL_33:

              goto LABEL_34;
            }

            v17 = objc_opt_class();
            *buf = 138412290;
            v29 = v17;
            v13 = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to load plist.  Expected a dictionary and got %@", buf, 0xCu);
          }

          goto LABEL_33;
        }

        v11 = CarGeneralLogging();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v14 = "Disabled Asset IDs plist is not a regular file.";
          goto LABEL_17;
        }
      }

      else
      {
        v11 = CarGeneralLogging();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v14 = "Disabled Asset IDs plist file is not available (i.e. does not exist).";
LABEL_17:
          v15 = v11;
          v16 = 2;
          goto LABEL_18;
        }
      }
    }

    else
    {
      v11 = CarGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v9;
        v14 = "Disabled Asset IDs plist file is not available. Error=%@";
        v15 = v11;
        v16 = 12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

LABEL_34:
  }

  return v6;
}

- (BOOL)isAssetDisabled:(id)disabled accessoryContentVersion:(id)version iosContentVersion:(id)contentVersion
{
  disabledCopy = disabled;
  versionCopy = version;
  contentVersionCopy = contentVersion;
  if ([(CRCarPlayDisabledAssetIDsManager *)self ferriteDisabled])
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = disabledCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AssetID=%@ is disabled globally by plist.", buf, 0xCu);
    }

LABEL_28:
    v20 = 1;
    goto LABEL_29;
  }

  disabledAssetIDsData = [(CRCarPlayDisabledAssetIDsManager *)self disabledAssetIDsData];
  v10 = [disabledAssetIDsData objectForKeyedSubscript:disabledCopy];

  if (!v10)
  {
LABEL_24:
    v20 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = CarGeneralLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Disabled AssetID file is wrong format.", buf, 2u);
    }

    goto LABEL_24;
  }

  v25 = disabledCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v10;
  v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = *v28;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v27 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = CarGeneralLogging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Disabled AssetID file is wrong format.  Expected a dictionary", buf, 2u);
        }

LABEL_17:

        continue;
      }

      v17 = [v16 objectForKeyedSubscript:@"AccessoryContentVersion"];
      if (![v17 isEqual:versionCopy])
      {
        goto LABEL_17;
      }

      v18 = [v16 objectForKeyedSubscript:@"iOSContentVersion"];
      v19 = [v18 isEqual:contentVersionCopy];

      if (v19)
      {
        v22 = CarGeneralLogging();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        disabledCopy = v25;
        if (v23)
        {
          sub_1000853F8(v25, v22);
        }

        goto LABEL_28;
      }
    }

    v13 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v20 = 0;
  disabledCopy = v25;
LABEL_29:

  return v20;
}

@end