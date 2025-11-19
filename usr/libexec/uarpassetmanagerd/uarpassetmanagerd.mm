const char *AUDeveloperSettingsAccessoryFusingTypeToString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return "Dev";
    case 1:
      return "Prod";
    case 2:
      return "Unfused";
    case 3:
      return "Pending";
  }

  return "unrecognized";
}

uint64_t AUDeveloperSettingsAccessoryFusingStringToType(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if (location)
  {
    v11 = location;
    v12 = [NSString stringWithUTF8String:"Dev"];
    v13 = [v11 caseInsensitiveCompare:?];

    if (v13)
    {
      v8 = location;
      v9 = [NSString stringWithUTF8String:"Prod"];
      v10 = [v8 caseInsensitiveCompare:?];

      if (v10)
      {
        v5 = location;
        v6 = [NSString stringWithUTF8String:"Unfused"];
        v7 = [v5 caseInsensitiveCompare:?];

        if (v7)
        {
          v2 = location;
          v3 = [NSString stringWithUTF8String:"Pending"];
          v4 = [v2 caseInsensitiveCompare:?];

          if (v4)
          {
            v15 = 4;
          }

          else
          {
            v15 = 3;
          }
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 4;
  }

  objc_storeStrong(&location, 0);
  return v15;
}

const char *AUDeveloperSettingsURLTypeToString(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return "Livability";
    case 1:
      return "Internal Seed";
    case 2:
      return "Customer";
    case 3:
      return "Public Seed";
    case 4:
      return "Basejumper";
    case 5:
      return "Custom Basejumper";
    case 6:
      return "Mesu Staging";
    case 7:
      return "Internal Staging";
    case 8:
      return "Developer Seed";
  }

  return "unrecognized";
}

uint64_t AUDeveloperSettingsURLStringToType(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v26 = location;
  v27 = [NSString stringWithUTF8String:"Livability"];
  v28 = [v26 isEqualToString:?];

  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v23 = location;
    v24 = [NSString stringWithUTF8String:"Customer"];
    v25 = [v23 isEqualToString:?];

    if (v25)
    {
      v30 = 2;
    }

    else
    {
      v20 = location;
      v21 = [NSString stringWithUTF8String:"Basejumper"];
      v22 = [v20 isEqualToString:?];

      if (v22)
      {
        v30 = 4;
      }

      else
      {
        v17 = location;
        v18 = [NSString stringWithUTF8String:"Custom Basejumper"];
        v19 = [v17 isEqualToString:?];

        if (v19)
        {
          v30 = 5;
        }

        else
        {
          v14 = location;
          v15 = [NSString stringWithUTF8String:"Mesu Staging"];
          v16 = [v14 isEqualToString:?];

          if (v16)
          {
            v30 = 6;
          }

          else
          {
            v11 = location;
            v12 = [NSString stringWithUTF8String:"Public Seed"];
            v13 = [v11 isEqualToString:?];

            if (v13)
            {
              v30 = 3;
            }

            else
            {
              v8 = location;
              v9 = [NSString stringWithUTF8String:"Developer Seed"];
              v10 = [v8 isEqualToString:?];

              if (v10)
              {
                v30 = 8;
              }

              else
              {
                v5 = location;
                v6 = [NSString stringWithUTF8String:"Internal Seed"];
                v7 = [v5 isEqualToString:?];

                if (v7)
                {
                  v30 = 1;
                }

                else
                {
                  v2 = location;
                  v3 = [NSString stringWithUTF8String:"Internal Staging"];
                  v4 = [v2 isEqualToString:?];

                  if (v4)
                  {
                    v30 = 7;
                  }

                  else
                  {
                    v30 = 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_storeStrong(&location, 0);
  return v30;
}

id AUSettingsPallasAudienceTypeToString(void *a1)
{
  v13[1] = a1;
  v13[0] = 0;
  if (a1 == 1)
  {
    v1 = [NSString stringWithUTF8String:"Customer Audience"];
    v2 = v13[0];
    v13[0] = v1;
  }

  else if (a1 == 2)
  {
    v3 = [NSString stringWithUTF8String:"Customer Seed Audience"];
    v4 = v13[0];
    v13[0] = v3;
  }

  else if (a1 == 3)
  {
    v5 = [NSString stringWithUTF8String:"Internal Living On"];
    v6 = v13[0];
    v13[0] = v5;
  }

  else if (a1 == 4)
  {
    v7 = [NSString stringWithUTF8String:"Custom Audience"];
    v8 = v13[0];
    v13[0] = v7;
  }

  else
  {
    if (a1 == 5)
    {
      v9 = [NSString stringWithUTF8String:"Mobile Asset Untested"];
    }

    else
    {
      v9 = [NSString stringWithUTF8String:"unrecognized"];
    }

    v10 = v13[0];
    v13[0] = v9;
  }

  v12 = v13[0];
  objc_storeStrong(v13, 0);

  return v12;
}

uint64_t AUSettingsPallasStringToAudienceType(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = location;
  v15 = [NSString stringWithUTF8String:"Customer Audience"];
  v16 = [v14 isEqualToString:?];

  if (v16 == 1)
  {
    v18 = 1;
  }

  else
  {
    v11 = location;
    v12 = [NSString stringWithUTF8String:"Customer Seed Audience"];
    v13 = [v11 isEqualToString:?];

    if (v13 == 1)
    {
      v18 = 2;
    }

    else
    {
      v8 = location;
      v9 = [NSString stringWithUTF8String:"Internal Living On"];
      v10 = [v8 isEqualToString:?];

      if (v10 == 1)
      {
        v18 = 3;
      }

      else
      {
        v5 = location;
        v6 = [NSString stringWithUTF8String:"Custom Audience"];
        v7 = [v5 isEqualToString:?];

        if (v7 == 1)
        {
          v18 = 4;
        }

        else
        {
          v2 = location;
          v3 = [NSString stringWithUTF8String:"Mobile Asset Untested"];
          v4 = [v2 isEqualToString:?];

          if (v4 == 1)
          {
            v18 = 5;
          }

          else
          {
            v18 = 0;
          }
        }
      }
    }
  }

  objc_storeStrong(&location, 0);
  return v18;
}

id getInfoForAccessory(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v4 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v3 = [v4 accessoriesDictionary];
  v2 = [v3 objectForKeyedSubscript:location];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);

  return v2;
}

BOOL configuredToDefaultAssetLocationForAccessory(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = 0;
  v6 = [location objectForKeyedSubscript:@"fusing"];
  v5 = AUDeveloperSettingsAccessoryFusingStringToType(v6);
  if (v5 && v5 != 2)
  {
    v3 = [location objectForKeyedSubscript:@"assetLocation"];
    v7 = AUDeveloperSettingsURLStringToType(v3) == 2;
  }

  else
  {
    v4 = [location objectForKeyedSubscript:@"assetLocation"];
    v7 = AUDeveloperSettingsURLStringToType(v4) == 0;
  }

  v2 = v7;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  return v2;
}

id getURLForAssetURLType(char *a1)
{
  location[1] = a1;
  location[0] = 0;
  if (!a1)
  {
    objc_storeStrong(location, @"https://basejumper.apple.com/livability/");
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    goto LABEL_13;
  }

  if ((a1 - 2) <= 1)
  {
LABEL_10:
    objc_storeStrong(location, @"https://mesu.apple.com/assets");
    goto LABEL_14;
  }

  if ((a1 - 4) <= 1)
  {
    objc_storeStrong(location, @"https://basejumper.apple.com/assets/");
    goto LABEL_14;
  }

  if (a1 == 6)
  {
    objc_storeStrong(location, @"https://basejumper.apple.com/mesu_staging");
    goto LABEL_14;
  }

  if (a1 == 7)
  {
LABEL_13:
    objc_storeStrong(location, @"https://basejumper.apple.com");
    goto LABEL_14;
  }

  if (a1 == 8)
  {
    goto LABEL_10;
  }

LABEL_14:
  v2 = location[0];
  objc_storeStrong(location, 0);

  return v2;
}

void cleanupPersonalizedUpdateAvailable(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v7 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v2 = [v7 accessoriesDictionary];
  v1 = [v2 objectForKey:location];
  v6 = [v1 mutableCopy];

  [v6 setObject:0 forKeyedSubscript:@"downloadedVersion"];
  [v6 setObject:0 forKeyedSubscript:@"personalizationRequired"];
  v5 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v3 = location;
  v4 = [NSDictionary dictionaryWithDictionary:v6];
  [v5 addAccessoryWithSerialNumber:v3 info:?];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

NSArray *findPartnerSerialNumbersInDatabase(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v8 = +[NSMutableArray array];
  v2 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v7 = [v2 accessoriesDictionary];

  v3 = v7;
  v5 = location;
  v6 = v8;
  [v3 enumerateKeysAndObjectsUsingBlock:?];
  v4 = [NSArray arrayWithArray:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v4;
}

void __findPartnerSerialNumbersInDatabase_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[2] = a4;
  v15[1] = a1;
  v15[0] = [v16 objectForKeyedSubscript:@"partnerSerialNumbers"];
  memset(__b, 0, sizeof(__b));
  v11 = v15[0];
  v12 = [v11 countByEnumeratingWithState:__b objects:v18 count:16];
  if (v12)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v12;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v11);
      }

      v14 = *(__b[1] + 8 * v6);
      if ([v14 isEqualToString:*(a1 + 32)] == 1 && !objc_msgSend(location[0], "isEqualToString:", *(a1 + 32)))
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v11 countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v7)
        {
          goto LABEL_10;
        }
      }
    }

    [*(a1 + 40) addObject:location[0]];
  }

LABEL_10:

  objc_storeStrong(v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

id findPartnerSerialNumberForAccessoryID(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = [location serialNumber];
  v4 = [location modelNumber];
  v3 = [location hwFusingType];
  v2 = [location partnerSerialNumbers];
  v6 = findPartnerSerialNumberForAccessory(v5, v4, v3, v2);

  objc_storeStrong(&location, 0);

  return v6;
}

id findPartnerSerialNumberForAccessory(void *a1, void *a2, void *a3, void *a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v34 = 0;
  objc_storeStrong(&v34, a2);
  v33 = 0;
  objc_storeStrong(&v33, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  if (![v32 count])
  {
    v4 = findPartnerSerialNumbersInDatabase(location);
    v5 = v32;
    v32 = v4;
  }

  v31 = +[AUDeveloperSettingsDatabase sharedDatabase];
  memset(__b, 0, sizeof(__b));
  v17 = v32;
  v18 = [v17 countByEnumeratingWithState:__b objects:v37 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(v17);
      }

      v30 = *(__b[1] + 8 * v15);
      v12 = [v31 accessoriesDictionary];
      v28 = [v12 objectForKey:v30];

      v27 = [v28 objectForKey:@"fusing"];
      if (v27 && [v30 isEqualToString:location] != 1)
      {
        v24 = 0;
        v22 = 0;
        v11 = 1;
        if ([v27 caseInsensitiveCompare:v33])
        {
          v9 = v33;
          v25 = [NSString stringWithUTF8String:"Prod"];
          v24 = 1;
          v10 = 0;
          if ([v9 caseInsensitiveCompare:?])
          {
            v8 = v27;
            v23 = [NSString stringWithUTF8String:"Prod"];
            v22 = 1;
            v10 = [v8 caseInsensitiveCompare:?] != 0;
          }

          v11 = v10;
        }

        if (v22)
        {
        }

        if (v24)
        {
        }

        if (v11)
        {
          v36 = v30;
          v26 = 1;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 3;
      }

      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      if (v26)
      {
        if (v26 != 3)
        {
          break;
        }
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [v17 countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v16)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_25:
    v26 = 0;
  }

  if (!v26)
  {
    v36 = 0;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&location, 0);
  v6 = v36;

  return v6;
}

id getAccessoryDatabaseKeyForAccessoryID(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = [location serialNumber];
  v4 = [location modelNumber];
  v3 = [location hwFusingType];
  v2 = [location partnerSerialNumbers];
  v6 = getAccessoryDatabaseKeyForAccessory(v5, v4, v3, v2);

  objc_storeStrong(&location, 0);

  return v6;
}

id getAccessoryDatabaseKeyForAccessory(void *a1, void *a2, void *a3, void *a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v18 = 0;
  objc_storeStrong(&v18, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if (location)
  {
    v14 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v7 = [v14 accessoriesDictionary];
    v13 = [v7 objectForKey:location];

    v12 = 0;
    if (v13)
    {
      objc_storeStrong(&v12, location);
    }

    else
    {
      v11 = findPartnerSerialNumberForAccessory(location, v18, v17, v16);
      v6 = [v14 accessoriesDictionary];
      v13 = [v6 objectForKey:v11];

      if (v13)
      {
        objc_storeStrong(&v12, v11);
      }

      objc_storeStrong(&v11, 0);
    }

    v20 = v12;
    v15 = 1;
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v20 = 0;
    v15 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
  v4 = v20;

  return v4;
}

uint64_t isOTAUpdateDisabledForAccessoryID(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = [location serialNumber];
  v4 = [location modelNumber];
  v3 = [location hwFusingType];
  v2 = [location partnerSerialNumbers];
  v6 = isOTAUpdateDisabledForAccessory(v5, v4, v3, v2);

  objc_storeStrong(&location, 0);
  return v6;
}

uint64_t isOTAUpdateDisabledForAccessory(void *a1, void *a2, void *a3, void *a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v16 = 0;
  objc_storeStrong(&v16, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = getAccessoryDatabaseKeyForAccessory(location, v16, v15, v14);
  if (!v13)
  {
    goto LABEL_6;
  }

  v12 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v5 = [v12 accessoriesDictionary];
  v11 = [v5 objectForKey:v13];

  if (v11)
  {
    v10 = [v11 objectForKeyedSubscript:@"isOTADisabled"];
    v18 = [v10 BOOLValue] & 1;
    v9 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  if (!v9)
  {
LABEL_6:
    v18 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  return v18 & 1;
}

uint64_t isPallasEnabledForAccessory(void *a1, void *a2, void *a3, void *a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v16 = 0;
  objc_storeStrong(&v16, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = getAccessoryDatabaseKeyForAccessory(location, v16, v15, v14);
  if (!v13)
  {
    goto LABEL_6;
  }

  v12 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v5 = [v12 accessoriesDictionary];
  v11 = [v5 objectForKey:v13];

  if (v11)
  {
    v10 = [v11 objectForKeyedSubscript:@"pallasSupportEnabled"];
    v18 = [v10 BOOLValue] & 1;
    v9 = 1;
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  if (!v9)
  {
LABEL_6:
    v18 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  return v18 & 1;
}

void dropboxFileUpdateForAccessoryID(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v8 = 0;
  objc_storeStrong(&v8, a2);
  v7 = [location serialNumber];
  v6 = [location modelNumber];
  v5 = [location hwFusingType];
  v4 = [location partnerSerialNumbers];
  dropboxFileUpdateForAccessory(v7, v6, v5, v4, v8);

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

void dropboxFileUpdateForAccessory(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v21 = 0;
  objc_storeStrong(&v21, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = getAccessoryDatabaseKeyForAccessory(location, v21, v20, v19);
  if (v17)
  {
    v15 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v8 = [v15 accessoriesDictionary];
    v14 = [v8 objectForKey:v17];

    if (v14)
    {
      v13 = [NSMutableDictionary dictionaryWithDictionary:v14];
      [(NSMutableDictionary *)v13 setObject:v18 forKeyedSubscript:@"dropboxVersion"];
      v6 = v15;
      v5 = v17;
      v7 = [NSDictionary dictionaryWithDictionary:v13];
      [v6 addAccessoryWithSerialNumber:v5 info:?];

      objc_storeStrong(&v13, 0);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
}

void updateReachabilityForAccessoryID(void *a1, char a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v6 = [location serialNumber];
  v5 = [location modelNumber];
  v4 = [location hwFusingType];
  v3 = [location partnerSerialNumbers];
  updateReachabilityForAccessory(v6, v5, v4, v3, a2 & 1);

  objc_storeStrong(&location, 0);
}

void updateReachabilityForAccessory(void *a1, void *a2, void *a3, void *a4, char a5)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v40 = 0;
  objc_storeStrong(&v40, a2);
  v39 = 0;
  objc_storeStrong(&v39, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  v37 = a5;
  v36 = +[AUDeveloperSettingsDatabase sharedDatabase];
  if (!location)
  {
    v14 = [v36 accessoriesDictionary];
    v30 = [v14 allKeys];

    memset(__b, 0, sizeof(__b));
    v15 = v30;
    v16 = [v15 countByEnumeratingWithState:__b objects:v42 count:16];
    if (v16)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v16;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(v15);
        }

        v29 = *(__b[1] + 8 * v12);
        v9 = [v36 accessoriesDictionary];
        v27 = [v9 objectForKey:v29];

        if (v27)
        {
          v26 = [NSMutableDictionary dictionaryWithDictionary:v27];
          v5 = [NSNumber numberWithBool:v37 & 1];
          [NSMutableDictionary setObject:v26 forKeyedSubscript:"setObject:forKeyedSubscript:"];

          v7 = v36;
          v6 = v29;
          v8 = [NSDictionary dictionaryWithDictionary:v26];
          [v7 addAccessoryWithSerialNumber:v6 info:?];

          objc_storeStrong(&v26, 0);
        }

        objc_storeStrong(&v27, 0);
        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [v15 countByEnumeratingWithState:__b objects:v42 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    objc_storeStrong(&v30, 0);
    goto LABEL_18;
  }

  v35 = getAccessoryDatabaseKeyForAccessory(location, v40, v39, v38);
  if (v35)
  {
    v33 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v21 = [v33 accessoriesDictionary];
    v32 = [v21 objectForKey:v35];

    if (v32)
    {
      v31 = [NSMutableDictionary dictionaryWithDictionary:v32];
      v17 = [NSNumber numberWithBool:v37 & 1];
      [NSMutableDictionary setObject:v31 forKeyedSubscript:"setObject:forKeyedSubscript:"];

      v19 = v33;
      v18 = v35;
      v20 = [NSDictionary dictionaryWithDictionary:v31];
      [v19 addAccessoryWithSerialNumber:v18 info:?];

      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  objc_storeStrong(&v35, 0);
  if (!v34)
  {
LABEL_18:
    v34 = 0;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
}

uint64_t generateAssetLocationBasePath(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = 0;
  objc_storeStrong(&v4, a2);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);
  return 0;
}

void updateSeedEnablementForAccessory(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if (location)
  {
    v12 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v6 = [v12 accessoriesDictionary];
    v5 = [v6 objectForKey:location];
    v11 = [v5 mutableCopy];

    if (v11)
    {
      v10 = [v11 objectForKeyedSubscript:@"settingsFromSeedBuild"];
      v9 = [v12 isSeedParticipationEnabled:location];
      v8 = 0;
      if ((v9 & 1) == 1 && (!v10 || [v10 BOOLValue] == 1))
      {
        v4 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString(2)];
        [v11 setObject:? forKeyedSubscript:?];

        v7 = &_os_log_default;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_66(v15, location);
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Clearing seed enablement for %{public}@", v15, 0xCu);
        }

        objc_storeStrong(&v7, 0);
      }

      [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:@"settingsFromSeedBuild"];
      v2 = v12;
      v1 = location;
      v3 = [NSDictionary dictionaryWithDictionary:v11];
      [v2 addAccessoryWithSerialNumber:v1 info:?];

      objc_storeStrong(&v10, 0);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(&location, 0);
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_3_8_32_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id MapPreferenceSuiteToString(void *a1)
{
  location[1] = a1;
  location[0] = 0;
  if (a1)
  {
    if (a1 == 1)
    {
      objc_storeStrong(location, @"com.apple.AUDeveloperSettings");
    }

    else
    {
      objc_storeStrong(location, 0);
    }
  }

  else
  {
    objc_storeStrong(location, @"com.apple.accessoryupdaterd");
  }

  v2 = location[0];
  objc_storeStrong(location, 0);

  return v2;
}

NSString *currentOSTrainName()
{
  v4 = 0;
  v6 = &currentOSTrainName_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1);
  if (*v6 != -1)
  {
    dispatch_once(v6, location);
  }

  objc_storeStrong(&location, 0);
  if (currentOSTrainName_trainName)
  {
    v0 = [NSString stringWithFormat:@"%s", currentOSTrainName_trainName];
    v1 = v4;
    v4 = v0;
  }

  v3 = v4;
  objc_storeStrong(&v4, 0);

  return v3;
}

void __currentOSTrainName_block_invoke(id a1)
{
  v3 = [NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
  v7 = 0;
  LOBYTE(v4) = 0;
  if (![(NSString *)v3 isEqualToString:&stru_1000382C8])
  {
    v8 = [NSString stringWithFormat:@"%s", "$SIDEBUILD_PARENT_TRAIN"];
    v7 = 1;
    v4 = ![(NSString *)v8 isEqualToString:@"$SIDEBUILD_PARENT_TRAIN"];
  }

  if (v7)
  {
  }

  if (v4)
  {
    currentOSTrainName_trainName = "$SIDEBUILD_PARENT_TRAIN";
  }

  else
  {
    v1 = [NSString stringWithFormat:@"%s", "LuckB"];
    v5 = 0;
    LOBYTE(v2) = 0;
    if (![(NSString *)v1 isEqualToString:&stru_1000382C8])
    {
      v6 = [NSString stringWithFormat:@"%s", "LuckB"];
      v5 = 1;
      v2 = ![(NSString *)v6 isEqualToString:@"$RC_RELEASE"];
    }

    if (v5)
    {
    }

    if (v2)
    {
      currentOSTrainName_trainName = "LuckB";
    }
  }
}

id createSubscriptionForPersonality(void *a1, char a2, char a3)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v115 = a2;
  v114 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v109 = location;
    _mergePartnerAccessoriesInAssetSettings(v109);
    v69 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v68 = [v109 serialNumber];
    v67 = [v109 identifier];
    v66 = [v109 hwFusing];
    v65 = [v109 partnerSerialNumbers];
    v108 = [v69 copyAccessoryForSignature:v68 modelNumber:v67 fusingType:v66 partnerSerialNumbers:?];

    v107 = 0;
    v70 = [v109 friendlyName];
    v71 = [v70 length];

    if (v71)
    {
      v3 = [v109 friendlyName];
      v4 = v107;
      v107 = v3;
    }

    else
    {
      v64 = [v108 name];

      if (v64)
      {
        v9 = [v108 name];
        v10 = v107;
        v107 = v9;
      }

      else
      {
        v106 = [@"Unknown" mutableCopy];
        v62 = [v109 serialNumber];
        v63 = [v62 length];

        if (v63)
        {
          v59 = [NSMutableString alloc];
          v61 = [v109 appleModelNumber];
          v60 = [v109 serialNumber];
          v5 = [v59 initWithFormat:@"%@ (%@)", v61, v60];
          v6 = v106;
          v106 = v5;
        }

        v7 = [NSString stringWithString:v106];
        v8 = v107;
        v107 = v7;

        objc_storeStrong(&v106, 0);
      }
    }

    if (v108)
    {
      v103 = &_os_log_default;
      v102 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_66(v122, location);
        _os_log_impl(&_mh_execute_header, v103, v102, "Updating Settings Entry with personality %{public}@", v122, 0xCu);
      }

      objc_storeStrong(&v103, 0);
      [v108 setName:v107];
      v50 = [v109 mobileAssetAppleModelNumber];
      v51 = [v50 length];

      if (v51)
      {
        v49 = [v109 mobileAssetAppleModelNumber];
        [v108 setMobileAssetModelNumber:?];
      }

      v45 = [v109 activeVersion];
      [v108 setActiveVersion:?];

      v46 = [v109 hwRevision];
      [v108 setHwRevision:?];

      v47 = [v109 mobileAssetAppleModelNumber];
      v48 = [v47 length];

      if (v48)
      {
        v44 = [v109 mobileAssetAppleModelNumber];
        [v108 setMobileAssetModelNumber:?];
      }

      v41 = [v109 serialNumber];
      v42 = [v108 serialNumber];
      v100 = 0;
      v43 = 0;
      if ([v41 isEqualToString:?] == 1)
      {
        v101 = [v109 partnerSerialNumbers];
        v100 = 1;
        v43 = [v101 count] != 0;
      }

      if (v100)
      {
      }

      if (v43)
      {
        v40 = [v109 partnerSerialNumbers];
        [v108 setPartnerSerialNumbers:?];
      }

      if (![v108 pallasAudience])
      {
        [v108 setPallasSupportEnabled:1];
        if ([v109 softwareUpdateAsset] == 1)
        {
          [v108 setPallasInternalAssetVariant:0];
        }

        v39 = [v109 hwFusing];
        v38 = [v39 lowercaseString];
        [v108 setPallasAudience:{getPallasSettingForAccessory(0, v38)}];
      }

      if (![v108 pallasAudience])
      {
        v37 = [v109 hwFusing];
        v36 = [v37 lowercaseString];
        [v108 setPallasAudience:{getPallasSettingForAccessory(0, v36)}];
      }
    }

    else
    {
      v105 = &_os_log_default;
      v104 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v123, location);
        _os_log_error_impl(&_mh_execute_header, v105, v104, "No Settings Entry found for personality %{public}@", v123, 0xCu);
      }

      objc_storeStrong(&v105, 0);
      v11 = objc_alloc_init(UARPSettingsAccessory);
      v12 = v108;
      v108 = v11;

      v54 = [v109 serialNumber];
      [v108 setSerialNumber:?];

      v55 = [v109 appleModelNumber];
      [v108 setModelNumber:?];

      v56 = [v109 mobileAssetAppleModelNumber];
      [v108 setMobileAssetModelNumber:?];

      v58 = [v109 hwFusing];
      v57 = [v58 lowercaseString];
      [v108 setHwFusing:?];

      [v108 setName:v107];
      [v108 setPallasSupportEnabled:1];
      if ([v109 softwareUpdateAsset] == 1)
      {
        [v108 setPallasInternalAssetVariant:0];
      }

      v53 = [v109 hwFusing];
      v52 = [v53 lowercaseString];
      [v108 setPallasAudience:{getPallasSettingForAccessory(0, v52)}];
    }

    if ((v114 & 1) == 1)
    {
      v35 = +[AUDeveloperSettingsDatabase sharedDatabase];
      [v35 updateAccessory:v108];
    }

    v99 = 0;
    v98 = [v108 assetURLOverride];
    v97 = loadProfileAssetOverrideSettings();
    v34 = [location identifier];
    v96 = [v97 objectForKeyedSubscript:?];

    if (![v96 isEqualToString:v98] && v96 && v98)
    {
      [v108 setAssetURLOverride:v96];
      v99 = 1;
    }

    else
    {
      [v108 setAssetURLOverride:0];
    }

    v95 = MGGetBoolAnswer();
    v93 = 0;
    v33 = 0;
    if ((v95 & 1) == 1)
    {
      v94 = [v109 hwFusing];
      v93 = 1;
      v33 = [v94 caseInsensitiveCompare:@"prod"] != 0;
    }

    if (v93)
    {
    }

    if (v33)
    {
      v32 = [v108 assetLocation];

      if (!v32)
      {
        v31 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString(0)];
        [v108 setAssetLocation:?];

        v99 = 1;
      }
    }

    else
    {
      v30 = [v108 assetLocation];

      if (!v30)
      {
        v29 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString(2)];
        [v108 setAssetLocation:?];

        v99 = 1;
      }
    }

    if ((v99 & 1) == 1 && (v114 & 1) == 1)
    {
      v92 = &_os_log_default;
      v91 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v109 serialNumber];
        v27 = [v108 assetLocation];
        __os_log_helper_16_2_2_8_66_8_66(v121, v28, v27);
        _os_log_impl(&_mh_execute_header, v92, v91, "Updating Asset Location for %{public}@ to %{public}@", v121, 0x16u);
      }

      objc_storeStrong(&v92, 0);
      v26 = +[AUDeveloperSettingsDatabase sharedDatabase];
      [v26 updateAccessory:v108];
    }

    v25 = [v109 mobileAssetAppleModelNumber];
    v88 = 0;
    v86 = 0;
    if (v25)
    {
      v89 = [v109 mobileAssetAppleModelNumber];
      v88 = 1;
      v13 = v89;
    }

    else
    {
      v87 = [v109 appleModelNumber];
      v86 = 1;
      v13 = v87;
    }

    v90 = v13;
    if (v86)
    {
    }

    if (v88)
    {
    }

    v21 = [UARPAssetSubscriptionMobileAsset alloc];
    v24 = [v109 hwFusing];
    v23 = [v24 lowercaseString];
    v22 = [location domain];
    v85 = [(UARPAssetSubscriptionMobileAsset *)v21 initWithAppleModelNumber:v90 hwFusing:v23 domain:?];

    if ((v115 & 1) == 1)
    {
      v20 = [v85 appleModelNumber];
      v84 = mobileAssetPrefixForAppleModelNumber(v20);

      v83 = [NSString stringWithFormat:@"%@%@", v84, v90];
      v82 = getPallasAudienceForAccessory(v108, [v109 softwareUpdateAsset]);
      if ([v82 length])
      {
        [v85 setAssetAudience:v82];
        [v85 setInternalAsset:{objc_msgSend(v108, "pallasInternalAssetVariant")}];
        [v85 setSoftwareUpdateAsset:{objc_msgSend(v109, "softwareUpdateAsset")}];
        v110 = 0;
      }

      else
      {
        oslog = &_os_log_default;
        v80 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v120, v83);
          _os_log_error_impl(&_mh_execute_header, oslog, v80, "Invalid pallas audience detected for asset %{public}@", v120, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v117 = 0;
        v110 = 1;
      }

      objc_storeStrong(&v82, 0);
      objc_storeStrong(&v83, 0);
      objc_storeStrong(&v84, 0);
      if (v110)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v16 = v108;
      v17 = currentOSTrainName();
      v79 = generateMobileAssetBaseAddress(v16, v17);

      v18 = [NSURL URLWithString:v79];
      [v85 setAssetURL:?];

      v19 = [v85 assetURL];
      if (v19)
      {
        v76 = &_os_log_default;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_66_8_66(v118, v79, v85);
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Using %{public}@ for subscription %{public}@", v118, 0x16u);
        }

        objc_storeStrong(&v76, 0);
        v110 = 0;
      }

      else
      {
        v78 = &_os_log_default;
        v77 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v119, v85);
          _os_log_error_impl(&_mh_execute_header, v78, v77, "Invalid asset location for subscription %{public}@", v119, 0xCu);
        }

        objc_storeStrong(&v78, 0);
        v117 = 0;
        v110 = 1;
      }

      objc_storeStrong(&v79, 0);
      if (v110)
      {
        goto LABEL_82;
      }
    }

    v117 = v85;
    v110 = 1;
LABEL_82:
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v96, 0);
    objc_storeStrong(&v97, 0);
    objc_storeStrong(&v98, 0);
    objc_storeStrong(&v107, 0);
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&v109, 0);
    goto LABEL_83;
  }

  v113 = &_os_log_default;
  v112 = 16;
  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
  {
    log = v113;
    type = v112;
    __os_log_helper_16_0_0(v111);
    _os_log_error_impl(&_mh_execute_header, log, type, "Only mobile asset accessory personalities are currently supported", v111, 2u);
  }

  objc_storeStrong(&v113, 0);
  v117 = 0;
  v110 = 1;
LABEL_83:
  objc_storeStrong(&location, 0);
  v14 = v117;

  return v14;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void _mergePartnerAccessoriesInAssetSettings(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v47 = [location hwFusing];
  v71 = 0;
  v48 = 1;
  if ([v47 length])
  {
    v72 = [location serialNumber];
    v71 = 1;
    v48 = [v72 length] == 0;
  }

  if (v71)
  {
  }

  if (!v48)
  {
    v43 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v42 = [location serialNumber];
    v41 = [location identifier];
    v40 = [location hwFusing];
    v39 = [location partnerSerialNumbers];
    v69 = [v43 copyAccessoryForSignature:v42 modelNumber:v41 fusingType:v40 partnerSerialNumbers:?];

    v68 = [location partnerSerialNumbers];
    v45 = [v69 serialNumber];
    v44 = [location serialNumber];
    v46 = [v45 isEqualToString:?];

    if (v46)
    {
      v37 = [v69 partnerSerialNumbers];
      v38 = [v37 count];

      if (v38)
      {
        v67 = &_os_log_default;
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v80, location);
          _os_log_impl(&_mh_execute_header, v67, type, "Settings accessory found for personality %@", v80, 0xCu);
        }

        objc_storeStrong(&v67, 0);
        v70 = 1;
LABEL_48:
        objc_storeStrong(&v68, 0);
        objc_storeStrong(&v69, 0);
        goto LABEL_49;
      }

      v36 = [location partnerSerialNumbers];
      [v69 setPartnerSerialNumbers:?];
    }

    else
    {
      v34 = [v69 partnerSerialNumbers];
      v35 = [v34 count];

      if (v35)
      {
        v65 = &_os_log_default;
        v64 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v79, location);
          _os_log_impl(&_mh_execute_header, v65, v64, "Settings accessory found for personality %@", v79, 0xCu);
        }

        objc_storeStrong(&v65, 0);
        v70 = 1;
        goto LABEL_48;
      }

      v28 = [location partnerSerialNumbers];
      v63 = [v28 mutableCopy];

      v29 = v63;
      v30 = [v69 serialNumber];
      [v29 removeObject:?];

      v31 = v63;
      v32 = [location serialNumber];
      [v31 addObject:?];

      v33 = [NSArray arrayWithArray:v63];
      [v69 setPartnerSerialNumbers:?];

      v1 = [v69 partnerSerialNumbers];
      v2 = v68;
      v68 = v1;

      objc_storeStrong(&v63, 0);
    }

    v62 = objc_opt_new();
    v61 = &_os_log_default;
    v60 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v78, v68, location);
      _os_log_impl(&_mh_execute_header, v61, v60, "Using reported Partner Serial Numbers %@ for personality %@", v78, 0x16u);
    }

    objc_storeStrong(&v61, 0);
    v59 = +[AUDeveloperSettingsDatabase sharedDatabase];
    v58 = [v69 hwFusing];
    memset(__b, 0, sizeof(__b));
    obja = [v59 accessoryList];
    v27 = [obja countByEnumeratingWithState:__b objects:v77 count:16];
    if (v27)
    {
      v23 = *__b[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*__b[2] != v23)
        {
          objc_enumerationMutation(obja);
        }

        v57 = *(__b[1] + 8 * v24);
        v19 = v68;
        v20 = [v57 serialNumber];
        v21 = [v19 containsObject:?];

        if (v21)
        {
          v17 = [v57 hwFusing];
          v18 = [v17 length];

          if (v18)
          {
            v12 = [v57 hwFusing];
            v52 = 0;
            v13 = 1;
            if ([v12 caseInsensitiveCompare:v58])
            {
              v11 = 0;
              if ([v58 caseInsensitiveCompare:@"prod"])
              {
                v53 = [v57 hwFusing];
                v52 = 1;
                v11 = [v53 caseInsensitiveCompare:@"prod"] != 0;
              }

              v13 = v11;
            }

            if (v52)
            {
            }

            if (v13)
            {
              [v62 addObject:v57];
            }
          }

          else
          {
            oslog = &_os_log_default;
            v54 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
            {
              v14 = oslog;
              v16 = [v57 serialNumber];
              v15 = [v57 hwFusing];
              __os_log_helper_16_2_2_8_64_8_64(v76, v16, v15);
              _os_log_impl(&_mh_execute_header, v14, v54, "Unexpected Accessory Entry for %@ with fusing %@", v76, 0x16u);
            }

            objc_storeStrong(&oslog, 0);
          }
        }

        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [obja countByEnumeratingWithState:__b objects:v77 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    memset(v50, 0, sizeof(v50));
    v9 = v62;
    v10 = [v9 countByEnumeratingWithState:v50 objects:v75 count:16];
    if (v10)
    {
      v6 = *v50[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*v50[2] != v6)
        {
          objc_enumerationMutation(v9);
        }

        v51 = *(v50[1] + 8 * v7);
        v49 = &_os_log_default;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v3 = v49;
          v4 = [v51 serialNumber];
          __os_log_helper_16_2_1_8_64(v74, v4);
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing Entry from AUDeveloperSettingsDatabase with serialNumber %@", v74, 0xCu);
        }

        objc_storeStrong(&v49, 0);
        [v59 removeAccessory:v51];
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [v9 countByEnumeratingWithState:v50 objects:v75 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    objc_storeStrong(&v58, 0);
    objc_storeStrong(&v59, 0);
    objc_storeStrong(&v62, 0);
    v70 = 0;
    goto LABEL_48;
  }

  v70 = 1;
LABEL_49:
  objc_storeStrong(&location, 0);
}

uint64_t getPallasSettingForAccessory(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = 0;
  objc_storeStrong(&v4, a2);
  if ((MGGetBoolAnswer() & 1) != 1 || location)
  {
    if (location)
    {
      v6 = [location pallasAudience];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 3;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);
  return v6;
}

id loadProfileAssetOverrideSettings()
{
  v18 = 0;
  v17 = [NSURL fileURLWithPath:@"/Library/Managed Preferences/mobile/com.apple.AUDeveloperSettings.plist"];
  v16 = 0;
  v14 = 0;
  v8 = [NSDictionary dictionaryWithContentsOfURL:v17 error:&v14];
  objc_storeStrong(&v16, v14);
  v15 = v8;
  if (v8)
  {
    v13 = [v15 objectForKeyedSubscript:@"models"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v18, v13);
      memset(__b, 0, sizeof(__b));
      obj = v18;
      v7 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
      if (v7)
      {
        v3 = *__b[2];
        v4 = 0;
        v5 = v7;
        while (1)
        {
          v2 = v4;
          if (*__b[2] != v3)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(__b[1] + 8 * v4);
          v10 = [v18 objectForKeyedSubscript:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = 0;
          }

          else
          {
            objc_storeStrong(&v18, 0);
            v9 = 2;
          }

          objc_storeStrong(&v10, 0);
          if (v9)
          {
            break;
          }

          ++v4;
          if (v2 + 1 >= v5)
          {
            v4 = 0;
            v5 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
            if (!v5)
            {
              break;
            }
          }
        }
      }
    }

    objc_storeStrong(&v13, 0);
  }

  v1 = v18;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);

  return v1;
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

__CFString *getPallasAudienceForAccessory(void *a1, char a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  if ((MGGetBoolAnswer() & 1) != 1)
  {
    goto LABEL_8;
  }

  if ([location pallasAudience] == 4)
  {
    v6 = [location pallasAudienceOverride];
    goto LABEL_11;
  }

  if ([location pallasAudience] == 3)
  {
    v6 = @"ce9c2203-903b-4fb3-9f03-040dc2202694";
    goto LABEL_11;
  }

  if ([location pallasAudience] == 5)
  {
    v6 = @"b1f792b1-0797-48f1-8603-107cefcf1d45";
  }

  else
  {
LABEL_8:
    if ([location pallasAudience] == 2)
    {
      v6 = @"0206c249-b301-46e0-9d6a-23ce9c5d875d";
    }

    else
    {
      v6 = getDefaultPallasAudience(a2 & 1);
    }
  }

LABEL_11:
  objc_storeStrong(&location, 0);
  v2 = v6;

  return v2;
}

id generateMobileAssetBaseAddress(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v28 = 0;
  objc_storeStrong(&v28, a2);
  if (!location)
  {
    v30 = 0;
    v27 = 1;
    goto LABEL_35;
  }

  v18 = [location assetURLOverride];

  if (v18)
  {
    v30 = [location assetURLOverride];
    v27 = 1;
    goto LABEL_35;
  }

  v26 = [location assetLocation];
  if ([v26 length])
  {
    v25 = [location customTrain];
    v24 = [location customBuild];
    v23 = AUDeveloperSettingsURLStringToType(v26);
    v22 = 0;
    if (v23 == 5)
    {
      if (![v25 length] || !objc_msgSend(v24, "length"))
      {
        v30 = 0;
        v27 = 1;
LABEL_33:
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
        goto LABEL_34;
      }

      v2 = [NSString stringWithFormat:@"%@/%@/%@%@", @"https://basejumper.apple.com/assets", v25, v25, v24];
      v3 = v22;
      v22 = v2;
    }

    else if (v23)
    {
      switch(v23)
      {
        case 1:
          v6 = [@"https://basejumper.apple.com" stringByAppendingPathComponent:@"AirPodsDeveloperSeed"];
          v7 = v22;
          v22 = v6;

          break;
        case 4:
          objc_storeStrong(&v22, @"https://basejumper.apple.com/assets");
          break;
        case 2:
          v8 = getDefaultMesuAddress();
          v9 = v22;
          v22 = v8;

          break;
        case 6:
          objc_storeStrong(&v22, @"https://basejumper.apple.com/mesu_staging");
          break;
        case 7:
          v10 = [@"https://basejumper.apple.com" stringByAppendingPathComponent:@"AirPodsPublicSeed"];
          v11 = v22;
          v22 = v10;

          break;
        case 8:
          v21 = getDefaultMesuAddress();
          v12 = [v21 stringByAppendingPathComponent:@"AirPodsDeveloperSeed"];
          v13 = v22;
          v22 = v12;

          objc_storeStrong(&v21, 0);
          break;
        case 3:
          v20 = getDefaultMesuAddress();
          v14 = [v20 stringByAppendingPathComponent:@"AirPodsPublicSeed"];
          v15 = v22;
          v22 = v14;

          objc_storeStrong(&v20, 0);
          break;
        default:
          objc_storeStrong(&v22, 0);
          break;
      }
    }

    else
    {
      if ([v25 length])
      {
        v4 = [NSString stringWithFormat:@"%@/%@", @"https://basejumper.apple.com/livability", v25];
      }

      else
      {
        v4 = [NSString stringWithFormat:@"%@/%@", @"https://basejumper.apple.com/livability", v28];
      }

      v5 = v22;
      v22 = v4;
    }

    v30 = v22;
    v27 = 1;
    goto LABEL_33;
  }

  v30 = 0;
  v27 = 1;
LABEL_34:
  objc_storeStrong(&v26, 0);
LABEL_35:
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
  v16 = v30;

  return v16;
}

id createPersonalityForSubscription(void *a1, void *a2, void *a3)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v25 = 0;
  objc_storeStrong(&v25, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = location;
    v16 = 0;
    if (v24)
    {
      v3 = v24;
    }

    else
    {
      v17 = [v19 appleModelNumber];
      v16 = 1;
      v3 = v17;
    }

    v18 = v3;
    if (v16)
    {
    }

    v8 = [UARPEndpointPersonalityMobileAsset alloc];
    v6 = v18;
    v7 = v25;
    v10 = [v19 hwFusing];
    v9 = [v19 domain];
    v15 = [v8 initWithAppleModelNumber:v6 serialNumber:v7 hwFusing:v10 domain:?];

    v27 = v15;
    v20 = 1;
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v23 = &_os_log_default;
    v22 = 16;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      log = v23;
      type = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_error_impl(&_mh_execute_header, log, type, "Only mobile asset accessory subscriptions are currently supported", v21, 2u);
    }

    objc_storeStrong(&v23, 0);
    v27 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
  v4 = v27;

  return v4;
}

id getDefaultMesuAddress()
{
  location = 0;
  objc_storeStrong(&location, @"https://mesu.apple.com/assets");
  v1 = location;
  objc_storeStrong(&location, 0);

  return v1;
}

id getDefaultPallasAudience(char a1)
{
  v4 = a1;
  location = @"UnknownPlatform";
  if ((v4 & 1) == 1)
  {
    objc_storeStrong(&location, @"01c1d682-6e8f-4908-b724-5501fe3f5e5c");
  }

  else
  {
    objc_storeStrong(&location, @"0c88076f-c292-4dad-95e7-304db9d29d34");
  }

  v2 = location;
  objc_storeStrong(&location, 0);

  return v2;
}

uint64_t assetLocationTypeFromBasePath(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location hasPrefix:@"https://basejumper.apple.com/livability"] == 1)
  {
    v17 = 0;
    v15 = 1;
    goto LABEL_26;
  }

  if ([location isEqualToString:@"https://basejumper.apple.com/mesu_staging"] == 1)
  {
    v17 = 6;
    v15 = 1;
    goto LABEL_26;
  }

  if ([location isEqualToString:@"https://basejumper.apple.com/assets"] == 1)
  {
    v17 = 4;
    v15 = 1;
    goto LABEL_26;
  }

  v9 = location;
  v10 = getDefaultMesuAddress();
  v11 = [v9 isEqualToString:?];

  if (v11 == 1)
  {
    v17 = 2;
    v15 = 1;
    goto LABEL_26;
  }

  v6 = location;
  v7 = getDefaultMesuAddress();
  v8 = [v6 hasPrefix:?];

  if (v8 == 1)
  {
    v14 = getDefaultMesuAddress();
    v13 = [v14 stringByAppendingPathComponent:@"AirPodsDeveloperSeed"];
    if ([location isEqualToString:v13] == 1)
    {
      v17 = 8;
      v15 = 1;
    }

    else
    {
      v1 = [v14 stringByAppendingPathComponent:@"AirPodsPublicSeed"];
      v2 = v13;
      v13 = v1;

      if ([location isEqualToString:v13] == 1)
      {
        v17 = 3;
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ([location hasPrefix:@"https://basejumper.apple.com"] != 1)
    {
LABEL_25:
      v17 = 9;
      v15 = 1;
      goto LABEL_26;
    }

    v12 = [@"https://basejumper.apple.com" stringByAppendingPathComponent:@"AirPodsPublicSeed"];
    if ([location isEqualToString:v12] == 1)
    {
      v17 = 7;
      v15 = 1;
    }

    else
    {
      v3 = [@"https://basejumper.apple.com" stringByAppendingPathComponent:@"AirPodsDeveloperSeed"];
      v4 = v12;
      v12 = v3;

      if ([location isEqualToString:v12] == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 5;
      }

      v15 = 1;
    }

    objc_storeStrong(&v12, 0);
  }

LABEL_26:
  objc_storeStrong(&location, 0);
  return v17;
}

uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(void *a1, const char *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v5 = a2;
  if (!location)
  {
    objc_storeStrong(&location, &_os_log_default);
  }

  if (!a2)
  {
    v5 = "com.apple.MobileAccessoryUpdater";
  }

  inited = AUSandboxPlatformInitAllOS(location, v5);
  objc_storeStrong(&location, 0);
  return inited;
}

uint64_t AUSandboxPlatformInitAllOS(void *a1, uint64_t a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  bzero(v6, 0x400uLL);
  v4 = AUSandboxPlatformInitializeDedicatedTempDir(location, a2, v6, 0x400uLL);
  objc_storeStrong(&location, 0);
  return v4;
}

uint64_t AUSandboxPlatformInitWithBundleIdentifier(void *a1, const char *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(location, a2);
  objc_storeStrong(&location, 0);
  return v4;
}

uint64_t AUSandboxPlatformInit(void *a1, const char *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = AUSandboxPlatformInitWithBundleIdentifier(location, a2);
  objc_storeStrong(&location, 0);
  return v4;
}

uint64_t AUSandboxPlatformInitWithHomeDirectory(void *a1, const char *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(location, a2);
  objc_storeStrong(&location, 0);
  return v4;
}

uint64_t AUSandboxPlatformInitializeDedicatedTempDir(void *a1, uint64_t a2, char *a3, size_t a4)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15[4] = 0;
  v14 = 0;
  *v15 = _set_user_dir_suffix();
  if ((v15[0] & 1) == 0)
  {
    v13 = location;
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      __os_log_helper_16_0_1_4_0(v21, *v4);
      _os_log_error_impl(&_mh_execute_header, v13, v12, "failed to set temporary directory suffix: %d", v21, 8u);
    }

    objc_storeStrong(&v13, 0);
  }

  if (v15[0])
  {
    v14 = confstr(65537, v17, v16);
    if (!v14)
    {
      oslog = location;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        __os_log_helper_16_0_1_4_0(v20, *v5);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "failed to initialize temporary directory: %d", v20, 8u);
      }

      objc_storeStrong(&oslog, 0);
    }

    *&v15[1] = v14 == 0;
  }

  else
  {
    *&v15[1] = 1;
  }

  v7 = *&v15[1];
  objc_storeStrong(&location, 0);
  return v7;
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

id UARPAssetManagerServiceCacheTypeToString(void *a1)
{
  location[1] = a1;
  location[0] = 0;
  if (a1)
  {
    if (a1 == 1)
    {
      objc_storeStrong(location, @"uarpicloud");
    }

    else if (a1 == 2)
    {
      objc_storeStrong(location, @"chipicloud");
    }

    else
    {
      objc_storeStrong(location, @"unknown");
    }
  }

  else
  {
    objc_storeStrong(location, @"mobileasset");
  }

  v2 = location[0];
  objc_storeStrong(location, 0);

  return v2;
}

uint64_t isRoamingEnabledCheck()
{
  v8 = 0;
  v7 = 0;
  location = 0;
  if (dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 16))
  {
    v0 = [[CoreTelephonyClient alloc] initWithQueue:?];
    v1 = v7;
    v7 = v0;

    v2 = [v7 getCurrentDataServiceDescriptorSync:0];
    v3 = location;
    location = v2;

    v8 = [v7 getInternationalDataAccessSync:location error:0];
  }

  v5 = v8;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v7, 0);
  return v5 & 1;
}

id getAssetBundle(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = [location attributes];
  v9 = [v5 objectForKey:@"FirmwareBundle"];

  if (v9)
  {
    v4 = [location getLocalFileUrl];
    v3 = [v4 URLByAppendingPathComponent:v9];
    v7 = [v3 filePathURL];

    if (v7)
    {
      v6 = [NSBundle bundleWithURL:v7];
      v11 = v6;
      v8 = 1;
      objc_storeStrong(&v6, 0);
    }

    else
    {
      v11 = 0;
      v8 = 1;
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    v11 = 0;
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&location, 0);
  v1 = v11;

  return v1;
}

id getRestoreVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location attributes];
  v3 = [v2 objectForKey:@"RestoreVersion"];

  objc_storeStrong(&location, 0);

  return v3;
}

id getOSVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location attributes];
  v3 = [v2 objectForKey:@"OSVersion"];

  objc_storeStrong(&location, 0);

  return v3;
}

id getBuildVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location attributes];
  v3 = [v2 objectForKey:@"Build"];

  objc_storeStrong(&location, 0);

  return v3;
}

id getMinOSVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location attributes];
  v3 = [v2 objectForKey:@"_MinOSVersion"];

  objc_storeStrong(&location, 0);

  return v3;
}

id getMaxOSVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v2 = [location attributes];
  v3 = [v2 objectForKey:@"_MaxOSVersion"];

  objc_storeStrong(&location, 0);

  return v3;
}

NSString *getAssetVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v10 = [location attributes];
  v9 = [v10 objectForKey:@"FirmwareVersionMajor"];
  v3 = [v9 unsignedIntValue];
  v8 = [location attributes];
  v7 = [v8 objectForKey:@"FirmwareVersionMinor"];
  v4 = [v7 unsignedIntValue];
  v6 = [location attributes];
  v5 = [v6 objectForKey:@"FirmwareVersionRelease"];
  v13 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%u.%u.%u", v3, v4, [v5 unsignedIntValue]);

  v11 = [location attributes];
  v12 = [v11 objectForKey:@"FirmwareVersionBuild"];

  if (v12)
  {
    -[NSMutableString appendFormat:](v13, "appendFormat:", @".%u", [v12 unsignedIntValue]);
  }

  v2 = [NSString stringWithString:v13];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);

  return v2;
}

