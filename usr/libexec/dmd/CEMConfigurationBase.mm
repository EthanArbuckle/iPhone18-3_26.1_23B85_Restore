@interface CEMConfigurationBase
- (id)dmf_installSynthesizedProfileRequestWithAssetProviders:(id)a3 error:(id *)a4;
- (id)dmf_removeSynthesizedProfileRequestWithError:(id *)a3;
@end

@implementation CEMConfigurationBase

- (id)dmf_installSynthesizedProfileRequestWithAssetProviders:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSMutableDictionary dictionaryWithCapacity:2];
  v8 = [(CEMConfigurationBase *)self synthesizeProfileOutUUIDs:v7 withOldUUIDs:0 assetProviders:v6];

  v9 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10007BA64();
  }

  v10 = [v8 objectForKeyedSubscript:@"PayloadContent"];
  v11 = [v10 count];

  if (!v11)
  {
    v12 = objc_opt_new();
    [v12 setType:0];
    [v12 setProfile:v8];
    v20 = 0;
    v16 = [DMDRemoveConfigurationOperation validateRequest:v12 error:&v20];
    v14 = v20;
    if ((v16 & 1) == 0)
    {
      v15 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10007BB5C(v14);
      }

      goto LABEL_11;
    }

LABEL_8:
    v12 = v12;
    v17 = v12;
    goto LABEL_14;
  }

  v12 = objc_opt_new();
  [v12 setProfile:v8];
  [v12 setType:0];
  v21 = 0;
  v13 = [DMDInstallConfigurationOperation validateRequest:v12 error:&v21];
  v14 = v21;
  if (v13)
  {
    goto LABEL_8;
  }

  v15 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10007BAD8(v14);
  }

LABEL_11:

  if (a4)
  {
    v18 = v14;
    v17 = 0;
    *a4 = v14;
  }

  else
  {
    v17 = 0;
  }

LABEL_14:

  return v17;
}

- (id)dmf_removeSynthesizedProfileRequestWithError:(id *)a3
{
  v5 = [NSMutableDictionary dictionaryWithCapacity:2];
  v6 = [(CEMConfigurationBase *)self synthesizeProfileOutUUIDs:v5 withOldUUIDs:0 assetProviders:&__NSDictionary0__struct];
  v7 = DMFConfigurationEngineLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10007BA64();
  }

  v8 = objc_opt_new();
  [v8 setType:0];
  [v8 setProfile:v6];
  v15 = 0;
  v9 = [DMDRemoveConfigurationOperation validateRequest:v8 error:&v15];
  v10 = v15;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v12 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007BB5C(v10);
    }

    if (a3)
    {
      v13 = v10;
      v11 = 0;
      *a3 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end