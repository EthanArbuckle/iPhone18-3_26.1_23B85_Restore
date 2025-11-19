@interface TrustdFileHelper
- (BOOL)allowTrustdToReadFilesForMigration:(id *)a3;
- (BOOL)changeOwnerOfValidFile:(id)a3 error:(id *)a4;
- (BOOL)changePermissionsOfKeychainDirectoryFile:(id)a3 error:(id *)a4;
- (BOOL)fixTrustSettingsPermissions:(id *)a3;
- (BOOL)fixValidPermissions:(id *)a3;
- (void)deleteOldFiles;
- (void)deleteSupplementalsAssetsDir;
- (void)deleteSystemDbFiles:(__CFString *)a3;
- (void)fixFiles:(id)a3;
@end

@implementation TrustdFileHelper

- (void)fixFiles:(id)a3
{
  v4 = a3;
  [(TrustdFileHelper *)self deleteOldFiles];
  [(TrustdFileHelper *)self allowTrustdToWriteAnalyticsFiles];
  v9 = 0;
  v5 = [(TrustdFileHelper *)self allowTrustdToReadFilesForMigration:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = sub_1000146E4("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "failed to change permissions so trustd can read files for migration", v8, 2u);
    }
  }

  v4[2](v4, v5, v6);
}

- (void)deleteOldFiles
{
  [(TrustdFileHelper *)self deleteSystemDbFiles:@"crls/valid.sqlite3"];
  v3 = sub_100014804(@"Library/Keychains", @"crls");
  sub_1000148F0(v3, &stru_1000215E0);
  [(TrustdFileHelper *)self deleteSystemDbFiles:@"pinningrules.sqlite3"];
  [(TrustdFileHelper *)self deleteSupplementalsAssetsDir];
  sub_100014994(@"caissuercache.sqlite3", &stru_100021600);
  [(TrustdFileHelper *)self deleteSystemDbFiles:@"ocspcache.sqlite3"];

  sub_100014994(@"PriorMitmRoots.plist", &stru_100021620);
}

- (void)deleteSupplementalsAssetsDir
{
  v2 = sub_100014804(@"Library/Keychains", @"SupplementalsAssets/OTAPKIContext.plist");
  sub_1000148F0(v2, &stru_100021520);
  v3 = sub_100014804(@"Library/Keychains", @"SupplementalsAssets/TrustedCTLogs.plist");
  sub_1000148F0(v3, &stru_100021540);
  v4 = sub_100014804(@"Library/Keychains", @"SupplementalsAssets/TrustedCTLogs_nonTLS.plist");
  sub_1000148F0(v4, &stru_100021560);
  v5 = sub_100014804(@"Library/Keychains", @"SupplementalsAssets/AnalyticsSamplingRates.plist");
  sub_1000148F0(v5, &stru_100021580);
  v6 = sub_100014804(@"Library/Keychains", @"SupplementalsAssets/AppleCertificateAuthorities.plist");
  sub_1000148F0(v6, &stru_1000215A0);
  v7 = sub_100014804(@"Library/Keychains", @"SupplementalsAssets");

  sub_1000148F0(v7, &stru_1000215C0);
}

- (void)deleteSystemDbFiles:(__CFString *)a3
{
  v4 = sub_100014804(@"Library/Keychains", a3);
  sub_1000148F0(v4, &stru_1000214A0);
  v5 = CFStringCreateWithFormat(0, 0, @"%@-shm", a3);
  v6 = sub_100014804(@"Library/Keychains", v5);
  sub_1000148F0(v6, &stru_1000214C0);
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = CFStringCreateWithFormat(0, 0, @"%@-wal", a3);
  v8 = sub_100014804(@"Library/Keychains", v7);
  sub_1000148F0(v8, &stru_1000214E0);
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@-journal", a3);
  v10 = sub_100014804(@"Library/Keychains", v9);
  sub_1000148F0(v10, &stru_100021500);
  if (v9)
  {

    CFRelease(v9);
  }
}

- (BOOL)allowTrustdToReadFilesForMigration:(id *)a3
{
  v5 = [(TrustdFileHelper *)self changePermissionsOfKeychainDirectoryFile:@"TrustStore.sqlite3" error:a3];
  v6 = [(TrustdFileHelper *)self changePermissionsOfKeychainDirectoryFile:@"com.apple.security.exception_reset_counter.plist" error:a3];
  v7 = [(TrustdFileHelper *)self changePermissionsOfKeychainDirectoryFile:@"CTExceptions.plist" error:a3];
  v8 = [(TrustdFileHelper *)self changePermissionsOfKeychainDirectoryFile:@"CARevocation.plist" error:a3];
  return [(TrustdFileHelper *)self changePermissionsOfKeychainDirectoryFile:@"TransparentConnectionPins.plist" error:a3]& v8 & v7 & v6 & v5;
}

