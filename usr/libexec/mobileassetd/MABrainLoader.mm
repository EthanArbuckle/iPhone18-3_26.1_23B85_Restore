@interface MABrainLoader
+ (id)sharedInstance;
- (BOOL)healthCheck:(id)check history:(id)history;
- (BOOL)loadCryptex:(BOOL)cryptex bundle:(id)bundle bundleName:(id)name;
- (BOOL)loadTrustCache:(BOOL)cache bundle:(id)bundle bundleName:(id)name needsUnlock:(BOOL *)unlock;
- (BOOL)verify:(id)verify history:(id)history;
- (char)getTrainName;
- (id)loadHistory;
- (void)recordLaunch:(id)launch history:(id)history;
@end

@implementation MABrainLoader

+ (id)sharedInstance
{
  if (qword_100010608 != -1)
  {
    sub_1000067E0();
  }

  return qword_100010600;
}

- (BOOL)loadCryptex:(BOOL)cryptex bundle:(id)bundle bundleName:(id)name
{
  cryptexCopy = cryptex;
  bundleCopy = bundle;
  nameCopy = name;
  if (([bundleCopy isPersonalized] & 1) == 0 && (objc_msgSend(bundleCopy, "isGloballySigned") & 1) == 0 && !cryptexCopy)
  {
    v13 = sub_100000D90(@"Brain");
    v14 = objc_claimAutoreleasedReturnValue(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = nameCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ is not personalized, and unpersonalized brains are not allowed.", buf, 0xCu);
    }

    v15 = 0;
LABEL_17:

    v17 = 0;
    goto LABEL_18;
  }

  v9 = sub_100000D90(@"Brain");
  v10 = objc_claimAutoreleasedReturnValue(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (cryptexCopy)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v22 = nameCopy;
    v12 = "[MAB] MobileAssetBrain bundle %@ is personalized, but unpersonalized brains are also allowed.";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v22 = nameCopy;
    v12 = "[MAB] MobileAssetBrain bundle %@ is personalized.";
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
LABEL_13:

  v20 = 0;
  v16 = [bundleCopy graft:&v20];
  v15 = v20;
  if ((v16 & 1) == 0)
  {
    v18 = sub_100000D90(@"Brain");
    v14 = objc_claimAutoreleasedReturnValue(v18);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = nameCopy;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[MAB] Error grafting MobileAssetBrain bundle %@: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v17 = 1;
LABEL_18:

  return v17;
}

- (BOOL)loadTrustCache:(BOOL)cache bundle:(id)bundle bundleName:(id)name needsUnlock:(BOOL *)unlock
{
  LODWORD(v8) = cache;
  bundleCopy = bundle;
  nameCopy = name;
  if ([bundleCopy isPersonalized])
  {
    v11 = objc_claimAutoreleasedReturnValue([bundleCopy trustCachePath]);
    v48 = 0;
    v12 = objc_claimAutoreleasedReturnValue([NSData dataWithContentsOfFile:v11 options:0 error:&v48]);
    v13 = v48;

    if (v13)
    {
      v14 = sub_100000D90(@"Brain");
      v15 = objc_claimAutoreleasedReturnValue(v14);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        LOBYTE(v8) = 0;
LABEL_38:

        goto LABEL_39;
      }

      v16 = objc_claimAutoreleasedReturnValue([bundleCopy trustCachePath]);
      *buf = 138412546;
      v50 = v16;
      v51 = 2112;
      *v52 = v13;
      v17 = "[MAB] Error loading trust cache at %@: %@";
      v18 = v15;
      v19 = 22;
      goto LABEL_5;
    }

    v22 = objc_claimAutoreleasedReturnValue([bundleCopy ticketPath]);
    v47 = 0;
    v15 = objc_claimAutoreleasedReturnValue([NSData dataWithContentsOfFile:v22 options:0 error:&v47]);
    v13 = v47;

    if (v13)
    {
      v23 = sub_100000D90(@"Brain");
      v16 = objc_claimAutoreleasedReturnValue(v23);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_claimAutoreleasedReturnValue([bundleCopy ticketPath]);
        *buf = 138412546;
        v50 = v24;
        v51 = 2112;
        *v52 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[MAB] Error loading Cryptex1 ticket at %@: %@", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if ([v12 length] >> 32)
    {
      v25 = 0;
    }

    else
    {
      v25 = [v12 length];
    }

    if ([v15 length]>> 32)
    {
      v26 = 0;
    }

    else
    {
      v26 = [v15 length];
    }

    if (!v12 || !v25 || !v15 || !v26)
    {
      v38 = sub_100000D90(@"Brain");
      v16 = objc_claimAutoreleasedReturnValue(v38);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138412802;
      v50 = nameCopy;
      v51 = 2112;
      *v52 = v12;
      *&v52[8] = 2112;
      *&v52[10] = v15;
      v17 = "[MAB] Trust cache and/or ticket for MobileAssetBrain bundle %@ are invalid\ntrustCache=%@\nticket=%@";
      v18 = v16;
      v19 = 32;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_36:

      goto LABEL_37;
    }

    hasValidCurrentBootOnlyTicket = [bundleCopy hasValidCurrentBootOnlyTicket];
    bytes = [v12 bytes];
    bytes2 = [v15 bytes];
    if (hasValidCurrentBootOnlyTicket)
    {
      v29 = 24;
    }

    else
    {
      v29 = 17;
    }

    trust_cache = amfi_load_trust_cache(v29, bytes, v25, bytes2, v26, 0, 0);
    v31 = __error();
    if (trust_cache)
    {
      v32 = *v31;
      v33 = sub_100001A94();
      v34 = sub_100000D90(@"Brain");
      v35 = objc_claimAutoreleasedReturnValue(v34);
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        if (v36)
        {
          v37 = strerror(v32);
          *buf = 138412802;
          v50 = nameCopy;
          v51 = 1024;
          *v52 = v32;
          *&v52[4] = 2080;
          *&v52[6] = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[MAB] Failed to load trust cache for MobileAssetBrain bundle %@ perhaps due to locked device state: errno=%d (%s)", buf, 0x1Cu);
        }

        LOBYTE(v8) = 0;
        *unlock = 1;
        goto LABEL_38;
      }

      if (v36)
      {
        v44 = strerror(v32);
        *buf = 138412802;
        v50 = nameCopy;
        v51 = 1024;
        *v52 = v32;
        *&v52[4] = 2080;
        *&v52[6] = v44;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "[MAB] Failed to load trust cache for MobileAssetBrain bundle %@: errno=%d (%s)", buf, 0x1Cu);
      }

      if (!v8)
      {
        goto LABEL_38;
      }

      v45 = sub_100000D90(@"Brain");
      v8 = objc_claimAutoreleasedReturnValue(v45);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      *buf = 0;
      v41 = "[MAB] Proceeding because unpersonalized brains are allowed.";
      v42 = v8;
      v43 = 2;
    }

    else
    {
      v40 = sub_100000D90(@"Brain");
      v8 = objc_claimAutoreleasedReturnValue(v40);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_48:

        LOBYTE(v8) = 1;
        goto LABEL_38;
      }

      *buf = 138412290;
      v50 = nameCopy;
      v41 = "[MAB] Successfully loaded trust cache for MobileAssetBrain bundle %@";
      v42 = v8;
      v43 = 12;
    }

    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
    goto LABEL_48;
  }

  v20 = sub_100000D90(@"Brain");
  v21 = objc_claimAutoreleasedReturnValue(v20);
  v13 = v21;
  if (v8)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain bundle %@ is not personalized, but unpersonalized brains are allowed.", buf, 0xCu);
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = nameCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ is not personalized, and unpersonalized brains are not allowed.", buf, 0xCu);
    }

    LOBYTE(v8) = 0;
  }