id assetWithMaxVersion(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location count] > 1)
  {
    v13 = 0;
    v12 = 0;
    memset(__b, 0, sizeof(__b));
    obja = location;
    v8 = [obja countByEnumeratingWithState:__b objects:v17 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obja);
        }

        v11 = *(__b[1] + 8 * v5);
        if ([v11 state] != 3)
        {
          v9 = getAssetVersionForMAAsset(v11);
          if (isOSVersionNewer(v9, v12) == 1)
          {
            objc_storeStrong(&v12, v9);
            objc_storeStrong(&v13, v11);
          }

          objc_storeStrong(&v9, 0);
        }

        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [obja countByEnumeratingWithState:__b objects:v17 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    v16 = v13;
    v14 = 1;
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v16 = [location firstObject];
    v14 = 1;
  }

  objc_storeStrong(&location, 0);
  v1 = v16;

  return v1;
}

uint64_t isOSVersionNewer(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v12 = 0;
  objc_storeStrong(&v12, a2);
  v11 = [location componentsSeparatedByString:?];
  v10 = [v12 componentsSeparatedByString:@"."];
  for (i = 0; ; ++i)
  {
    v7 = 1;
    if (i >= [v11 count])
    {
      v7 = i < [v10 count];
    }

    if (!v7)
    {
      break;
    }

    if (i >= [v11 count])
    {
      v14 = 0;
      goto LABEL_15;
    }

    if (i >= [v10 count])
    {
      v14 = 1;
      goto LABEL_15;
    }

    v3 = [v11 objectAtIndexedSubscript:i];
    v4 = [v3 integerValue];

    v5 = [v10 objectAtIndexedSubscript:i];
    v6 = [v5 integerValue];

    if (v4 > v6)
    {
      v14 = 1;
      goto LABEL_15;
    }

    if (v4 < v6)
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_15:
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
  return v14 & 1;
}

BOOL isBuildVersionNewer(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v44 = 0;
  objc_storeStrong(&v44, a2);
  v43 = @"([0-9]+)([A-Z]{1})([0-9]+)([a-z]?)";
  v42 = [NSRegularExpression regularExpressionWithPattern:v43 options:0 error:0];
  if (v42)
  {
    v18 = location;
    v2 = [location length];
    v52 = 0;
    v51 = v2;
    v53 = 0;
    v54 = v2;
    v39[1] = 0;
    v39[2] = v2;
    v40 = [v42 matchesInString:v18 options:? range:?];
    v39[0] = [v40 objectAtIndex:0];
    if ([v39[0] numberOfRanges] >= 4)
    {
      v17 = v44;
      v3 = [v44 length];
      v48 = 0;
      v47 = v3;
      v49 = 0;
      v50 = v3;
      v37[1] = 0;
      v37[2] = v3;
      v38 = [v42 matchesInString:v17 options:? range:?];
      v37[0] = [v38 objectAtIndex:0];
      if ([v37[0] numberOfRanges] >= 4)
      {
        *&v36 = [v39[0] rangeAtIndex:?];
        *(&v36 + 1) = v4;
        v35 = [location substringWithRange:{v36, v4}];
        *&v34 = [v37[0] rangeAtIndex:1];
        *(&v34 + 1) = v5;
        v33 = [v44 substringWithRange:{v34, v5}];
        v16 = [v35 integerValue];
        if (v16 <= [v33 integerValue])
        {
          v15 = [v33 integerValue];
          if (v15 <= [v35 integerValue])
          {
            *&v32 = [v39[0] rangeAtIndex:?];
            *(&v32 + 1) = v6;
            v36 = v32;
            v31 = [location substringWithRange:{v32, v6}];
            *&v30 = [v37[0] rangeAtIndex:2];
            *(&v30 + 1) = v7;
            v34 = v30;
            v29 = [v44 substringWithRange:{v30, v7}];
            v28 = [v29 caseInsensitiveCompare:v31];
            if (v28 == -1)
            {
              v46 = 1;
              v41 = 1;
            }

            else if (v28 == 1)
            {
              v46 = 0;
              v41 = 1;
            }

            else
            {
              *&v27 = [v39[0] rangeAtIndex:?];
              *(&v27 + 1) = v8;
              v36 = v27;
              v26 = [location substringWithRange:{v27, v8}];
              *&v25 = [v37[0] rangeAtIndex:3];
              *(&v25 + 1) = v9;
              v34 = v25;
              v24 = [v44 substringWithRange:{v25, v9}];
              v14 = [v26 integerValue];
              if (v14 <= [v24 integerValue])
              {
                v13 = [v24 integerValue];
                if (v13 <= [v26 integerValue])
                {
                  if ([v37[0] numberOfRanges] == 4)
                  {
                    v46 = 0;
                    v41 = 1;
                  }

                  else
                  {
                    *&v23 = [v39[0] rangeAtIndex:?];
                    *(&v23 + 1) = v10;
                    v36 = v23;
                    v22 = [location substringWithRange:{v23, v10}];
                    *&v21 = [v37[0] rangeAtIndex:4];
                    *(&v21 + 1) = v11;
                    v34 = v21;
                    v20 = [v44 substringWithRange:{v21, v11}];
                    v46 = [v20 caseInsensitiveCompare:v22] == -1;
                    v41 = 1;
                    objc_storeStrong(&v20, 0);
                    objc_storeStrong(&v22, 0);
                  }
                }

                else
                {
                  v46 = 0;
                  v41 = 1;
                }
              }

              else
              {
                v46 = 1;
                v41 = 1;
              }

              objc_storeStrong(&v24, 0);
              objc_storeStrong(&v26, 0);
            }

            objc_storeStrong(&v29, 0);
            objc_storeStrong(&v31, 0);
          }

          else
          {
            v46 = 0;
            v41 = 1;
          }
        }

        else
        {
          v46 = 1;
          v41 = 1;
        }

        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v35, 0);
      }

      else
      {
        v46 = 1;
        v41 = 1;
      }

      objc_storeStrong(v37, 0);
      objc_storeStrong(&v38, 0);
    }

    else
    {
      v46 = 0;
      v41 = 1;
    }

    objc_storeStrong(v39, 0);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v46 = 0;
    v41 = 1;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&location, 0);
  return v46;
}

