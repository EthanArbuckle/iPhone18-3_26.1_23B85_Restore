@interface MAPolicyEngine
+ (id)sharedInstance;
- (BOOL)matchPath:(id)a3 group:(id)a4 allowed:(id)a5;
- (BOOL)matchPathSimplified:(id)a3 group:(id)a4 allowed:(id)a5;
- (BOOL)verifyAccessWithAnchorGroup:(id)a3 client:(id)a4 anchorClient:(id)a5 function:(id)a6 error:(id *)a7;
- (BOOL)verifyAccessWithAnyAssetTypes:(id)a3 client:(id)a4 function:(id)a5 error:(id *)a6;
- (BOOL)verifyAccessWithSingleAssetType:(id)a3 client:(id)a4 assetType:(unint64_t)a5 function:(id)a6 error:(id *)a7;
- (BOOL)verifyBooleanEntitlementWith:(id)a3 client:(id)a4 function:(id)a5 error:(id *)a6;
- (BOOL)verifyFileAccess:(id)a3 path:(id)a4 group:(id)a5 client:(id)a6 error:(id *)a7;
- (id)getArrayListFromProcessEntitlement:(id)a3;
- (id)getBooleanFromProcessEntitlement:(id)a3;
@end

@implementation MAPolicyEngine

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049C8;
  block[3] = &unk_100115D08;
  block[4] = a1;
  if (qword_100129378 != -1)
  {
    dispatch_once(&qword_100129378, block);
  }

  v2 = qword_100129380;

  return v2;
}

- (BOOL)verifyAccessWithSingleAssetType:(id)a3 client:(id)a4 assetType:(unint64_t)a5 function:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      [v13 valueForEntitlement:v12];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:v12];
    }
    v16 = ;
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = 0;
        goto LABEL_14;
      }

      if ([v16 containsObject:@"kAllAssets"])
      {
        goto LABEL_9;
      }

      if ([MASDAssetDescriptor isValidType:a5])
      {
        v18 = MASDConvertAssetTypeToString(a5);
        v19 = [NSString stringWithUTF8String:v18];
        v20 = [v16 containsObject:v19];

        if (v20)
        {
LABEL_9:
          v15 = 1;
LABEL_14:

          goto LABEL_15;
        }

        v21 = off_100127BD8;
        if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v23 = v18;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = v14;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Client process is missing asset type %s in entitlement %@ when invoking %@. See rdar://74242783 for detail.", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
      {
        sub_100005D38();
      }
    }

    else if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100005DA0();
    }

    createManagedAssetError();
    *a7 = v15 = 0;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)verifyBooleanEntitlementWith:(id)a3 client:(id)a4 function:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      [v11 valueForEntitlement:v10];
    }

    else
    {
      [(MAPolicyEngine *)self getBooleanFromProcessEntitlement:v10];
    }
    v13 = ;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 BOOLValue])
    {
      v14 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
  }

  if ([v10 isEqualToString:kManagedAssetPersistedGuestPreflightGetDataEntitlement])
  {
    v14 = 0;
  }

  else
  {
    if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100005DA0();
    }

    createManagedAssetError();
    *a6 = v14 = 0;
  }

LABEL_14:

  return v14;
}

- (BOOL)verifyAccessWithAnyAssetTypes:(id)a3 client:(id)a4 function:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      [v11 valueForEntitlement:v10];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:v10];
    }
    v14 = ;
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_27:
        v13 = 0;
        goto LABEL_28;
      }

      if ([v14 containsObject:@"kAllAssets"])
      {
        goto LABEL_9;
      }

      if ([v14 count])
      {
        v24 = a6;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * i);
              if (![MASDAssetDescriptor isValidType:MASDConvertAssetStringToType(v20)])
              {
                v21 = v20;

                if (v21)
                {
                  v22 = off_100127BD8;
                  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v30 = v21;
                    v31 = 2112;
                    v32 = v10;
                    v33 = 2112;
                    v34 = v12;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Client process uses unknown asset type %@ in entitlement %@ when invoking %@. See rdar://74242783 for detail.", buf, 0x20u);
                  }

                  *v24 = createManagedAssetError();
                }

                goto LABEL_27;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v35 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_9:
        v13 = 1;
LABEL_28:

        goto LABEL_29;
      }

      if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
      {
        sub_100005DA0();
      }
    }

    else if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100005E08();
    }

    createManagedAssetError();
    *a6 = v13 = 0;
    goto LABEL_28;
  }

  v13 = 0;
LABEL_29:

  return v13;
}

- (BOOL)verifyAccessWithAnchorGroup:(id)a3 client:(id)a4 anchorClient:(id)a5 function:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      [v13 valueForEntitlement:v12];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:v12];
    }
    v17 = ;
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = 0;
        goto LABEL_22;
      }

      if ([v17 count])
      {
        if ([v17 containsObject:@"*"] & 1) != 0 || (objc_msgSend(v17, "containsObject:", v14))
        {
          v16 = 1;
LABEL_22:

          goto LABEL_23;
        }

        if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
        {
          sub_100005E70();
        }
      }

      else if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
      {
        sub_100005E70();
      }
    }

    else if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100005E70();
    }

    createManagedAssetError();
    *a7 = v16 = 0;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_23:

  return v16;
}