LABEL_39:

  return v8;
}

- (id)loadHistory
{
  memset(&v23, 0, sizeof(v23));
  if (lstat([@"/.nofollow/private/var/run/com.apple.mobileassetd-MobileAssetBrain" fileSystemRepresentation], &v23))
  {
    v2 = *__error();
    v3 = sub_100000D90(@"Brain");
    v4 = objc_claimAutoreleasedReturnValue(v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v2 == 2)
    {
      if (v5)
      {
        *buf = 0;
        v6 = "[MAB] mobileassetd has no launch history; possible first launch since boot.";
LABEL_13:
        v18 = v4;
        v19 = 2;
        goto LABEL_14;
      }
    }

    else if (v5)
    {
      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315138;
      v25 = v17;
      v6 = "[MAB] Error reading mobileassetd launch history file metadata: %s";
      v18 = v4;
      v19 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v6, buf, v19);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (v23.st_size <= 0x10000)
  {
    v4 = objc_claimAutoreleasedReturnValue([NSURL fileURLWithPath:@"/.nofollow/private/var/run/com.apple.mobileassetd-MobileAssetBrain"]);
    v22 = 0;
    v7 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithContentsOfURL:v4 error:&v22]);
    v8 = v22;
    v9 = sub_100000D90(@"Brain");
    v10 = objc_claimAutoreleasedReturnValue(v9);
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v25 = v8;
        v12 = "[MAB] Could not load mobileassetd launch history: %@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 12;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "[MAB] mobileassetd launch history successfully loaded";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 2;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v20 = sub_100000D90(@"Brain");
  v4 = objc_claimAutoreleasedReturnValue(v20);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "[MAB] mobileassetd launch history file is too large; disregarding.";
    goto LABEL_13;
  }