NSString *getSoftwareUpdateAssetVersionForMAAsset(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  v6 = getRestoreVersionForMAAsset(location);
  if (v6)
  {
    v8 = v6;
    v5 = 1;
  }

  else
  {
    v4 = getBuildVersionForMAAsset(location);
    v3 = getOSVersionForMAAsset(location);
    if (v4 && v3)
    {
      v8 = [NSString stringWithFormat:@"%@:%@", v3, v4];
      v5 = 1;
    }

    else
    {
      v8 = 0;
      v5 = 1;
    }

    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  v1 = v8;

  return v1;
}

id softwareUpdateAssetWithMaxVersion(void *a1, char a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v44 = a2;
  if ([location count] > 1)
  {
    v42 = 0;
    v41 = 0;
    memset(__b, 0, sizeof(__b));
    v19 = location;
    v20 = [v19 countByEnumeratingWithState:__b objects:v50 count:16];
    if (v20)
    {
      v16 = *__b[2];
      v17 = 0;
      v18 = v20;
      while (1)
      {
        v15 = v17;
        if (*__b[2] != v16)
        {
          objc_enumerationMutation(v19);
        }

        v40 = *(__b[1] + 8 * v17);
        if ([v40 state] != 3)
        {
          v13 = [v40 attributes];
          v38 = [v13 objectForKeyedSubscript:@"_MinOSVersion"];

          v14 = [v40 attributes];
          v37 = [v14 objectForKeyedSubscript:@"_MaxOSVersion"];

          if (v38 && v37)
          {
            v10 = [v40 attributes];
            v34 = [v10 objectForKeyedSubscript:@"ReleaseType"];

            if (v34)
            {
              if ((v44 & 1) != 1 || [v34 isEqualToString:@"Darwin Internal"])
              {
                if (v42)
                {
                  v29 = getRestoreVersionForMAAsset(v40);
                  if (v29)
                  {
                    v28 = getRestoreVersionForMAAsset(v42);
                    v2 = [SUCoreRestoreVersion alloc];
                    v27 = [v2 initWithRestoreVersion:v29];
                    v3 = [SUCoreRestoreVersion alloc];
                    v26 = [v3 initWithRestoreVersion:v28];
                    if ([v27 isComparable:v26] == 1)
                    {
                      if ([v27 compare:v26] == 1)
                      {
                        objc_storeStrong(&v42, v40);
                        v41 = 1;
                      }
                    }

                    else
                    {
                      objc_storeStrong(&v42, v40);
                      v41 = 1;
                    }

                    v43 = 3;
                    objc_storeStrong(&v26, 0);
                    objc_storeStrong(&v27, 0);
                    objc_storeStrong(&v28, 0);
                  }

                  else if ((v41 & 1) == 1)
                  {
                    v43 = 3;
                  }

                  else
                  {
                    v25 = getBuildVersionForMAAsset(v40);
                    v24 = getOSVersionForMAAsset(v40);
                    v23 = getBuildVersionForMAAsset(v42);
                    v22 = getOSVersionForMAAsset(v42);
                    if (isOSVersionNewer(v24, v22) == 1 || [v24 isEqualToString:v22] == 1 && isBuildVersionNewer(v25, v23))
                    {
                      objc_storeStrong(&v42, v40);
                    }

                    objc_storeStrong(&v22, 0);
                    objc_storeStrong(&v23, 0);
                    objc_storeStrong(&v24, 0);
                    objc_storeStrong(&v25, 0);
                    v43 = 0;
                  }

                  objc_storeStrong(&v29, 0);
                }

                else
                {
                  objc_storeStrong(&v42, v40);
                  v43 = 3;
                }
              }

              else
              {
                v31 = &_os_log_default;
                v30 = OS_LOG_TYPE_INFO;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  v6 = v31;
                  v7 = v30;
                  __os_log_helper_16_2_2_8_32_4_0(v47, "softwareUpdateAssetWithMaxVersion", v44 & 1);
                  _os_log_impl(&_mh_execute_header, v6, v7, "%s: Asset does not match internal=%d", v47, 0x12u);
                }

                objc_storeStrong(&v31, 0);
                v43 = 3;
              }
            }

            else
            {
              v33 = &_os_log_default;
              v32 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v8 = v33;
                v9 = v32;
                __os_log_helper_16_2_1_8_32(v48, "softwareUpdateAssetWithMaxVersion");
                _os_log_impl(&_mh_execute_header, v8, v9, "%s: Asset missing ReleaseType", v48, 0xCu);
              }

              objc_storeStrong(&v33, 0);
              v43 = 3;
            }

            objc_storeStrong(&v34, 0);
          }

          else
          {
            oslog = &_os_log_default;
            type = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              log = oslog;
              v12 = type;
              __os_log_helper_16_2_1_8_32(v49, "softwareUpdateAssetWithMaxVersion");
              _os_log_impl(&_mh_execute_header, log, v12, "%s: Asset missing _MinOSVersion or _MaxOSVersion", v49, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v43 = 3;
          }

          objc_storeStrong(&v37, 0);
          objc_storeStrong(&v38, 0);
        }

        ++v17;
        if (v15 + 1 >= v18)
        {
          v17 = 0;
          v18 = [v19 countByEnumeratingWithState:__b objects:v50 count:16];
          if (!v18)
          {
            break;
          }
        }
      }
    }

    v46 = v42;
    v43 = 1;
    objc_storeStrong(&v42, 0);
  }

  else
  {
    v46 = [location firstObject];
    v43 = 1;
  }

  objc_storeStrong(&location, 0);
  v4 = v46;

  return v4;
}

