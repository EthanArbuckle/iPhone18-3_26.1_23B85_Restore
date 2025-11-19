@interface KmlCachedAuthorizationManager
+ (id)sharedManager;
- (BOOL)isCacheDirty;
- (KmlCachedAuthorizationManager)init;
- (id)getCachedAuthorizationsWithError:(id *)a3;
- (id)rebuildAuthorizationCacheWithError:(id *)a3;
- (void)markCacheDirty;
@end

@implementation KmlCachedAuthorizationManager

+ (id)sharedManager
{
  if (qword_10051B098 != -1)
  {
    sub_10037A38C();
  }

  v3 = qword_10051B090;

  return v3;
}

- (KmlCachedAuthorizationManager)init
{
  v3.receiver = self;
  v3.super_class = KmlCachedAuthorizationManager;
  result = [(KmlCachedAuthorizationManager *)&v3 init];
  if (result)
  {
    result->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)getCachedAuthorizationsWithError:(id *)a3
{
  os_unfair_lock_lock(&self->_cacheLock);
  if (a3)
  {
    *a3 = 0;
  }

  if ([SESBootUUID isFirstLaunchAfterBootForKey:@"com.apple.sesd.kml.refreshCachedAuths"])
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[KmlCachedAuthorizationManager getCachedAuthorizationsWithError:]";
      v42 = 1024;
      v43 = 136;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Rebuilding auth cache on first boot", buf, 0x12u);
    }

    [(KmlCachedAuthorizationManager *)self setIsCacheDirty:1];
    v39 = 0;
    v6 = [(KmlCachedAuthorizationManager *)self rebuildAuthorizationCacheWithError:&v39];
    v7 = v39;
    v8 = v7;
    if (v7)
    {
      if (!a3)
      {
        goto LABEL_39;
      }

      v9 = v7;
      goto LABEL_14;
    }

    [SESBootUUID setFirstLaunchAfterBootDoneForKey:@"com.apple.sesd.kml.refreshCachedAuths"];
  }

  else if ([(KmlCachedAuthorizationManager *)self isCacheDirty])
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[KmlCachedAuthorizationManager getCachedAuthorizationsWithError:]";
      v42 = 1024;
      v43 = 146;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s : %i : Cache is dirty, rebuilding authorization cache", buf, 0x12u);
    }

    v38 = 0;
    v6 = [(KmlCachedAuthorizationManager *)self rebuildAuthorizationCacheWithError:&v38];
    v11 = v38;
    v8 = v11;
    if (a3)
    {
      v12 = v11;
LABEL_14:
      *a3 = v8;
    }
  }

  else
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[KmlCachedAuthorizationManager getCachedAuthorizationsWithError:]";
      v42 = 1024;
      v43 = 154;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Getting cached authorizations", buf, 0x12u);
    }

    v14 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    v15 = [v14 objectForKey:@"kmlCachedAuthorizationCache"];
    v16 = objc_opt_new();
    v31 = v14;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v18)
    {
      v19 = *v35;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          v33 = 0;
          v22 = [KmlCachedAuthorization decodeWithData:v21 error:&v33];
          v23 = v33;
          if (v22)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 0;
          }

          if (!v24)
          {
            v26 = v23;
            v27 = KmlLogger();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v41 = "[KmlCachedAuthorizationManager getCachedAuthorizationsWithError:]";
              v42 = 1024;
              v43 = 164;
              v44 = 2112;
              v45 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s : %i : Unable to read auth from cache, setting cache as dirty: %@", buf, 0x1Cu);
            }

            [(KmlCachedAuthorizationManager *)self setIsCacheDirty:1];
            v32 = v26;
            v6 = [(KmlCachedAuthorizationManager *)self rebuildAuthorizationCacheWithError:&v32];
            v8 = v32;

            if (a3)
            {
              v29 = v8;
              *a3 = v8;
            }

            goto LABEL_38;
          }

          [v16 addObject:v22];
        }

        v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v25 = KmlLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[KmlCachedAuthorizationManager getCachedAuthorizationsWithError:]";
      v42 = 1024;
      v43 = 176;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s : %i : Done getting cached authorizations", buf, 0x12u);
    }

    v6 = v16;
    v8 = 0;
LABEL_38:
  }

LABEL_39:

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (void)markCacheDirty
{
  os_unfair_lock_lock(&self->_cacheLock);
  [(KmlCachedAuthorizationManager *)self setIsCacheDirty:1];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (BOOL)isCacheDirty
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
  v3 = [v2 objectForKey:@"kmlCachedAuthorizationIsCacheDirty"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)rebuildAuthorizationCacheWithError:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  if (![(KmlCachedAuthorizationManager *)self isCacheDirty])
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[KmlCachedAuthorizationManager rebuildAuthorizationCacheWithError:]";
      v40 = 1024;
      v41 = 211;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Rebuilding non-dirty cache", buf, 0x12u);
    }

    [(KmlCachedAuthorizationManager *)self setIsCacheDirty:1];
  }

  v36 = 0;
  v6 = SESEndPointListAuthorizations();
  v7 = 0;
  v8 = KmlLogger();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "[KmlCachedAuthorizationManager rebuildAuthorizationCacheWithError:]";
      v40 = 1024;
      v41 = 218;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s : %i : Error in getting saved authorizations : %@", buf, 0x1Cu);
    }

    if (a3)
    {
      v10 = v7;
      v11 = 0;
      *a3 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v28 = self;
    v29 = a3;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[KmlCachedAuthorizationManager rebuildAuthorizationCacheWithError:]";
      v40 = 1024;
      v41 = 225;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Rebuilding authorization cache", buf, 0x12u);
    }

    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v6;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [[KmlCachedAuthorization alloc] initWithAuthorizationInfo:*(*(&v32 + 1) + 8 * i)];
          v31 = 0;
          v20 = [(KmlCachedAuthorization *)v19 encodeWithError:&v31];
          v21 = v31;
          if (v20)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v7 = v21;
            v24 = KmlLogger();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v39 = "[KmlCachedAuthorizationManager rebuildAuthorizationCacheWithError:]";
              v40 = 1024;
              v41 = 235;
              v42 = 2112;
              v43 = v7;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s : %i : Failed to encode auth for cache: %@", buf, 0x1Cu);
            }

            v6 = v30;
            if (v29)
            {
              v26 = v7;
              *v29 = v7;
            }

            v11 = 0;
            goto LABEL_35;
          }

          [v12 addObject:v19];
          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v14 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    [v14 setObject:v13 forKey:@"kmlCachedAuthorizationCache"];
    [(KmlCachedAuthorizationManager *)v28 setIsCacheDirty:0];
    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[KmlCachedAuthorizationManager rebuildAuthorizationCacheWithError:]";
      v40 = 1024;
      v41 = 250;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s : %i : Authorization cache successfully rebuilt", buf, 0x12u);
    }

    v11 = v12;
    v7 = 0;
    v6 = v30;
LABEL_35:
  }

  return v11;
}

@end