LABEL_15:
  v7 = 0;
LABEL_16:

  return v7;
}

- (BOOL)healthCheck:(id)check history:(id)history
{
  historyCopy = history;
  v6 = objc_claimAutoreleasedReturnValue([check bundleId]);
  v7 = objc_claimAutoreleasedReturnValue([historyCopy objectForKeyedSubscript:@"LaunchRecords"]);
  v8 = objc_claimAutoreleasedReturnValue([v7 objectForKeyedSubscript:v6]);

  if (v8)
  {
    v9 = [v8 count];
    v36 = objc_claimAutoreleasedReturnValue(+[NSDate date]);
    if (v9)
    {
      v35 = historyCopy;
      v10 = 0;
      v11 = 0;
      v34 = v9;
      v12 = v9 - 1;
      v13 = 0.0;
      do
      {
        v14 = v10;
        v10 = objc_claimAutoreleasedReturnValue([v8 objectAtIndexedSubscript:v12]);

        v15 = objc_claimAutoreleasedReturnValue([v10 objectForKeyedSubscript:@"LaunchDate"]);
        v16 = objc_opt_class(NSDate);
        if (objc_opt_isKindOfClass(v15, v16))
        {
          [v36 timeIntervalSinceDate:v15];
          v13 = v17;
          if (v17 <= 60.0)
          {
            ++v11;
          }
        }

        else
        {
          v18 = sub_100000D90(@"Brain");
          v19 = objc_claimAutoreleasedReturnValue(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v38 = @"LaunchDate";
            v39 = 2112;
            v40 = *&v10;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[MAB] Invalid %@ field in launch record:\n%@", buf, 0x16u);
          }
        }

        --v12;
      }

      while (v12 != -1);
      if (v11 >= 3)
      {
        v20 = sub_100000D90(@"Brain");
        v21 = objc_claimAutoreleasedReturnValue(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v38 = v6;
          v39 = 2048;
          v40 = *&v11;
          v41 = 2080;
          v42 = "s";
          v43 = 2048;
          v44 = 0x404E000000000000;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ has been relaunched %lu time%s in the last %0.1f seconds. This is unhealthy!", buf, 0x2Au);
        }

        v22 = 0;
        historyCopy = v35;
        goto LABEL_31;
      }

      if (v13 >= 3600.0)
      {
        v28 = v34 / v13;
        if (v28 >= 0.00111111111)
        {
          v32 = sub_100000D90(@"Brain");
          v21 = objc_claimAutoreleasedReturnValue(v32);
          historyCopy = v35;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v33 = "s";
            *buf = 138412802;
            v38 = v6;
            if (v28 * 3600.0 == 1.0)
            {
              v33 = "";
            }

            v39 = 2048;
            v40 = v28 * 3600.0;
            v41 = 2080;
            v42 = v33;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ has been relaunched on average %0.1f time%s per hour. This is unhealthy!", buf, 0x20u);
          }

          v22 = 0;
          goto LABEL_31;
        }
      }

      historyCopy = v35;
      if (v11)
      {
        v29 = sub_100000D90(@"Brain");
        v21 = objc_claimAutoreleasedReturnValue(v29);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v30 = "s";
          *buf = 138413058;
          v38 = v6;
          if (v11 == 1)
          {
            v30 = "";
          }

          v39 = 2048;
          v40 = *&v11;
          v41 = 2080;
          v42 = v30;
          v43 = 2048;
          v44 = 0x404E000000000000;
          v25 = "[MAB] MobileAssetBrain bundle %@ has been relaunched %lu time%s in the last %0.1f seconds.";
          v26 = v21;
          v27 = 42;
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v10 = 0;
    }

    v24 = sub_100000D90(@"Brain");
    v21 = objc_claimAutoreleasedReturnValue(v24);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      v25 = "[MAB] MobileAssetBrain bundle %@ appears to be healthy.";
      v26 = v21;
      v27 = 12;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }

LABEL_30:
    v22 = 1;
LABEL_31:

    goto LABEL_32;
  }

  v23 = sub_100000D90(@"Brain");
  v10 = objc_claimAutoreleasedReturnValue(v23);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MAB] There are no launch records for MobileAssetBrain bundle %@", buf, 0xCu);
  }

  v22 = 1;