uint64_t copyFileToLocalPath(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v31 = 0;
  objc_storeStrong(&v31, a2);
  v30 = [NSURL fileURLWithPath:location];
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v9 = [v30 checkResourceIsReachableAndReturnError:&v27];
  objc_storeStrong(&v29, v27);
  v28 = v9;
  if (v9)
  {
    v23 = &_os_log_default;
    v22 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_8_64(v39, "copyFileToLocalPath", v30);
      _os_log_impl(&_mh_execute_header, v23, v22, "%s: Valid firmware file %@", v39, 0x16u);
    }

    objc_storeStrong(&v23, 0);
    v21 = [v30 lastPathComponent];
    v20 = [v31 stringByAppendingPathComponent:v21];
    v19 = [NSURL fileURLWithPath:v20];
    v18 = [NSURL fileURLWithPath:v31 isDirectory:1];
    if (![v18 checkResourceIsReachableAndReturnError:0])
    {
      v37 = NSFilePosixPermissions;
      v38 = &off_100038B28;
      v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v7 = +[NSFileManager defaultManager];
      v16 = v29;
      v6 = [(NSFileManager *)v7 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:v17 error:&v16];
      objc_storeStrong(&v29, v16);
      v28 = v6;

      if (v28)
      {
        v13 = &_os_log_default;
        v12 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_2_8_32_8_64(v35, "copyFileToLocalPath", v31);
          _os_log_impl(&_mh_execute_header, v13, v12, "%s: UARP Firmware directory created %@", v35, 0x16u);
        }

        objc_storeStrong(&v13, 0);
      }

      else
      {
        v15 = &_os_log_default;
        v14 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_2_8_32_8_64(v36, "copyFileToLocalPath", v29);
          _os_log_impl(&_mh_execute_header, v15, v14, "%s: Failed to create UARP Firmware directory error: %@", v36, 0x16u);
        }

        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v17, 0);
    }

    v3 = +[NSFileManager defaultManager];
    [(NSFileManager *)v3 removeItemAtURL:v19 error:0];

    v5 = +[NSFileManager defaultManager];
    v11 = v29;
    v4 = [(NSFileManager *)v5 copyItemAtURL:v30 toURL:v19 error:&v11];
    objc_storeStrong(&v29, v11);
    v28 = v4;

    if (v28)
    {
      v33 = 1;
      v24 = 1;
    }

    else
    {
      v10 = &_os_log_default;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_3_8_32_8_64_8_64(v34, "copyFileToLocalPath", v19, v29);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Failed to write to path %@ error: %@", v34, 0x20u);
      }

      objc_storeStrong(&v10, 0);
      v33 = 0;
      v24 = 1;
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    oslog = &_os_log_default;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v40, "copyFileToLocalPath", v30, v29);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%s: Invalid firmware file %@ error: %@", v40, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v33 = 0;
    v24 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
  return v33 & 1;
}