- (BOOL)verifyFileAccess:(id)a3 path:(id)a4 group:(id)a5 client:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v12 && v13)
  {
    if (v15)
    {
      [v15 valueForEntitlement:v12];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:v12];
    }
    v18 = ;
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ([(MAPolicyEngine *)self matchPathSimplified:v13 group:v14 allowed:v18])
      {
        v17 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v19 = off_100127BD8;
      if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_ERROR))
      {
        sub_100005ED8(v12, v19);
      }
    }

    [v16 processIdentifier];
LABEL_16:
    createManagedAssetError();
    *a7 = v17 = 0;
    goto LABEL_17;
  }

  createManagedAssetError();
  *a7 = v17 = 0;
LABEL_18:

  return v17;
}

- (BOOL)matchPathSimplified:(id)a3 group:(id)a4 allowed:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = off_100127BD8;
  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "perform matchPathSimplified check path=%@ group=%@ allowedList=%@", buf, 0x20u);
  }

  v11 = [v8 stringByAppendingFormat:@"/%@", v7];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ([v17 hasSuffix:@"/"])
        {
          if ([v11 hasPrefix:v17])
          {
            goto LABEL_15;
          }
        }

        else if ([v11 isEqualToString:v17])
        {
LABEL_15:
          v18 = 1;
          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_16:

  return v18;
}

- (BOOL)matchPath:(id)a3 group:(id)a4 allowed:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = off_100127BD8;
  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v47 = v7;
    v48 = 2112;
    v49 = v8;
    v50 = 2112;
    v51 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "perform matchPath check path=%@ group=%@ allowedList=%@", buf, 0x20u);
  }

  v45 = [v7 pathComponents];
  v43 = [v45 count];
  v11 = off_100127BD8;
  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_DEBUG))
  {
    sub_100005F50(v45, v43, v11);
  }

  if (![v9 count])
  {
    v39 = 0;
    goto LABEL_40;
  }

  v41 = v7;
  v42 = v8;
  v12 = 0;
  v44 = v9;
  while (1)
  {
    v13 = [v9 objectAtIndexedSubscript:v12];
    v14 = [v13 pathComponents];

    v15 = [v14 count];
    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = v15;
    v17 = [v14 objectAtIndexedSubscript:0];
    v18 = [@"/" isEqualToString:v17];

    v19 = 0;
    if (v18)
    {
      if (v16 == 1)
      {
        goto LABEL_36;
      }

      v19 = 1;
    }

    v20 = [v14 objectAtIndexedSubscript:v19];
    if ([@"*" isEqualToString:v20] && (objc_msgSend(v8, "isEqualToString:", @"private") & 1) == 0)
    {
    }

    else
    {
      v21 = [v14 objectAtIndexedSubscript:v19];
      v22 = [v8 isEqualToString:v21];

      if (!v22)
      {
        goto LABEL_36;
      }
    }

    v23 = v19 + 1;
    v24 = v16 - 1;
    v25 = [v14 objectAtIndexedSubscript:v16 - 1];
    v26 = [@"/" isEqualToString:v25];

    if (!v26)
    {
      break;
    }

    v27 = &v24[-v23];
    if (&v24[-v23] < v43)
    {
      goto LABEL_21;
    }

LABEL_36:

    ++v12;
    v9 = v44;
    if ([v44 count] <= v12)
    {
      v39 = 0;
      v7 = v41;
      goto LABEL_40;
    }
  }

  v27 = &v16[-v23];
  if (&v16[-v23] != v43)
  {
    goto LABEL_36;
  }

  v24 = v16;
LABEL_21:
  if (v24 != v23)
  {
    v28 = 0;
    if (v27 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v27;
    }

    do
    {
      v30 = [v14 objectAtIndexedSubscript:v23 + v28];
      if ([v30 hasSuffix:@"*"])
      {
        if ([v30 length] != 1)
        {
          v31 = [v45 objectAtIndexedSubscript:v28];
          v32 = [v30 substringToIndex:{objc_msgSend(v30, "length") - 1}];
          v33 = [v31 hasPrefix:v32];

          if ((v33 & 1) == 0)
          {
LABEL_35:

            v8 = v42;
            goto LABEL_36;
          }
        }
      }

      else
      {
        v34 = [v30 hasPrefix:@"*"];
        v35 = [v45 objectAtIndexedSubscript:v28];
        if (v34)
        {
          v36 = [v30 substringFromIndex:1];
          v37 = [v35 hasSuffix:v36];

          if ((v37 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v38 = [v30 isEqualToString:v35];

          if ((v38 & 1) == 0)
          {
            goto LABEL_35;
          }
        }
      }

      ++v28;
    }

    while (v29 != v28);
  }

  v39 = 1;
  v7 = v41;
  v8 = v42;
  v9 = v44;
LABEL_40:

  return v39;
}

- (id)getArrayListFromProcessEntitlement:(id)a3
{
  v3 = a3;
  error = 0;
  v4 = SecTaskCreateFromSelf(kCFAllocatorDefault);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopySigningIdentifier(v4, &error);
    if (v6)
    {
      v7 = SecTaskCopyValueForEntitlement(v5, v3, &error);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
    if (error)
    {
      CFRelease(error);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7;
}

- (id)getBooleanFromProcessEntitlement:(id)a3
{
  v3 = a3;
  error = 0;
  v4 = SecTaskCreateFromSelf(kCFAllocatorDefault);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopySigningIdentifier(v4, &error);
    if (v6)
    {
      v7 = SecTaskCopyValueForEntitlement(v5, v3, &error);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
    if (error)
    {
      CFRelease(error);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7;
}

@end