LABEL_32:

  return v22;
}

- (BOOL)verify:(id)verify history:(id)history
{
  verifyCopy = verify;
  historyCopy = history;
  v8 = objc_claimAutoreleasedReturnValue([verifyCopy bundleId]);
  v9 = objc_claimAutoreleasedReturnValue([verifyCopy graftPath]);
  v10 = objc_claimAutoreleasedReturnValue([v9 stringByAppendingPathComponent:@"/System/Library/CoreServices/RestoreVersion.plist"]);

  v11 = objc_claimAutoreleasedReturnValue([NSURL fileURLWithPath:v10]);
  v44 = 0;
  v12 = objc_claimAutoreleasedReturnValue([NSDictionary dictionaryWithContentsOfURL:v11 error:&v44]);
  v13 = v44;

  if (v12)
  {
    v14 = objc_claimAutoreleasedReturnValue([v12 objectForKeyedSubscript:@"RestoreLongVersion"]);
    v15 = objc_claimAutoreleasedReturnValue(+[SUCoreDevice sharedDevice]);
    v16 = objc_claimAutoreleasedReturnValue([v15 restoreVersion]);

    if (v14 && v16)
    {
      v43 = historyCopy;
      v17 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v14];
      v18 = [[SUCoreRestoreVersion alloc] initWithRestoreVersion:v16];
      v19 = v18;
      if (!v17 || !v18)
      {
        if (!v17)
        {
          v25 = sub_100000D90(@"Brain");
          v26 = objc_claimAutoreleasedReturnValue(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v46 = v8;
            v47 = 2112;
            v48 = v14;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ RestoreVersion string is invalid: %@", buf, 0x16u);
          }
        }

        if (v19)
        {
          goto LABEL_44;
        }

        v27 = sub_100000D90(@"Brain");
        v21 = objc_claimAutoreleasedReturnValue(v27);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v16;
          v22 = "[MAB] System RestoreVersion string is invalid: %@";
          v28 = v21;
          v29 = 12;
LABEL_42:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, v22, buf, v29);
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      if ([v18 isComparable:v17] & 1) != 0 || (sub_100001910())
      {
        if ([v19 isComparable:v17])
        {
          if ([v19 compare:v17] == 1)
          {
            v20 = sub_100000D90(@"Brain");
            v21 = objc_claimAutoreleasedReturnValue(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v46 = v8;
              v47 = 2112;
              v48 = v14;
              v49 = 2112;
              v50 = v16;
              v22 = "[MAB] MobileAssetBrain bundle %@ is older than current OS: %@ < %@";
LABEL_41:
              v28 = v21;
              v29 = 32;
              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v33 = sub_100000D90(@"Brain");
          v41 = objc_claimAutoreleasedReturnValue(v33);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            buildGroup = [v19 buildGroup];
            buildGroup2 = [v17 buildGroup];
            *buf = 138412802;
            v46 = v8;
            v47 = 2048;
            v48 = buildGroup;
            v49 = 2048;
            v50 = buildGroup2;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ is from a different build group than the OS, but cross build group brains are allowed. (%ld -> %ld)", buf, 0x20u);
          }
        }

        if (sub_100001948())
        {
          v35 = sub_100000D90(@"Brain");
          v36 = objc_claimAutoreleasedReturnValue(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[MAB] MABrain health check is disabled.", buf, 2u);
          }

          v24 = 1;
        }

        else
        {
          v24 = [(MABrainLoader *)self healthCheck:verifyCopy history:v43];
        }

        goto LABEL_45;
      }

      v37 = sub_100000D90(@"Brain");
      v21 = objc_claimAutoreleasedReturnValue(v37);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        buildGroup3 = [v19 buildGroup];
        buildGroup4 = [v17 buildGroup];
        *buf = 138412802;
        v46 = v8;
        v47 = 2048;
        v48 = buildGroup3;
        v49 = 2048;
        v50 = buildGroup4;
        v22 = "[MAB] MobileAssetBrain bundle %@ is from a different build group than the OS. (%ld -> %ld)";
        goto LABEL_41;
      }

LABEL_43:

LABEL_44:
      v24 = 0;
LABEL_45:

      historyCopy = v43;
LABEL_46:

      goto LABEL_47;
    }

    if (v14)
    {
      if (v16)
      {
LABEL_17:
        v24 = 0;
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v30 = sub_100000D90(@"Brain");
      v31 = objc_claimAutoreleasedReturnValue(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v8;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ RestoreVersion string is nil", buf, 0xCu);
      }

      if (v16)
      {
        goto LABEL_17;
      }
    }

    v32 = sub_100000D90(@"Brain");
    v17 = objc_claimAutoreleasedReturnValue(v32);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[MAB] System RestoreVersion string is nil", buf, 2u);
    }

    v24 = 0;
    goto LABEL_46;
  }

  v23 = sub_100000D90(@"Brain");
  v14 = objc_claimAutoreleasedReturnValue(v23);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v46 = v8;
    v47 = 2112;
    v48 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[MAB] MobileAssetBrain bundle %@ RestoreVersion.plist could not be loaded: %@", buf, 0x16u);
  }

  v24 = 0;