id AssetManagerDirectoryPath()
{
  predicate = &AssetManagerDirectoryPath_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_2);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = AssetManagerDirectoryPath_path;

  return v0;
}

uint64_t isDeploymentAllowed(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location count])
  {
    v35 = objc_alloc_init(NSMutableArray);
    v34 = objc_alloc_init(NSDateFormatter);
    [v34 setDateFormat:@"MM/dd/yyyy"];
    memset(__b, 0, sizeof(__b));
    obja = location;
    v16 = [obja countByEnumeratingWithState:__b objects:v40 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obja);
        }

        v33 = *(__b[1] + 8 * v13);
        v31 = [v33 objectForKey:@"minOSVersion"];
        v30 = [v33 objectForKey:@"maxOSVersion"];
        if (v31 && v30)
        {
          v1 = [UARPDeploymentRule alloc];
          v29 = [(UARPDeploymentRule *)v1 initWithMinOSVersion:v31 maxOSVersion:v30];
          if (v29)
          {
            [v35 addObject:v29];
          }

          v36 = 3;
          objc_storeStrong(&v29, 0);
        }

        else
        {
          v28 = [v33 objectForKey:@"rampPeriod"];
          v27 = [v33 objectForKey:@"deploymentLimit"];
          v26 = [v33 objectForKey:@"countryList"];
          v25 = [v33 objectForKey:@"goLiveDate"];
          v24 = [v34 dateFromString:v25];
          v23 = objc_alloc_init(UARPDeploymentRuleConfig);
          [v23 setGoLiveDate:v24];
          [v23 setCountryList:v26];
          [v23 setRampPeriod:v28];
          [v23 setDeploymentLimit:v27];
          v2 = [UARPDeploymentRule alloc];
          v22 = [(UARPDeploymentRule *)v2 initWithConfig:v23];
          if (v22)
          {
            [v35 addObject:v22];
            v36 = 0;
          }

          else
          {
            v36 = 3;
          }

          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v23, 0);
          objc_storeStrong(&v24, 0);
          objc_storeStrong(&v25, 0);
          objc_storeStrong(&v26, 0);
          objc_storeStrong(&v27, 0);
          objc_storeStrong(&v28, 0);
        }

        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obja countByEnumeratingWithState:__b objects:v40 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    v21 = 1;
    v20 = 0;
    memset(v18, 0, sizeof(v18));
    v9 = v35;
    v10 = [v9 countByEnumeratingWithState:v18 objects:v39 count:16];
    if (v10)
    {
      v6 = *v18[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*v18[2] != v6)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(v18[1] + 8 * v7);
        v17 = v20;
        v4 = [v19 isDeploymentAllowed:&v17];
        objc_storeStrong(&v20, v17);
        v21 = v4;
        if ((v4 & 1) == 1)
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [v9 countByEnumeratingWithState:v18 objects:v39 count:16];
          if (!v8)
          {
            goto LABEL_26;
          }
        }
      }

      v36 = 4;
    }

    else
    {
LABEL_26:
      v36 = 0;
    }

    v38 = v21 & 1;
    v36 = 1;
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v38 = 1;
    v36 = 1;
  }

  objc_storeStrong(&location, 0);
  return v38 & 1;
}