- (BOOL)changePermissionsOfKeychainDirectoryFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000133B8;
  v13 = sub_1000133C8;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000133D0;
  v8[3] = &unk_100021420;
  v8[4] = &v9;
  v8[5] = &v15;
  sub_100014994(v5, v8);
  if (a4 && !*a4)
  {
    *a4 = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

- (BOOL)fixTrustSettingsPermissions:(id *)a3
{
  v4 = +[NSFileManager defaultManager];
  v5 = 1;
  v6 = [NSURL fileURLWithPath:@"/Library/Security/Trust Settings" isDirectory:1];
  v7 = [NSArray arrayWithObject:?];
  v8 = [v4 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:0 errorHandler:&stru_100021460];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v28 = a3;
    v29 = v7;
    v30 = v6;
    v31 = v4;
    v11 = 0;
    v12 = *v36;
    v5 = 1;
    v32 = v8;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v33 = 0;
        v34 = 0;
        v15 = [v14 getResourceValue:&v34 forKey:NSURLIsDirectoryKey error:&v33];
        v16 = v34;
        v17 = v33;

        if (v15 && ([v16 BOOLValue] & 1) == 0 && (objc_msgSend(v14, "pathExtension"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"plist"), v18, v19) && (v20 = objc_msgSend(v14, "fileSystemRepresentation"), chmod(v20, 0x1A4u)))
        {
          v21 = *__error();
          v43 = NSLocalizedDescriptionKey;
          v22 = [NSString localizedStringWithFormat:@"failed to change permissions of %s: %s", v20, strerror(v21)];
          v44 = v22;
          v23 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v21 userInfo:v23];

          v24 = sub_1000146E4("SecError");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = strerror(v21);
            *buf = 136315394;
            v40 = v20;
            v41 = 2080;
            v42 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", buf, 0x16u);
          }

          v5 = 0;
          v8 = v32;
        }

        else
        {
          v11 = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v10);
    if ((v28 == 0) | v5 & 1)
    {
      v6 = v30;
      v4 = v31;
      v7 = v29;
    }

    else
    {
      v6 = v30;
      v4 = v31;
      v7 = v29;
      if (*v28)
      {
        v5 = 0;
      }

      else
      {
        v26 = v11;
        v5 = 0;
        *v28 = v11;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v5 & 1;
}

- (BOOL)fixValidPermissions:(id *)a3
{
  if (![(TrustdFileHelper *)self changeOwnerOfValidFile:@"valid.sqlite3" error:a3])
  {
    goto LABEL_5;
  }

  v5 = [NSString stringWithFormat:@"%@-shm", @"valid.sqlite3"];
  v6 = [(TrustdFileHelper *)self changeOwnerOfValidFile:v5 error:a3];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [NSString stringWithFormat:@"%@-wal", @"valid.sqlite3"];
  v8 = [(TrustdFileHelper *)self changeOwnerOfValidFile:v7 error:a3];

  if (v8)
  {
    v9 = [NSString stringWithFormat:@"%@-journal", @"valid.sqlite3"];
    v10 = [(TrustdFileHelper *)self changeOwnerOfValidFile:v9 error:a3];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return [(TrustdFileHelper *)self changeOwnerOfValidFile:@".valid_replace" error:a3]& v10;
}

- (BOOL)changeOwnerOfValidFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000133B8;
  v16 = sub_1000133C8;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100013D5C;
  v11[3] = &unk_100021420;
  v11[4] = &v12;
  v11[5] = &v18;
  v6 = v11;
  if (qword_100026320 != -1)
  {
    dispatch_once(&qword_100026320, &stru_100021680);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = @"trustd/";
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [NSString stringWithFormat:@"trustd/%@", v5];
LABEL_6:
  v8 = sub_100014804(@"private/var/protected/", v7);

  sub_1000148F0(v8, v6);
  v9 = *(v19 + 24);
  if (a4 && (v19[3] & 1) == 0)
  {
    if (*a4)
    {
      v9 = 0;
    }

    else
    {
      *a4 = v13[5];
      v9 = *(v19 + 24);
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9 & 1;
}

@end