LABEL_48:

  return v24;
}

- (void)recordLaunch:(id)launch history:(id)history
{
  launchCopy = launch;
  historyCopy = history;
  v7 = @"built-in";
  v42 = launchCopy;
  if (launchCopy)
  {
    v7 = launchCopy;
  }

  v44 = v7;
  if (historyCopy)
  {
    v8 = [historyCopy mutableCopy];
  }

  else
  {
    v8 = objc_alloc_init(NSMutableDictionary);
  }

  v43 = v8;
  v9 = objc_claimAutoreleasedReturnValue([historyCopy objectForKeyedSubscript:@"LaunchRecords"]);
  v10 = [v9 mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(NSMutableDictionary);
  }

  v13 = v12;

  v14 = objc_claimAutoreleasedReturnValue([v13 objectForKeyedSubscript:v44]);
  v15 = objc_alloc_init(NSMutableArray);
  v16 = objc_alloc_init(NSMutableDictionary);
  v17 = [v14 count];
  v18 = v17;
  if (v17 < 0x33)
  {
    v19 = 0;
    goto LABEL_18;
  }

  v19 = v17 - 50;
  v20 = sub_100000D90(@"Brain");
  v21 = objc_claimAutoreleasedReturnValue(v20);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (launchCopy)
  {
    if (v22)
    {
      *buf = 67109378;
      LODWORD(v48[0]) = 50;
      WORD2(v48[0]) = 2112;
      *(v48 + 6) = launchCopy;
      v23 = "[MAB] Only preserving the last %d launch records for MobileAssetBrain bundle %@";
      v24 = v21;
      v25 = 18;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }
  }

  else if (v22)
  {
    *buf = 67109120;
    LODWORD(v48[0]) = 50;
    v23 = "[MAB] Only preserving the last %d launch records for built-in MobileAssetBrain";
    v24 = v21;
    v25 = 8;
    goto LABEL_16;
  }

LABEL_18:
  if (v19 < v18)
  {
    do
    {
      v26 = objc_claimAutoreleasedReturnValue([v14 objectAtIndexedSubscript:v19]);
      [v15 addObject:v26];

      ++v19;
    }

    while (v18 != v19);
  }

  v27 = objc_claimAutoreleasedReturnValue(+[NSDate date]);
  [v16 setObject:v27 forKeyedSubscript:@"LaunchDate"];

  v28 = [NSNumber numberWithInt:getpid()];
  v29 = objc_claimAutoreleasedReturnValue(v28);
  [v16 setObject:v29 forKeyedSubscript:@"PID"];

  [v15 addObject:v16];
  [v13 setObject:v15 forKeyedSubscript:v44];
  [v43 setObject:v13 forKeyedSubscript:@"LaunchRecords"];
  v46 = 0;
  v30 = objc_claimAutoreleasedReturnValue([NSPropertyListSerialization dataWithPropertyList:v43 format:100 options:0 error:&v46]);
  v31 = v46;
  v32 = v31;
  if (v30)
  {
    v45 = v31;
    v33 = [v30 writeToFile:@"/.nofollow/private/var/run/com.apple.mobileassetd-MobileAssetBrain" options:0 error:&v45];
    v34 = v45;

    v35 = sub_100000D90(@"Brain");
    v36 = objc_claimAutoreleasedReturnValue(v35);
    v37 = v36;
    if (v33)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48[0] = v16;
        v38 = "[MAB] Successfully updated launch history with new record:\n%@";
        v39 = v37;
        v40 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
        _os_log_impl(&_mh_execute_header, v39, v40, v38, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48[0] = v34;
      v38 = "[MAB] Could not write launch history: %@";
      v39 = v37;
      v40 = OS_LOG_TYPE_ERROR;
      goto LABEL_29;
    }
  }

  else
  {
    v41 = sub_100000D90(@"Brain");
    v37 = objc_claimAutoreleasedReturnValue(v41);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48[0] = v32;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "[MAB] Could not serialize launch history: %@", buf, 0xCu);
    }

    v34 = v32;
  }
}

- (char)getTrainName
{
  if (qword_100010618 != -1)
  {
    sub_1000067F4();
  }

  return qword_100010620;
}

@end