uint64_t nullableObjectsAreEqual(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v4 = 0;
  objc_storeStrong(&v4, a2);
  if (location)
  {
    v6 = [location isEqual:v4] & 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&location, 0);
  return v6 & 1;
}

__CFString *mobileAssetPrefixForAppleModelNumber(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if ([location isEqualToString:@"A2525"] == 1)
  {
    v4 = @"com.apple.MobileAsset.DarwinAccessoryUpdate.";
  }

  else
  {
    v4 = @"com.apple.MobileAsset.UARP.";
  }

  objc_storeStrong(&location, 0);
  v1 = v4;

  return v1;
}

uint64_t __os_log_helper_16_2_2_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 66;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_34(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 34;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_66_8_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 2;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_66_8_2_8_34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 2;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 34;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_0_1_4_2(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 2;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v32 = 0;
  v31 = argc;
  location[1] = argv;
  context = objc_autoreleasePoolPush();
  location[0] = &_os_log_default;
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v29;
    __os_log_helper_16_0_0(v28);
    _os_log_impl(&_mh_execute_header, log, type, "Starting uarpassetmanagerd", v28, 2u);
  }

  objc_storeStrong(location, 0);
  if (AUSandboxPlatformInitWithHomeDirectory(0, 0))
  {
    v26 = &_os_log_default;
    v25 = 16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v6 = v26;
      v7 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&_mh_execute_header, v6, v7, "Failed to enter sandbox", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v32 = 1;
    v23 = 1;
  }

  else
  {
    v17[0] = 0;
    v17[1] = v17;
    v18 = 838860800;
    v19 = 48;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    v5 = dispatch_get_global_queue(0, 0);
    block = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = __main_block_invoke;
    v15 = &unk_100035DA8;
    v16 = v17;
    dispatch_async(v5, &block);

    _Block_object_dispose(v17, 8);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  objc_autoreleasePoolPop(context);
  if (!v23)
  {
    v4 = +[NSRunLoop currentRunLoop];
    [(NSRunLoop *)v4 run];

    return 0;
  }

  return v32;
}

void __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

void __main_block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  v1 = [[UARPAssetManagerController alloc] initWithIdleTimeout:30];
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;

  if (!*(*(a1[4] + 8) + 40))
  {
    location[0] = &_os_log_default;
    v8 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_error_impl(&_mh_execute_header, log, type, "Failed to initialize asset manager daemon controller", v7, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

uint64_t __os_log_helper_16_2_2_8_64_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_3_8_64_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 66;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_64_8_32(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}