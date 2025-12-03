@interface MAPolicyEngine
+ (id)sharedInstance;
- (BOOL)matchPath:(id)path group:(id)group allowed:(id)allowed;
- (BOOL)matchPathSimplified:(id)simplified group:(id)group allowed:(id)allowed;
- (BOOL)verifyAccessWithAnchorGroup:(id)group client:(id)client anchorClient:(id)anchorClient function:(id)function error:(id *)error;
- (BOOL)verifyAccessWithAnyAssetTypes:(id)types client:(id)client function:(id)function error:(id *)error;
- (BOOL)verifyAccessWithSingleAssetType:(id)type client:(id)client assetType:(unint64_t)assetType function:(id)function error:(id *)error;
- (BOOL)verifyBooleanEntitlementWith:(id)with client:(id)client function:(id)function error:(id *)error;
- (BOOL)verifyFileAccess:(id)access path:(id)path group:(id)group client:(id)client error:(id *)error;
- (id)getArrayListFromProcessEntitlement:(id)entitlement;
- (id)getBooleanFromProcessEntitlement:(id)entitlement;
@end

@implementation MAPolicyEngine

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049C8;
  block[3] = &unk_100115D08;
  block[4] = self;
  if (qword_100129378 != -1)
  {
    dispatch_once(&qword_100129378, block);
  }

  v2 = qword_100129380;

  return v2;
}

- (BOOL)verifyAccessWithSingleAssetType:(id)type client:(id)client assetType:(unint64_t)assetType function:(id)function error:(id *)error
{
  typeCopy = type;
  clientCopy = client;
  functionCopy = function;
  if (typeCopy)
  {
    if (clientCopy)
    {
      [clientCopy valueForEntitlement:typeCopy];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:typeCopy];
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

      if ([MASDAssetDescriptor isValidType:assetType])
      {
        v18 = MASDConvertAssetTypeToString(assetType);
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
          v25 = typeCopy;
          v26 = 2112;
          v27 = functionCopy;
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
    *error = v15 = 0;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)verifyBooleanEntitlementWith:(id)with client:(id)client function:(id)function error:(id *)error
{
  withCopy = with;
  clientCopy = client;
  functionCopy = function;
  if (withCopy)
  {
    if (clientCopy)
    {
      [clientCopy valueForEntitlement:withCopy];
    }

    else
    {
      [(MAPolicyEngine *)self getBooleanFromProcessEntitlement:withCopy];
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

  if ([withCopy isEqualToString:kManagedAssetPersistedGuestPreflightGetDataEntitlement])
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
    *error = v14 = 0;
  }

LABEL_14:

  return v14;
}

- (BOOL)verifyAccessWithAnyAssetTypes:(id)types client:(id)client function:(id)function error:(id *)error
{
  typesCopy = types;
  clientCopy = client;
  functionCopy = function;
  if (typesCopy)
  {
    if (clientCopy)
    {
      [clientCopy valueForEntitlement:typesCopy];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:typesCopy];
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
        errorCopy = error;
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
                    v32 = typesCopy;
                    v33 = 2112;
                    v34 = functionCopy;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Client process uses unknown asset type %@ in entitlement %@ when invoking %@. See rdar://74242783 for detail.", buf, 0x20u);
                  }

                  *errorCopy = createManagedAssetError();
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
    *error = v13 = 0;
    goto LABEL_28;
  }

  v13 = 0;
LABEL_29:

  return v13;
}

- (BOOL)verifyAccessWithAnchorGroup:(id)group client:(id)client anchorClient:(id)anchorClient function:(id)function error:(id *)error
{
  groupCopy = group;
  clientCopy = client;
  anchorClientCopy = anchorClient;
  functionCopy = function;
  if (groupCopy)
  {
    if (clientCopy)
    {
      [clientCopy valueForEntitlement:groupCopy];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:groupCopy];
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
        if ([v17 containsObject:@"*"] & 1) != 0 || (objc_msgSend(v17, "containsObject:", anchorClientCopy))
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
    *error = v16 = 0;
    goto LABEL_22;
  }

  v16 = 0;
LABEL_23:

  return v16;
}

- (BOOL)verifyFileAccess:(id)access path:(id)path group:(id)group client:(id)client error:(id *)error
{
  accessCopy = access;
  pathCopy = path;
  groupCopy = group;
  clientCopy = client;
  v16 = clientCopy;
  if (accessCopy && pathCopy)
  {
    if (clientCopy)
    {
      [clientCopy valueForEntitlement:accessCopy];
    }

    else
    {
      [(MAPolicyEngine *)self getArrayListFromProcessEntitlement:accessCopy];
    }
    v18 = ;
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }

      if ([(MAPolicyEngine *)self matchPathSimplified:pathCopy group:groupCopy allowed:v18])
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
        sub_100005ED8(accessCopy, v19);
      }
    }

    [v16 processIdentifier];
LABEL_16:
    createManagedAssetError();
    *error = v17 = 0;
    goto LABEL_17;
  }

  createManagedAssetError();
  *error = v17 = 0;
LABEL_18:

  return v17;
}

- (BOOL)matchPathSimplified:(id)simplified group:(id)group allowed:(id)allowed
{
  simplifiedCopy = simplified;
  groupCopy = group;
  allowedCopy = allowed;
  v10 = off_100127BD8;
  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v26 = simplifiedCopy;
    v27 = 2112;
    v28 = groupCopy;
    v29 = 2112;
    v30 = allowedCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "perform matchPathSimplified check path=%@ group=%@ allowedList=%@", buf, 0x20u);
  }

  simplifiedCopy = [groupCopy stringByAppendingFormat:@"/%@", simplifiedCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = allowedCopy;
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
          if ([simplifiedCopy hasPrefix:v17])
          {
            goto LABEL_15;
          }
        }

        else if ([simplifiedCopy isEqualToString:v17])
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

- (BOOL)matchPath:(id)path group:(id)group allowed:(id)allowed
{
  pathCopy = path;
  groupCopy = group;
  allowedCopy = allowed;
  v10 = off_100127BD8;
  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v47 = pathCopy;
    v48 = 2112;
    v49 = groupCopy;
    v50 = 2112;
    v51 = allowedCopy;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "perform matchPath check path=%@ group=%@ allowedList=%@", buf, 0x20u);
  }

  pathComponents = [pathCopy pathComponents];
  v43 = [pathComponents count];
  v11 = off_100127BD8;
  if (os_log_type_enabled(off_100127BD8, OS_LOG_TYPE_DEBUG))
  {
    sub_100005F50(pathComponents, v43, v11);
  }

  if (![allowedCopy count])
  {
    v39 = 0;
    goto LABEL_40;
  }

  v41 = pathCopy;
  v42 = groupCopy;
  v12 = 0;
  v44 = allowedCopy;
  while (1)
  {
    v13 = [allowedCopy objectAtIndexedSubscript:v12];
    pathComponents2 = [v13 pathComponents];

    v15 = [pathComponents2 count];
    if (!v15)
    {
      goto LABEL_36;
    }

    v16 = v15;
    v17 = [pathComponents2 objectAtIndexedSubscript:0];
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

    v20 = [pathComponents2 objectAtIndexedSubscript:v19];
    if ([@"*" isEqualToString:v20] && (objc_msgSend(groupCopy, "isEqualToString:", @"private") & 1) == 0)
    {
    }

    else
    {
      v21 = [pathComponents2 objectAtIndexedSubscript:v19];
      v22 = [groupCopy isEqualToString:v21];

      if (!v22)
      {
        goto LABEL_36;
      }
    }

    v23 = v19 + 1;
    v24 = v16 - 1;
    v25 = [pathComponents2 objectAtIndexedSubscript:v16 - 1];
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
    allowedCopy = v44;
    if ([v44 count] <= v12)
    {
      v39 = 0;
      pathCopy = v41;
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
      v30 = [pathComponents2 objectAtIndexedSubscript:v23 + v28];
      if ([v30 hasSuffix:@"*"])
      {
        if ([v30 length] != 1)
        {
          v31 = [pathComponents objectAtIndexedSubscript:v28];
          v32 = [v30 substringToIndex:{objc_msgSend(v30, "length") - 1}];
          v33 = [v31 hasPrefix:v32];

          if ((v33 & 1) == 0)
          {
LABEL_35:

            groupCopy = v42;
            goto LABEL_36;
          }
        }
      }

      else
      {
        v34 = [v30 hasPrefix:@"*"];
        v35 = [pathComponents objectAtIndexedSubscript:v28];
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
  pathCopy = v41;
  groupCopy = v42;
  allowedCopy = v44;
LABEL_40:

  return v39;
}

- (id)getArrayListFromProcessEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  error = 0;
  v4 = SecTaskCreateFromSelf(kCFAllocatorDefault);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopySigningIdentifier(v4, &error);
    if (v6)
    {
      v7 = SecTaskCopyValueForEntitlement(v5, entitlementCopy, &error);
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

- (id)getBooleanFromProcessEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  error = 0;
  v4 = SecTaskCreateFromSelf(kCFAllocatorDefault);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopySigningIdentifier(v4, &error);
    if (v6)
    {
      v7 = SecTaskCopyValueForEntitlement(v5, entitlementCopy, &error);
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