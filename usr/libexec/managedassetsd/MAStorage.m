@interface MAStorage
+ (id)defaultManager;
+ (id)ensureDirectoryExists:(char *)a3 parent:(id)a4 fileMgr:(id)a5 error:(id *)a6;
- (BOOL)addAnchorGroupIdentifier:(id)a3 client:(id)a4 error:(id *)a5;
- (BOOL)changeProfileType:(id)a3 profileType:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6;
- (BOOL)createAsset:(id)a3 token:(id)a4 protectionClass:(id)a5 assetPathOut:(id *)a6 error:(id *)a7;
- (BOOL)createOrLoadLocalDatabase:(id)a3 error:(id *)a4;
- (BOOL)createProfile:(id)a3 type:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6;
- (BOOL)createTempAssetFile:(id)a3 protectionType:(id)a4 pathOut:(id *)a5 fileHandleOut:(id *)a6 error:(id *)a7;
- (BOOL)deleteAllAssetsExcept:(id)a3 error:(id *)a4;
- (BOOL)deleteAllAssetsWith:(id)a3 recordIDs:(id *)a4 error:(id *)a5 wipeOutProfile:(BOOL)a6;
- (BOOL)deleteAllLocalAssets:(id)a3 assetType:(unint64_t)a4 error:(id *)a5;
- (BOOL)deleteAssets:(id)a3 error:(id *)a4;
- (BOOL)deleteTempAssetFile:(id)a3 error:(id *)a4;
- (BOOL)persistGuestProfile:(id)a3 timestamp:(double)a4 error:(id *)a5;
- (BOOL)removeAllAnchorGroups:(id)a3 error:(id *)a4;
- (BOOL)removeAnchorGroupIdentifier:(id)a3 client:(id)a4 error:(id *)a5;
- (BOOL)renameAssetFileFromTempAsset:(id)a3 token:(id)a4 error:(id *)a5;
- (BOOL)setConfigWith:(id)a3 value:(id)a4 error:(id *)a5;
- (BOOL)updateAsset:(id)a3 event:(unint64_t)a4 options:(id)a5 process:(id)a6 profile:(id)a7 error:(id *)a8;
- (BOOL)updateProfileLastSwitchTS:(id)a3 mode:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6;
- (BOOL)validateSessionToken:(id)a3;
- (MAStorage)init;
- (id)buildMetaDataFromSqlStatement:(sqlite3_stmt *)a3;
- (id)getAllAnchorGroups:(id)a3 error:(id *)a4;
- (id)getAllProfilesWithError:(id *)a3;
- (id)getAsset:(id)a3 profile:(id)a4 option:(unint64_t)a5 assetPathOut:(id *)a6 bypassProfileCheck:(unint64_t)a7 error:(id *)a8;
- (id)getConfigWith:(id)a3 error:(id *)a4;
- (id)getInactiveProfilesWith:(unint64_t)a3 profileType:(unint64_t)a4 error:(id *)a5;
- (id)getLastSeenProfile;
- (id)getLastSwitchOutTimeForRecentPersistedGuestWithError:(id *)a3;
- (id)getLastSwitchTS:(id)a3 mode:(unint64_t)a4 error:(id *)a5;
- (id)getProfile:(id)a3 error:(id *)a4;
- (id)getTableColumns:(id)a3;
- (id)outdatedAssetTableColumns;
- (id)queryA06AssetsWithError:(id *)a3;
- (id)queryAssetHandleAndTypeBy:(id)a3 type:(id *)a4 error:(id *)a5;
- (id)queryAssets:(id)a3 profile:(id)a4 error:(id *)a5;
- (id)queryAssetsMetaData:(id)a3 profile:(id)a4 error:(id *)a5;
- (void)close;
- (void)convertAssetCaches:(unint64_t)a3 deviceState:(unint64_t)a4;
- (void)deleteConfigWith:(id)a3;
- (void)deviceFirstUnlock;
- (void)loadDBInClassD;
- (void)removeAssetMetaDataDbIfCorruptedWith:(id)a3;
- (void)setLastSeenProfile:(id)a3;
- (void)wipeIdentityFolderForPresence;
@end

@implementation MAStorage

+ (id)ensureDirectoryExists:(char *)a3 parent:(id)a4 fileMgr:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = [NSString stringWithFormat:@"%@%s", a4, a3];
  if ([v9 fileExistsAtPath:v10])
  {
    goto LABEL_2;
  }

  v20 = 0;
  [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v20];
  v12 = v20;
  v13 = off_100127CD8;
  if (!v12)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "created directory %@", buf, 0xCu);
    }

LABEL_2:
    v11 = 0;
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = v12;
  if (!os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_1000181A4();
  if (a6)
  {
LABEL_7:
    v14 = v11;
    *a6 = v11;
  }

LABEL_8:
  if (v11)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_16;
  }

  bzero(buf, 0x400uLL);
  if (realpath_DARWIN_EXTSN([v10 fileSystemRepresentation], buf))
  {
    v16 = [NSString stringWithUTF8String:buf];
    v15 = [NSString stringWithFormat:@"%@/", v16];

    v11 = 0;
  }

  else
  {
    v17 = createManagedAssetError();
    v11 = v17;
    if (!a6)
    {
      goto LABEL_9;
    }

    v18 = v17;
    v15 = 0;
    *a6 = v11;
  }

LABEL_16:

  return v15;
}

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E690;
  block[3] = &unk_100115D08;
  block[4] = a1;
  if (qword_1001293D8 != -1)
  {
    dispatch_once(&qword_1001293D8, block);
  }

  v2 = qword_1001293E0;

  return v2;
}

- (MAStorage)init
{
  v89.receiver = self;
  v89.super_class = MAStorage;
  v2 = [(MAStorage *)&v89 init];
  if (!v2)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v3 = +[NSFileManager defaultManager];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 isEqualToString:@"com.apple.managedassetsd"];

  if (v6)
  {
    v7 = NSHomeDirectory();
    v8 = [NSString stringWithFormat:@"%@/%@", v7, @"Library/ManagedAssets/"];
  }

  else
  {
    v7 = NSTemporaryDirectory();
    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    v8 = [NSString stringWithFormat:@"%@/%@", v7, v12];
  }

  v88 = 0;
  v13 = [MAStorage ensureDirectoryExists:"" parent:v8 fileMgr:v3 error:&v88];
  v9 = v88;
  marootPath = v2->_marootPath;
  v2->_marootPath = v13;

  v15 = v2->_marootPath;
  if (!v15)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018214();
    }

    goto LABEL_39;
  }

  v16 = v15;

  [_TtC6server14MAPurgeUtility enableFastDirectory:v2->_marootPath];
  v87 = v9;
  v17 = [MAStorage ensureDirectoryExists:"assets/" parent:v16 fileMgr:v3 error:&v87];
  v18 = v87;

  malocalAssetPath = v2->_malocalAssetPath;
  v2->_malocalAssetPath = v17;

  if (!v2->_malocalAssetPath)
  {
    v8 = v16;
    v9 = v18;
LABEL_39:

LABEL_40:
    v10 = 0;
    goto LABEL_41;
  }

  [_TtC6server14MAPurgeUtility markPurgeable:?];
  v86 = v18;
  v20 = [MAStorage ensureDirectoryExists:"tmpAssets/" parent:v16 fileMgr:v3 error:&v86];
  v9 = v86;

  malocalTmpAssetPath = v2->_malocalTmpAssetPath;
  v2->_malocalTmpAssetPath = v20;

  v22 = v2->_malocalTmpAssetPath;
  if (!v22)
  {
    v8 = v16;
    goto LABEL_39;
  }

  v62 = v6;
  v64 = v16;
  v85 = v9;
  v23 = [v3 contentsOfDirectoryAtPath:v22 error:&v85];
  v24 = v85;

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v25 = v23;
  v26 = [v25 countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v82;
    do
    {
      v29 = v25;
      v30 = 0;
      v31 = v24;
      do
      {
        if (*v82 != v28)
        {
          objc_enumerationMutation(v29);
        }

        v32 = v2->_malocalTmpAssetPath;
        v33 = [NSString stringWithFormat:@"%@%@", v32, *(*(&v81 + 1) + 8 * v30)];
        v80 = v31;
        [v3 removeItemAtPath:v33 error:&v80];
        v24 = v80;

        v30 = v30 + 1;
        v31 = v24;
      }

      while (v27 != v30);
      v25 = v29;
      v27 = [v29 countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v27);
  }

  [_TtC6server14MAPurgeUtility markPurgeable:v2->_malocalTmpAssetPath];
  v79 = v24;
  v34 = [MAStorage ensureDirectoryExists:"syncUpTmpAssets/" parent:v64 fileMgr:v3 error:&v79];
  v9 = v79;

  malocalSyncUpTmpAssetPath = v2->_malocalSyncUpTmpAssetPath;
  v2->_malocalSyncUpTmpAssetPath = v34;

  if (!v2->_malocalSyncUpTmpAssetPath)
  {

    goto LABEL_40;
  }

  v63 = v25;
  [_TtC6server14MAPurgeUtility markPurgeable:?];
  v36 = v2->_malocalSyncUpTmpAssetPath;
  v78 = v9;
  v37 = [v3 contentsOfDirectoryAtPath:v36 error:&v78];
  v38 = v78;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v75;
    do
    {
      v43 = 0;
      v44 = v38;
      do
      {
        if (*v75 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v45 = v2->_malocalSyncUpTmpAssetPath;
        v46 = [NSString stringWithFormat:@"%@%@", v45, *(*(&v74 + 1) + 8 * v43)];
        v73 = v44;
        [v3 removeItemAtPath:v46 error:&v73];
        v38 = v73;

        v43 = v43 + 1;
        v44 = v38;
      }

      while (v41 != v43);
      v41 = [v39 countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v41);
  }

  v72 = v38;
  v47 = [MAStorage ensureDirectoryExists:"remoteassets/" parent:v64 fileMgr:v3 error:&v72];
  v9 = v72;

  maremoteAssetPath = v2->_maremoteAssetPath;
  v2->_maremoteAssetPath = v47;

  if (!v2->_maremoteAssetPath)
  {
    v60 = 0;
    v52 = v63;
    goto LABEL_46;
  }

  v71 = v9;
  v49 = [MAStorage ensureDirectoryExists:"predownloadedassets/" parent:v64 fileMgr:v3 error:&v71];
  v50 = v71;

  maPredownloadedAssetPath = v2->_maPredownloadedAssetPath;
  v2->_maPredownloadedAssetPath = v49;

  v52 = v63;
  if (!v2->_maPredownloadedAssetPath)
  {
    goto LABEL_44;
  }

  v70 = v50;
  v53 = [MAStorage ensureDirectoryExists:"prefs/" parent:v64 fileMgr:v3 error:&v70];
  v9 = v70;

  maPrefsPath = v2->_maPrefsPath;
  v2->_maPrefsPath = v53;

  if (!v2->_maPrefsPath)
  {
LABEL_45:
    v60 = 0;
    goto LABEL_46;
  }

  v69 = v9;
  v55 = [MAStorage ensureDirectoryExists:"users/" parent:v64 fileMgr:v3 error:&v69];
  v50 = v69;

  maUsersPath = v2->_maUsersPath;
  v2->_maUsersPath = v55;

  if (!v2->_maUsersPath)
  {
LABEL_44:
    v60 = 0;
    v9 = v50;
    goto LABEL_46;
  }

  v68 = v50;
  v57 = [(MAStorage *)v2 createOrLoadLocalDatabase:v64 error:&v68];
  v9 = v68;

  if (!v57)
  {
    goto LABEL_45;
  }

  objc_storeStrong(&v2->_fileMgr, v3);
  if (v62)
  {
    v58 = off_100127CD8;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10000EF04;
    v66[3] = &unk_100116118;
    v67 = v64;
    [MAUtilityHelper registerAssetsWithSpaceAttributesWithPath:v67 logger:v58 completion:v66];
  }

  v59 = off_100127CD8;
  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Successfully create/load local database for assets.", buf, 2u);
  }

  v60 = 1;
LABEL_46:

  if (!v60)
  {
    goto LABEL_40;
  }

LABEL_5:
  v10 = v2;
LABEL_41:

  return v10;
}

- (void)deviceFirstUnlock
{
  v3 = [MAKVGroupDB alloc];
  dbInClassCPath = self->_dbInClassCPath;
  v9 = 0;
  v5 = [(MAKVGroupDB *)v3 initWithFile:dbInClassCPath identifier:@"managedAssetDbClassC" attributes:0 dbShouldExist:0 readOnly:0 isBase:0 error:&v9];
  v6 = v9;
  v7 = off_100127CD8;
  if (v5)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully create/load dbInClassC database.", buf, 2u);
    }

    objc_storeStrong(&self->_dbInClassC, v5);
  }

  else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_1000182F0(&self->_dbInClassCPath);
  }
}

- (void)loadDBInClassD
{
  v3 = [MAKVGroupDB alloc];
  dbInClassDPath = self->_dbInClassDPath;
  v11 = NSFileProtectionKey;
  v12 = NSFileProtectionNone;
  v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v10 = 0;
  v6 = [(MAKVGroupDB *)v3 initWithFile:dbInClassDPath identifier:@"managedAssetDbClassD" attributes:v5 dbShouldExist:0 readOnly:0 isBase:0 error:&v10];
  v7 = v10;

  v8 = off_100127CD8;
  if (v6)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully create/load dbInClassD database.", buf, 2u);
    }

    objc_storeStrong(&self->_dbInClassD, v6);
  }

  else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_10001836C(&self->_dbInClassDPath);
  }
}

- (BOOL)createOrLoadLocalDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  errmsg = 0;
  v7 = [v6 stringByAppendingPathComponent:@"managedAssets.sqlite"];
  databasePath = self->_databasePath;
  self->_databasePath = v7;

  v9 = [v6 stringByAppendingPathComponent:@"managedAssetsC.sqlite"];
  dbInClassCPath = self->_dbInClassCPath;
  self->_dbInClassCPath = v9;

  v11 = [v6 stringByAppendingPathComponent:@"managedAssetsD.sqlite"];
  dbInClassDPath = self->_dbInClassDPath;
  self->_dbInClassDPath = v11;

  sqlite3_shutdown();
  if (!sqlite3_config(3) && os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000183E8();
  }

  sqlite3_initialize();
  [(MAStorage *)self loadDBInClassD];
  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018428(&self->_databasePath);
  }

  [(MAStorage *)self removeAssetMetaDataDbIfCorruptedWith:self->_databasePath];
  p_database = &self->_database;
  if (self->_database)
  {
    v14 = [(MAStorage *)self outdatedAssetTableColumns];
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
    {
      sub_100018490();
    }

    v15 = [NSMutableString stringWithFormat:@"drop table if exists mProfiles                                 create table if not exists                                 mProfileInfo (profileID INTEGER PRIMARY KEY AUTOINCREMENT, profileName VARCHAR(255) NOT NULL, isGuest TINYINT DEFAULT 0, creationTime REAL NULL, lastSwitchInTime REAL NULL, lastSwitchOutTime REAL NULL);"];;
    if (v14)
    {
      v45 = &self->_database;
      v46 = a4;
      v47 = self;
      v60[0] = @"assetState";
      v16 = [NSString stringWithFormat:@"alter table mAssets add assetState INTEGER DEFAULT %@", &off_10011DB50];;
      v61[0] = v16;
      v61[1] = @"alter table mAssets add enrollmentIdentifier TEXT NULL;";
      v60[1] = @"enrollmentIdentifier";
      v60[2] = @"protectionPolicy";
      v61[2] = @"alter table mAssets add protectionPolicy INTEGER DEFAULT 0;";
      v60[3] = @"activeState";
      v17 = [NSString stringWithFormat:@"alter table mAssets add activeState INTEGER DEFAULT %@", &off_10011DB68];;
      v61[3] = v17;
      v61[4] = @"alter table mAssets add creatorAttest BLOB NULL;";
      v60[4] = @"creatorAttest";
      v60[5] = @"serverAttest";
      v61[5] = @"alter table mAssets add serverAttest BLOB NULL;";
      v61[6] = @"alter table mAssets add deviceIdentifier TEXT NULL;";
      v60[6] = @"deviceIdentifier";
      v60[7] = @"deviceName";
      v61[7] = @"alter table mAssets add deviceName TEXT NULL;";
      v18 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:8];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v44 = v14;
      v19 = v14;
      v20 = [v19 countByEnumeratingWithState:&v48 objects:v59 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v49;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v49 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v48 + 1) + 8 * i);
            v25 = [v18 objectForKeyedSubscript:v24];

            if (v25)
            {
              v26 = [v18 objectForKeyedSubscript:v24];
              v27 = [NSString stringWithFormat:@"                                                                        %@", v26];
              [v15 appendString:v27];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v48 objects:v59 count:16];
        }

        while (v21);
      }

      self = v47;
      p_database = v45;
      a4 = v46;
      v14 = v44;
    }

    [v15 appendString:@"                            pragma journal_mode = WAL;"];
    v28 = sqlite3_exec(*p_database, [v15 UTF8String], 0, 0, &errmsg);
    if (v28)
    {
      v57 = ManagedAssetsSqliteErrorKey;
      v29 = [NSNumber numberWithInt:v28];
      v58 = v29;
      v30 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *a4 = createManagedAssetError();

      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_1000184F8(&errmsg);
      }

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }
  }

  else
  {
    v32 = sqlite3_open_v2([(NSString *)self->_databasePath fileSystemRepresentation], &self->_database, 4194310, 0);
    if (v32)
    {
      v53 = ManagedAssetsSqliteErrorKey;
      v38 = [NSNumber numberWithInt:v32];
      v54 = v38;
      v39 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      sqlite3_errmsg(*p_database);
      *a4 = createManagedAssetError();

      v40 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018668(&self->_database, v40);
      }

      v31 = 0;
    }

    else
    {
      v33 = [NSString stringWithFormat:@"drop table if exists mProfiles                                 create table if not exists                                 mAssets (assetHandle VARCHAR(36) PRIMARY KEY, assetProfileID INTEGER DEFAULT -1, assetProfileName TEXT NOT NULL, assetProcess TEXT NOT NULL, assetType INTEGER DEFAULT 0, assetLabel TEXT NULL, isSyncedToiCloud TINYINT DEFAULT 0, creationTime DATE DEFAULT(STRFTIME('%%Y-%%m-%%d %%H:%%M:%%f', 'NOW', 'localtime')), lastUpdatedTime DATE DEFAULT(STRFTIME('%%Y-%%m-%%d %%H:%%M:%%f', 'NOW', 'localtime')), lastUpdatedOSVersion TEXT NOT NULL, lastUpdatedAlgorithmVersion TEXT NULL, sessionID TEXT NULL, peerHandle TEXT NULL, sharedPersistent TINYINT DEFAULT 0, recordName VARCHAR(255) NULL, record BLOB NULL, recordAccount VARCHAR(255) NULL, assetState INTEGER DEFAULT %@, enrollmentIdentifier TEXT NULL, protectionPolicy INTEGER DEFAULT 0, activeState INTEGER DEFAULT %@, creatorAttest BLOB NULL, serverAttest BLOB NULL, deviceIdentifier TEXT NULL, deviceName TEXT NULL);                                 create table if not exists                                 mConfig (mKey TEXT NOT NULL PRIMARY KEY, mValue BLOB NOT NULL);                                 create table if not exists                                 mProfileInfo (profileID INTEGER PRIMARY KEY AUTOINCREMENT, profileName VARCHAR(255) NOT NULL, isGuest TINYINT DEFAULT 0, creationTime REAL NULL, lastSwitchInTime REAL NULL, lastSwitchOutTime REAL NULL);                                 create table if not exists mAnchorGroups                                 (groupID VARCHAR(40) PRIMARY KEY, clientID VARCHAR(40));                                 pragma journal_mode = WAL;                                 pragma user_version = %u;", &off_10011DB50, &off_10011DB68, 5];;
      v34 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
      {
        sub_100018560(v33, v34);
      }

      v35 = sqlite3_exec(*p_database, [v33 UTF8String], 0, 0, &errmsg);
      if (v35)
      {
        v55 = ManagedAssetsSqliteErrorKey;
        v36 = [NSNumber numberWithInt:v35];
        v56 = v36;
        v37 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        *a4 = createManagedAssetError();

        if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
        {
          sub_100018600(&errmsg);
        }

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }
    }
  }

  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  if (v31)
  {
    v41 = +[NSMutableDictionary dictionary];
    cachedAssets = self->_cachedAssets;
    self->_cachedAssets = v41;
  }

  return v31;
}

- (id)outdatedAssetTableColumns
{
  v2 = [(MAStorage *)self getTableColumns:@"mAssets"];
  v3 = [v2 allKeys];

  v4 = +[NSMutableArray array];
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [&off_10011E428 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(&off_10011E428);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (([v3 containsObject:v9] & 1) == 0)
          {
            [v4 addObject:v9];
          }
        }

        v6 = [&off_10011E428 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_1000186EC();
  }

  return v4;
}

- (id)getTableColumns:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  v6 = [NSString stringWithFormat:@"PRAGMA table_info(%@)", v4];
  v7 = [v6 UTF8String];
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v7, -1, &ppStmt, 0))
  {

    v10 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018728(p_database, v10);
    }

    v5 = 0;
  }

  else
  {
    while (sqlite3_step(ppStmt) == 100)
    {
      v11 = sqlite3_column_int(ppStmt, 0);
      v12 = sqlite3_column_text(ppStmt, 1);
      v13 = [NSNumber numberWithInt:v11];
      v14 = [NSString stringWithUTF8String:v12];
      [v5 setObject:v13 forKey:v14];
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v5;
}

- (void)removeAssetMetaDataDbIfCorruptedWith:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (!v6)
  {
    goto LABEL_31;
  }

  if (sqlite3_open_v2([v4 fileSystemRepresentation], &self->_database, 4194306, 0))
  {
    v7 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000187AC(&self->_database, v7);
    }

LABEL_21:
    if (sqlite3_close(self->_database))
    {
      v13 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018898(self, &self->_database, v13);
      }
    }

    self->_database = 0;
    v14 = +[NSFileManager defaultManager];
    v18 = 0;
    v15 = [v14 removeItemAtPath:v4 error:&v18];
    v16 = v18;

    v17 = off_100127CD8;
    if (v15)
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
      {
        *ppStmt = 138412290;
        *&ppStmt[4] = v4;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "delete corrupted db file %@ directly", ppStmt, 0xCu);
      }

      [MAUtilityHelper deleteSqliteTempFiles:v4 logger:off_100127CD8];
    }

    else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018930();
    }

    goto LABEL_31;
  }

  *ppStmt = 0;
  v8 = +[NSMutableArray array];
  if (sqlite3_prepare_v2(self->_database, "select name from sqlite_schema WHERE type ='table' AND name NOT LIKE 'sqlite_%'", -1, ppStmt, 0))
  {
    v9 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018728(&self->_database, v9);
    }

    v10 = 1;
  }

  else
  {
    while (sqlite3_step(*ppStmt) == 100)
    {
      v11 = [NSString stringWithUTF8String:sqlite3_column_text(*ppStmt, 0)];
      [v8 addObject:v11];
    }

    v12 = [v8 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    if ([&off_10011E458 isEqualToArray:v12] & 1) != 0 || (objc_msgSend(&off_10011E440, "isEqualToArray:", v12))
    {
      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018830();
      }

      v10 = 1;
    }
  }

  if (*ppStmt)
  {
    sqlite3_finalize(*ppStmt);
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_31:
}

- (BOOL)createAsset:(id)a3 token:(id)a4 protectionClass:(id)a5 assetPathOut:(id *)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v14;
  v17 = v15;
  ppStmt = 0;
  v18 = [v13 assetMetadata];
  if (v14)
  {
    if (![(MAStorage *)self validateSessionToken:v14])
    {
      createManagedAssetError();
      v14 = 0;
      v19 = 0;
      v21 = 0;
      *a7 = v22 = 0;
      goto LABEL_72;
    }

    v19 = [NSString stringWithFormat:@"%@%@.asset", self->_malocalTmpAssetPath, v14];
    v20 = [(NSFileManager *)self->_fileMgr attributesOfItemAtPath:v19 error:a7];
    v14 = v20;
    if (*a7)
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_1000189A0(v19, a7);
      }

      v21 = 0;
      v22 = 0;
      goto LABEL_70;
    }

    v122 = v16;
    v118 = a6;
    v120 = a7;
    v42 = [v20 objectForKeyedSubscript:NSFileSize];
    if (!v42 || (v43 = v42, [v14 objectForKeyedSubscript:NSFileSize], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "intValue"), v44, v43, !v45))
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018A20();
      }

      createManagedAssetError();
      v21 = 0;
      *v120 = v22 = 0;
      goto LABEL_69;
    }

    a7 = v120;
    a6 = v118;
    v16 = v122;
  }

  else
  {
    v19 = 0;
  }

  p_database = &self->_database;
  v122 = v16;
  if (sqlite3_prepare_v2(self->_database, "INSERT INTO mAssets (assetProfileID, assetProfileName, assetProcess, assetType, assetLabel, isSyncedToiCloud, lastUpdatedOSVersion, lastUpdatedAlgorithmVersion, assetHandle, assetState, enrollmentIdentifier, activeState, creatorAttest, serverAttest, deviceIdentifier, deviceName, recordName, creationTime, lastUpdatedTime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v113 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a7 = createManagedAssetError();

    v21 = 0;
    goto LABEL_12;
  }

  v115 = self;
  v116 = v17;
  v117 = a6;
  v119 = v19;
  v23 = ppStmt;
  v24 = [v13 assetOwner];
  sqlite3_bind_int64(v23, 1, [v24 profileID]);

  v25 = ppStmt;
  v26 = [v13 assetOwner];
  v27 = [v26 profileName];
  v28 = [v27 cStringUsingEncoding:4];
  v29 = [v13 assetOwner];
  v30 = [v29 profileName];
  sqlite3_bind_text(v25, 2, v28, [v30 lengthOfBytesUsingEncoding:4], 0);

  v31 = ppStmt;
  v32 = [v13 assetProcess];
  v33 = [v32 cStringUsingEncoding:4];
  v34 = [v13 assetProcess];
  sqlite3_bind_text(v31, 3, v33, [v34 lengthOfBytesUsingEncoding:4], 0);

  v35 = ppStmt;
  v36 = [v13 assetMetadata];
  sqlite3_bind_int64(v35, 4, [v36 type]);

  v37 = [v18 label];

  v38 = ppStmt;
  if (v37)
  {
    v39 = [v18 label];
    v40 = [v39 cStringUsingEncoding:4];
    v41 = [v18 label];
    sqlite3_bind_text(v38, 5, v40, [v41 lengthOfBytesUsingEncoding:4], 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 5);
  }

  sqlite3_bind_int(ppStmt, 6, [v13 syncOption]);
  v46 = ppStmt;
  v47 = [v18 lastUpdatedOSVersion];
  v48 = [v47 cStringUsingEncoding:4];
  v49 = [v18 lastUpdatedOSVersion];
  sqlite3_bind_text(v46, 7, v48, [v49 lengthOfBytesUsingEncoding:4], 0);

  v50 = [v18 lastUpdatedAlgorithmVersion];

  v51 = ppStmt;
  if (v50)
  {
    v52 = [v18 lastUpdatedAlgorithmVersion];
    v53 = [v52 cStringUsingEncoding:4];
    v54 = [v18 lastUpdatedAlgorithmVersion];
    sqlite3_bind_text(v51, 8, v53, [v54 lengthOfBytesUsingEncoding:4], 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 8);
  }

  v55 = ppStmt;
  v56 = [v13 assetHandle];
  v57 = [v56 cStringUsingEncoding:4];
  v58 = [v13 assetHandle];
  sqlite3_bind_text(v55, 9, v57, [v58 lengthOfBytesUsingEncoding:4], 0);

  sqlite3_bind_int(ppStmt, 10, [v18 assetState]);
  v59 = [v18 enrollmentIdentifier];

  v60 = ppStmt;
  if (v59)
  {
    v61 = [v18 enrollmentIdentifier];
    v62 = [v61 cStringUsingEncoding:4];
    v63 = [v18 enrollmentIdentifier];
    sqlite3_bind_text(v60, 11, v62, [v63 lengthOfBytesUsingEncoding:4], 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 11);
  }

  if ([v18 assetState])
  {
    v64 = 1;
  }

  else
  {
    v64 = 2;
  }

  sqlite3_bind_int(ppStmt, 12, v64);
  v65 = ppStmt;
  v66 = [v13 creatorAttest];
  v67 = [v66 bytes];
  v68 = [v13 creatorAttest];
  sqlite3_bind_blob(v65, 13, v67, [v68 length], 0);

  v69 = ppStmt;
  v70 = [v13 serverAttest];
  v71 = [v70 bytes];
  v72 = [v13 serverAttest];
  sqlite3_bind_blob(v69, 14, v71, [v72 length], 0);

  v73 = [v18 deviceIdentifier];

  v74 = ppStmt;
  if (v73)
  {
    v75 = [v18 deviceIdentifier];
    v76 = [v75 cStringUsingEncoding:4];
    v77 = [v18 deviceIdentifier];
    sqlite3_bind_text(v74, 15, v76, [v77 lengthOfBytesUsingEncoding:4], 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 15);
  }

  v19 = v119;
  v78 = [v18 deviceName];

  v79 = ppStmt;
  if (v78)
  {
    v80 = [v18 deviceName];
    v81 = [v80 cStringUsingEncoding:4];
    v82 = [v18 deviceName];
    sqlite3_bind_text(v79, 16, v81, [v82 lengthOfBytesUsingEncoding:4], 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 16);
  }

  v83 = [v18 ckrecordIdentifier];

  v84 = ppStmt;
  if (v83)
  {
    v85 = [v18 ckrecordIdentifier];
    v86 = [v85 cStringUsingEncoding:4];
    v87 = [v18 ckrecordIdentifier];
    sqlite3_bind_text(v84, 17, v86, [v87 lengthOfBytesUsingEncoding:4], 0);
  }

  else
  {
    sqlite3_bind_null(ppStmt, 17);
  }

  v88 = objc_alloc_init(NSDateFormatter);
  [v88 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v89 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v88 setLocale:v89];

  v90 = [v18 creationTime];

  if (v90)
  {
    [v18 creationTime];
  }

  else
  {
    +[NSDate now];
  }
  v91 = ;
  v92 = [v88 stringFromDate:v91];

  sqlite3_bind_text(ppStmt, 18, [v92 cStringUsingEncoding:4], objc_msgSend(v92, "lengthOfBytesUsingEncoding:", 4), 0);
  v93 = [v18 lastUpdatedTime];

  if (v93)
  {
    [v18 lastUpdatedTime];
  }

  else
  {
    +[NSDate now];
  }
  v94 = ;
  v95 = [v88 stringFromDate:v94];

  sqlite3_bind_text(ppStmt, 19, [v95 cStringUsingEncoding:4], objc_msgSend(v95, "lengthOfBytesUsingEncoding:", 4), 0);
  if (sqlite3_step(ppStmt) != 101)
  {
    v103 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018B28(p_database, v103);
    }

    sqlite3_errmsg(*p_database);
    *a7 = createManagedAssetError();

    v21 = 0;
    v22 = 0;
    v17 = v116;
    goto LABEL_69;
  }

  malocalAssetPath = v115->_malocalAssetPath;
  v97 = [v13 assetHandle];
  v21 = [NSString stringWithFormat:@"%@%@.asset", malocalAssetPath, v97];

  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018BAC();
  }

  if (!v122)
  {
    fileMgr = v115->_fileMgr;
    v105 = [v13 assetData];
    v124 = NSFileProtectionKey;
    v125 = v116;
    v106 = [NSDictionary dictionaryWithObjects:&v125 forKeys:&v124 count:1];
    LOBYTE(fileMgr) = [(NSFileManager *)fileMgr createFileAtPath:v21 contents:v105 attributes:v106];

    v17 = v116;
    if ((fileMgr & 1) == 0)
    {
      *__error();
      *a7 = createManagedAssetError();
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018CB0();
      }

      goto LABEL_68;
    }

LABEL_60:
    if ([v17 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      cachedAssets = v115->_cachedAssets;
      v109 = [v13 assetHandle];
      [(NSMutableDictionary *)cachedAssets setObject:v13 forKeyedSubscript:v109];

      v17 = v116;
      v110 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
      {
        sub_100018D2C(v13, v110);
      }
    }

    if (v117)
    {
      v111 = v21;
      *v117 = v21;
    }

    v22 = 1;
    v19 = v119;
    v16 = v122;
    goto LABEL_70;
  }

  v98 = [v119 fileSystemRepresentation];
  v99 = [v21 fileSystemRepresentation];
  rename(v98, v99, v100);
  if (!v101)
  {
    v107 = [NSFileHandle fileHandleForUpdatingAtPath:v21];
    [v13 setAssetFileHandle:v107];

    v17 = v116;
    goto LABEL_60;
  }

  v114 = *__error();
  *a7 = createManagedAssetError();
  v102 = off_100127CD8;
  v17 = v116;
  if (!os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
LABEL_68:
    v22 = 0;
    v19 = v119;
    goto LABEL_69;
  }

  v19 = v119;
  sub_100018C14(v119, v21, v102);
LABEL_12:
  v22 = 0;
LABEL_69:
  v16 = v122;
LABEL_70:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

LABEL_72:

  return v22;
}

- (BOOL)updateAsset:(id)a3 event:(unint64_t)a4 options:(id)a5 process:(id)a6 profile:(id)a7 error:(id *)a8
{
  v10 = a4;
  v11 = a3;
  v12 = a5;
  ppStmt = 0;
  v13 = +[NSMutableArray array];
  v14 = v13;
  if ((v10 & 4) != 0)
  {
    [v13 addObject:@"lastUpdatedAlgorithmVersion = ?"];
  }

  v15 = [v12 objectForKeyedSubscript:kManagedAssetsAssetStateKey];
  if (v15)
  {
    [v14 addObject:@"assetState = ?"];
    [v14 addObject:@"activeState = ?"];
  }

  v16 = [v12 objectForKeyedSubscript:kManagedAssetsEnrollmentIDKey];
  if (v16)
  {
    [v14 addObject:@"enrollmentIdentifier = ?"];
  }

  v17 = [v12 objectForKeyedSubscript:kManagedAssetsRecordNameKey];
  if (v17)
  {
    [v14 addObject:@"recordName = ?"];
  }

  v69 = [v12 objectForKeyedSubscript:kManagedAssetsRecordAccountKey];
  if (v69)
  {
    [v14 addObject:@"recordAccount = ?"];
  }

  v68 = [v12 objectForKeyedSubscript:kManagedAssetsLastUpdatedOSKey];
  if (v68)
  {
    [v14 addObject:@"lastUpdatedOSVersion = ?"];
  }

  v18 = kManagedAssetsLastUpdatedTimeKey;
  v19 = [v12 objectForKeyedSubscript:kManagedAssetsLastUpdatedTimeKey];

  if (v19)
  {
    [v14 addObject:@"lastUpdatedTime = ?"];
  }

  if ([v14 count])
  {
    v66 = v17;
    v20 = [NSMutableString stringWithString:@"UPDATE mAssets SET "];
    v21 = [v14 componentsJoinedByString:{@", "}];
    [v20 appendString:v21];

    [v20 appendString:@" WHERE assetHandle = ?"];
    v22 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v74 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "update asset stmt: %@", buf, 0xCu);
    }

    v23 = [v20 cStringUsingEncoding:4];
    database = self->_database;
    p_database = &self->_database;
    if (sqlite3_prepare_v2(database, v23, -1, &ppStmt, 0))
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018A88();
      }

      v25 = NSStringFromSelector(a2);
      sqlite3_errmsg(*p_database);
      v26 = createManagedAssetError();
    }

    else
    {
      v63 = v16;
      v60 = a8;
      if ((v10 & 4) != 0)
      {
        v61 = ppStmt;
        v64 = [v11 assetMetadata];
        v32 = [v64 lastUpdatedAlgorithmVersion];
        v33 = v15;
        v34 = [v32 cStringUsingEncoding:4];
        v35 = [v11 assetMetadata];
        v36 = [v35 lastUpdatedAlgorithmVersion];
        v37 = [v36 lengthOfBytesUsingEncoding:4];
        v38 = v34;
        v15 = v33;
        sqlite3_bind_text(v61, 1, v38, v37, 0);

        v16 = v63;
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v62 = v15;
      if (v15)
      {
        v39 = ppStmt;
        v40 = [v11 assetMetadata];
        sqlite3_bind_int(v39, v31, [v40 assetState]);

        v41 = [v11 assetMetadata];
        LOBYTE(v40) = [v41 assetState];

        if (v40)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        sqlite3_bind_int(ppStmt, v31 + 1, v42);
        v31 += 2;
      }

      v65 = v11;
      if (v16)
      {
        v59 = ppStmt;
        v43 = [v11 assetMetadata];
        v44 = [v43 enrollmentIdentifier];
        v45 = [v44 cStringUsingEncoding:4];
        v46 = [v11 assetMetadata];
        v47 = [v46 enrollmentIdentifier];
        sqlite3_bind_text(v59, v31, v45, [v47 lengthOfBytesUsingEncoding:4], 0);

        ++v31;
      }

      if (v66)
      {
        sqlite3_bind_text(ppStmt, v31++, [v66 cStringUsingEncoding:4], objc_msgSend(v66, "lengthOfBytesUsingEncoding:", 4), 0);
      }

      v11 = v65;
      if (v69)
      {
        sqlite3_bind_text(ppStmt, v31++, [v69 cStringUsingEncoding:4], objc_msgSend(v69, "lengthOfBytesUsingEncoding:", 4), 0);
      }

      if (v68)
      {
        sqlite3_bind_text(ppStmt, v31++, [v68 cStringUsingEncoding:4], objc_msgSend(v68, "lengthOfBytesUsingEncoding:", 4), 0);
      }

      v48 = [v12 objectForKeyedSubscript:v18];

      if (v48)
      {
        v49 = objc_alloc_init(NSDateFormatter);
        [v49 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
        v50 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
        [v49 setLocale:v50];

        v51 = [v12 objectForKeyedSubscript:v18];
        v52 = [v65 assetMetadata];
        [v52 setLastUpdatedTime:v51];

        v53 = [v49 stringFromDate:v51];
        sqlite3_bind_text(ppStmt, v31, [v53 cStringUsingEncoding:4], objc_msgSend(v53, "lengthOfBytesUsingEncoding:", 4), 0);

        ++v31;
        v11 = v65;
      }

      v54 = ppStmt;
      v55 = [v11 assetHandle];
      v56 = [v55 cStringUsingEncoding:4];
      v57 = [v11 assetHandle];
      sqlite3_bind_text(v54, v31, v56, [v57 lengthOfBytesUsingEncoding:4], 0);

      if (sqlite3_step(ppStmt) == 101)
      {
        v28 = 1;
        v15 = v62;
        v16 = v63;
LABEL_49:
        v30 = v68;
        v29 = v69;
        if (ppStmt)
        {
          sqlite3_finalize(ppStmt);
        }

        v17 = v66;
        goto LABEL_52;
      }

      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018DE4();
      }

      v25 = NSStringFromSelector(a2);
      sqlite3_errmsg(*p_database);
      v26 = createManagedAssetError();
      v15 = v62;
      v16 = v63;
      a8 = v60;
    }

    *a8 = v26;

    v28 = 0;
    goto LABEL_49;
  }

  v27 = off_100127CD8;
  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "no asset metadata to be updated", buf, 2u);
  }

  v28 = 0;
  v30 = v68;
  v29 = v69;
LABEL_52:

  return v28;
}

- (id)getAsset:(id)a3 profile:(id)a4 option:(unint64_t)a5 assetPathOut:(id *)a6 bypassProfileCheck:(unint64_t)a7 error:(id *)a8
{
  v15 = a3;
  v16 = a4;
  v17 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:v15];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    goto LABEL_50;
  }

  ppStmt = 0;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(self->_database, "SELECT * FROM mAssets WHERE assetHandle = ? ", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v59 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a8 = createManagedAssetError();

    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_45;
  }

  v68 = a6;
  sqlite3_bind_text(ppStmt, 1, [v15 cStringUsingEncoding:4], objc_msgSend(v15, "lengthOfBytesUsingEncoding:", 4), 0);
  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
  {
    sub_100018E84();
  }

  v24 = sqlite3_step(ppStmt);
  if (v24 == 101)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018EEC();
    }
  }

  else
  {
    if (v24 == 100)
    {
      v66 = a8;
      v25 = [(MAStorage *)self getTableColumns:@"mAssets"];
      v63 = sqlite3_column_int64(ppStmt, 1);
      v62 = sqlite3_column_text(ppStmt, 2);
      v61 = sqlite3_column_text(ppStmt, 3);
      v26 = ppStmt;
      v27 = [v25 objectForKeyedSubscript:@"creatorAttest"];
      v28 = sqlite3_column_blob(v26, [v27 intValue]);

      v29 = ppStmt;
      v30 = [v25 objectForKeyedSubscript:@"creatorAttest"];
      LODWORD(v29) = sqlite3_column_bytes(v29, [v30 intValue]);

      v65 = [NSData dataWithBytes:v28 length:v29];
      v31 = ppStmt;
      v32 = [v25 objectForKeyedSubscript:@"serverAttest"];
      v33 = sqlite3_column_blob(v31, [v32 intValue]);

      v34 = ppStmt;
      v35 = [v25 objectForKeyedSubscript:@"serverAttest"];
      LODWORD(v34) = sqlite3_column_bytes(v34, [v35 intValue]);

      v64 = [NSData dataWithBytes:v33 length:v34];
      v36 = ppStmt;
      v67 = v25;
      v37 = [v25 objectForKeyedSubscript:@"recordAccount"];
      v38 = sqlite3_column_text(v36, [v37 intValue]);

      if (a7 && (a7 != 2 || [v16 profileType] == -1) || objc_msgSend(v16, "profileID") == v63 && (objc_msgSend(v16, "profileName"), v39 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v62), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v39, "isEqualToString:", v40), v40, v39, (v41 & 1) != 0))
      {
        v42 = &_s8CloudKit12CKSyncEngineC5EventO13AccountChangeV0G4TypeO6signInyAISo10CKRecordIDC_tcAImFWC_ptr;
        v60 = v38;
        v22 = [NSString stringWithFormat:@"%@%@.asset", self->_malocalAssetPath, v15];
        v43 = v66;
        if ([(NSFileManager *)self->_fileMgr isReadableFileAtPath:v22])
        {
          v23 = objc_alloc_init(MASDAsset);
          [(MASDAsset *)v23 setAssetHandle:v15];
          if (a7 == 1)
          {
            v44 = [MASDUserProfile alloc];
            v45 = [NSString stringWithFormat:@"%s", v62];
            v46 = [(MASDUserProfile *)v44 initNewProfileWith:v63 name:v45 type:-1];
            [(MASDAsset *)v23 setAssetOwner:v46];

            v42 = &_s8CloudKit12CKSyncEngineC5EventO13AccountChangeV0G4TypeO6signInyAISo10CKRecordIDC_tcAImFWC_ptr;
          }

          else
          {
            [(MASDAsset *)v23 setAssetOwner:v16];
          }

          v51 = [v42[85] stringWithFormat:@"%s", v61];
          [(MASDAsset *)v23 setAssetProcess:v51];

          v52 = [(MAStorage *)self buildMetaDataFromSqlStatement:ppStmt];
          [(MASDAsset *)v23 setAssetMetadata:v52];

          if (a5 != 1)
          {
            goto LABEL_39;
          }

          v53 = [NSURL fileURLWithPath:v22];
          v69 = 0;
          v54 = [NSFileHandle fileHandleForReadingFromURL:v53 error:&v69];
          v21 = v69;
          [(MASDAsset *)v23 setAssetFileHandle:v54];

          if (v21)
          {
            v50 = v64;
            if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
            {
              sub_100018FF8();
            }

            *v66 = createManagedAssetError();

            v23 = 0;
            a6 = v68;
            v49 = v65;
          }

          else
          {
LABEL_39:
            v55 = [(MASDAsset *)v23 assetMetadata];
            -[MASDAsset setSyncOption:](v23, "setSyncOption:", [v55 syncOption]);

            v49 = v65;
            [(MASDAsset *)v23 setCreatorAttest:v65];
            v50 = v64;
            [(MASDAsset *)v23 setServerAttest:v64];
            if (v60)
            {
              v56 = [NSString stringWithUTF8String:?];
              [(MASDAsset *)v23 setRecordAccount:v56];
            }

            if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
            {
              sub_100019060();
            }

            v21 = 0;
            a6 = v68;
          }

          goto LABEL_44;
        }

        a6 = v68;
        if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
        {
          sub_100018F90();
        }

        v48 = createManagedAssetError();
        v21 = 0;
      }

      else
      {
        a6 = v68;
        v43 = v66;
        if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
        {
          sub_100018F54();
        }

        v48 = createManagedAssetError();
        v21 = 0;
        v22 = 0;
      }

      v23 = 0;
      *v43 = v48;
      v50 = v64;
      v49 = v65;
LABEL_44:

      goto LABEL_45;
    }

    v47 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000190C8(&self->_database, v47);
    }

    sqlite3_errmsg(*p_database);
  }

  createManagedAssetError();
  v21 = 0;
  v22 = 0;
  *a8 = v23 = 0;
LABEL_45:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  if (a6)
  {
    v57 = v22;
    *a6 = v22;
  }

  v19 = v23;

LABEL_50:

  return v19;
}

- (id)buildMetaDataFromSqlStatement:(sqlite3_stmt *)a3
{
  v4 = [(MAStorage *)self getTableColumns:@"mAssets"];
  v5 = sqlite3_column_int64(a3, 4);
  v43 = sqlite3_column_text(a3, 5);
  v6 = sqlite3_column_int(a3, 6);
  v7 = sqlite3_column_text(a3, 7);
  v8 = sqlite3_column_text(a3, 8);
  v37 = sqlite3_column_text(a3, 9);
  v42 = sqlite3_column_text(a3, 10);
  v9 = [v4 objectForKeyedSubscript:@"assetState"];
  v10 = sqlite3_column_int(a3, [v9 intValue]);

  v11 = [v4 objectForKeyedSubscript:@"enrollmentIdentifier"];
  v38 = sqlite3_column_text(a3, [v11 intValue]);

  v12 = [v4 objectForKeyedSubscript:@"deviceIdentifier"];
  v39 = sqlite3_column_text(a3, [v12 intValue]);

  v13 = [v4 objectForKeyedSubscript:@"deviceName"];
  v40 = sqlite3_column_text(a3, [v13 intValue]);

  v14 = [v4 objectForKeyedSubscript:@"recordName"];
  v41 = sqlite3_column_text(a3, [v14 intValue]);

  v15 = objc_alloc_init(NSDateFormatter);
  [v15 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v16 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v15 setLocale:v16];

  v44[0] = @"_type";
  v17 = [NSNumber numberWithUnsignedInteger:v5];
  v45[0] = v17;
  v44[1] = @"_syncOption";
  v18 = [NSNumber numberWithInt:v6];
  v45[1] = v18;
  v44[2] = @"_assetState";
  v19 = [NSNumber numberWithInt:v10];
  v45[2] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
  v21 = [NSMutableDictionary dictionaryWithDictionary:v20];

  if (!v7 || (+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", v7), v22 = objc_claimAutoreleasedReturnValue(), [v15 dateFromString:v22], v23 = objc_claimAutoreleasedReturnValue(), v22, !v23))
  {
    v23 = +[NSDate now];
  }

  [v21 setObject:v23 forKeyedSubscript:@"_creationTime"];

  if (v8 && (+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", v8), v24 = objc_claimAutoreleasedReturnValue(), [v15 dateFromString:v24], v25 = objc_claimAutoreleasedReturnValue(), v24, v25))
  {
    v26 = [NSString stringWithFormat:@"%s", v8];
    v27 = [v15 dateFromString:v26];
    [v21 setObject:v27 forKeyedSubscript:@"_lastUpdatedTime"];
  }

  else
  {
    v25 = +[NSDate now];
    [v21 setObject:v25 forKeyedSubscript:@"_lastUpdatedTime"];
  }

  if (v37)
  {
    v28 = [NSString stringWithFormat:@"%s", v37];
    [v21 setObject:v28 forKeyedSubscript:@"_lastUpdatedOSVersion"];
  }

  if (v43)
  {
    v29 = [NSString stringWithFormat:@"%s", v43];
    [v21 setObject:v29 forKeyedSubscript:@"_label"];
  }

  if (v42)
  {
    v30 = [NSString stringWithFormat:@"%s", v42];
    [v21 setObject:v30 forKeyedSubscript:@"_lastUpdatedAlgorithmVersion"];
  }

  if (v38)
  {
    v31 = [NSString stringWithFormat:@"%s", v38];
    [v21 setObject:v31 forKeyedSubscript:@"_enrollmentIdentifier"];
  }

  if (v39)
  {
    v32 = [NSString stringWithFormat:@"%s", v39];
    [v21 setObject:v32 forKeyedSubscript:@"_deviceIdentifier"];
  }

  if (v40)
  {
    v33 = [NSString stringWithFormat:@"%s", v40];
    [v21 setObject:v33 forKeyedSubscript:@"_deviceName"];
  }

  if (v41)
  {
    v34 = [NSString stringWithFormat:@"%s", v41];
    [v21 setObject:v34 forKeyedSubscript:@"_ckrecordIdentifier"];
  }

  v35 = [[MASDAssetMetadata alloc] initAssetMetadataWithInfoDictionary:v21];

  return v35;
}

- (BOOL)createTempAssetFile:(id)a3 protectionType:(id)a4 pathOut:(id *)a5 fileHandleOut:(id *)a6 error:(id *)a7
{
  malocalTmpAssetPath = self->_malocalTmpAssetPath;
  v13 = a4;
  v14 = [NSString stringWithFormat:@"%@%@.asset", malocalTmpAssetPath, a3];
  fileMgr = self->_fileMgr;
  v16 = [NSDictionary dictionaryWithObject:v13 forKey:NSFileProtectionKey];

  LOBYTE(fileMgr) = [(NSFileManager *)fileMgr createFileAtPath:v14 contents:0 attributes:v16];
  if ((fileMgr & 1) == 0)
  {
    v19 = __error();
    if (*v19 != 28)
    {
      v22 = *v19;
    }

    *a7 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_10001914C();
    }

    goto LABEL_14;
  }

  if (a5)
  {
    v17 = v14;
    *a5 = v14;
  }

  if (a6)
  {
    v18 = [NSURL fileURLWithPath:v14 isDirectory:0];
    *a6 = [NSFileHandle fileHandleForWritingToURL:v18 error:a7];

    if (*a7)
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_1000191C8(v14, a7);
      }

LABEL_14:
      v20 = 0;
      goto LABEL_15;
    }
  }

  v20 = 1;
LABEL_15:

  return v20;
}

- (BOOL)validateSessionToken:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
    v6 = [v5 invertedSet];

    v7 = [v4 rangeOfCharacterFromSet:v6] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)deleteTempAssetFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSString stringWithFormat:@"%@%@.asset", self->_malocalTmpAssetPath, v6];
  if ([(MAStorage *)self validateSessionToken:v6]&& [(NSFileManager *)self->_fileMgr fileExistsAtPath:v7])
  {
    v8 = [(NSFileManager *)self->_fileMgr removeItemAtPath:v7 error:a4];
  }

  else
  {
    createManagedAssetError();
    *a4 = v8 = 0;
  }

  return v8;
}

- (BOOL)renameAssetFileFromTempAsset:(id)a3 token:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(MAStorage *)self validateSessionToken:v9])
  {
    v10 = [NSString stringWithFormat:@"%@%@.asset", self->_malocalTmpAssetPath, v9];

    malocalAssetPath = self->_malocalAssetPath;
    v12 = [v8 assetHandle];
    v13 = [NSString stringWithFormat:@"%@%@.asset", malocalAssetPath, v12];

    if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v10])
    {
      if ([(NSFileManager *)self->_fileMgr contentsEqualAtPath:v10 andPath:v13])
      {
        fileMgr = self->_fileMgr;
        v27 = 0;
        [(NSFileManager *)fileMgr removeItemAtPath:v10 error:&v27];
        v15 = v27;
        if (v15 && os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
        {
          sub_10001934C();
        }
      }

      else
      {
        v19 = [v10 fileSystemRepresentation];
        v20 = [v13 fileSystemRepresentation];
        rename(v19, v20, v21);
        if (!v22)
        {
          v25 = [NSFileHandle fileHandleForUpdatingAtPath:v13];
          [v8 setAssetFileHandle:v25];

          v18 = 1;
          goto LABEL_15;
        }

        v26 = *__error();
        *a5 = createManagedAssetError();
        v23 = off_100127CD8;
        if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
        {
          sub_1000192B0(v10, v13, v23);
        }
      }
    }

    else
    {
      *a5 = createManagedAssetError();
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100019248();
      }
    }

    v18 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v16 = createManagedAssetError();

  v17 = v16;
  v18 = 0;
  *a5 = v16;
LABEL_16:

  return v18;
}

- (id)queryAssets:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSMutableArray array];
  ppStmt = 0;
  v11 = [NSMutableString stringWithString:@"SELECT assetHandle FROM mAssets WHERE "];
  v12 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionAssetType];
  if (v12)
  {
    [v11 appendString:@"assetType = ? AND "];
  }

  v56 = [v8 objectForKeyedSubscript:kManagedAssetsRecordNameKey];
  if (v56)
  {
    [v11 appendString:@"recordName = ? AND "];
  }

  v13 = kManagedAssetsImportOptionSelectedAssetTypes;
  v14 = [v8 objectForKeyedSubscript:kManagedAssetsImportOptionSelectedAssetTypes];

  if (v14 || (v13 = kManagedAssetsExportOptionAssetTypes, [v8 objectForKeyedSubscript:kManagedAssetsExportOptionAssetTypes], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v15 = [v8 objectForKeyedSubscript:v13];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 isValidAssetTypeArray])
  {
    v16 = [v15 componentsJoinedByString:{@", "}];
    [v11 appendFormat:@"assetType IN (%@) AND ", v16];
  }

  v55 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionAssetLabel];
  if (v55)
  {
    [v11 appendString:@"assetLabel = ? AND "];
  }

  v54 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionAlgorithmVer];
  if (v54)
  {
    [v11 appendString:@"lastUpdatedAlgorithmVersion = ? AND "];
  }

  v49 = [v8 objectForKeyedSubscript:kManagedAssetsAssetStateKey];
  v17 = [v49 unsignedIntegerValue];
  v18 = v17 & 3;
  if (!v17)
  {
    v18 = 1;
  }

  v19 = v17 & 0x4070;
  if (v18 < 2 || (v18 & 1) == 0)
  {
    if (v18 > 1)
    {
      v20 = @"(activeState == 2) AND ";
    }

    else
    {
      if (!v18)
      {
        goto LABEL_24;
      }

      v20 = @"(activeState == 1) AND ";
    }

    [v11 appendString:v20];
  }

LABEL_24:
  v42 = v19;
  if (v19)
  {
    [v11 appendString:@"((assetState & ?) != 0) AND "];
  }

  v21 = [v8 objectForKeyedSubscript:kManagedAssetsAssetStateNegativeFilterKey];
  v48 = v21;
  if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v23 = [v22 unsignedIntegerValue]) != 0)
  {
    v41 = v23;
    [v11 appendString:@"((assetState & ?) == 0) AND "];
    v24 = 0;
  }

  else
  {
    v41 = 0;
    v24 = 1;
  }

  v53 = [v8 objectForKeyedSubscript:kManagedAssetsEnrollmentIDKey];
  if (v53)
  {
    [v11 appendString:@"enrollmentIdentifier = ? AND "];
  }

  v52 = [v8 objectForKeyedSubscript:kManagedAssetsRXUUIDKey];
  if (v52)
  {
    [v11 appendString:{@"assetLabel LIKE ? AND assetType IN (100, 125) AND "}];
  }

  v57 = [v8 objectForKeyedSubscript:kManagedAssetsSerializedFeatureKey];
  if (v57)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 appendString:{@"assetLabel LIKE 'gazeEnrollmentSerializedFeatures_%' AND assetType IN (100, 129) AND "}];
    }
  }

  v25 = [v8 objectForKeyedSubscript:kManagedAssetsRecordAccountKey];
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 appendString:@"recordAccount is null AND "];
    }
  }

  v47 = v25;
  v26 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionProfileUUID];
  v46 = v26;
  if (v26)
  {
    v27 = v26;

    v9 = v27;
  }

  [v11 appendString:@" assetProfileName = ? "];
  v28 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionEntryOnly];
  v45 = v28;
  if (v28)
  {
    v29 = [v28 BOOLValue] ^ 1;
  }

  else
  {
    v29 = 1;
  }

  v58 = v29;
  v30 = [v8 objectForKeyedSubscript:kManagedAssetsSortOptionASCByUpdateTime];
  v44 = v30;
  if (v30 && ([v30 BOOLValue] & 1) != 0)
  {
    v31 = @" ORDER BY lastUpdatedTime ASC";
  }

  else
  {
    v31 = @" ORDER BY lastUpdatedTime DESC";
  }

  [v11 appendString:v31];
  v50 = v15;
  v51 = v12;
  if (sqlite3_prepare_v2(self->_database, [v11 cStringUsingEncoding:4], -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000193BC();
    }

    v40 = NSStringFromSelector(a2);
    sqlite3_errmsg(self->_database);
    *a5 = createManagedAssetError();
  }

  else
  {
    if (v12)
    {
      sqlite3_bind_int64(ppStmt, 1, [v12 unsignedIntegerValue]);
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    if (v56)
    {
      sqlite3_bind_text(ppStmt, 1, [v56 cStringUsingEncoding:4], objc_msgSend(v56, "lengthOfBytesUsingEncoding:", 4), 0);
    }

    if (v55)
    {
      sqlite3_bind_text(ppStmt, v32++, [v55 cStringUsingEncoding:4], objc_msgSend(v55, "lengthOfBytesUsingEncoding:", 4), 0);
    }

    if (v54)
    {
      sqlite3_bind_text(ppStmt, v32++, [v54 cStringUsingEncoding:4], objc_msgSend(v54, "lengthOfBytesUsingEncoding:", 4), 0);
    }

    if (v42)
    {
      sqlite3_bind_int64(ppStmt, v32++, v42);
    }

    if ((v24 & 1) == 0)
    {
      sqlite3_bind_int64(ppStmt, v32++, v41);
    }

    if (v53)
    {
      sqlite3_bind_text(ppStmt, v32++, [v53 cStringUsingEncoding:4], objc_msgSend(v53, "lengthOfBytesUsingEncoding:", 4), 0);
    }

    if (v52)
    {
      v33 = [NSString stringWithFormat:@"%%%@%%", v52];
      sqlite3_bind_text(ppStmt, v32, [v33 cStringUsingEncoding:4], objc_msgSend(v33, "lengthOfBytesUsingEncoding:", 4), 0);

      ++v32;
    }

    sqlite3_bind_text(ppStmt, v32, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    while (sqlite3_step(ppStmt) != 101)
    {
      v34 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
      v35 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:v34];

      if (v35)
      {
        [v10 addObject:v34];
      }

      else
      {
        v36 = [NSString stringWithFormat:@"%@%@.asset", self->_malocalAssetPath, v34];
        if (v58)
        {
          v37 = [NSFileHandle fileHandleForReadingAtPath:v36];
          if (v37)
          {
            [v10 addObject:v34];
            [v37 closeFile];
          }
        }

        else if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v36])
        {
          [v10 addObject:v34];
        }
      }
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  v38 = v10;

  return v38;
}

- (id)queryAssetsMetaData:(id)a3 profile:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  v11 = [NSMutableString stringWithString:@"SELECT * FROM mAssets WHERE "];
  v12 = kManagedAssetsQueryOptionAssetList;
  v13 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionAssetList];

  if (v13)
  {
    v13 = [v8 objectForKeyedSubscript:v12];
  }

  if ([v13 isValidAssetTypeArray])
  {
    v14 = [v13 componentsJoinedByString:{@", "}];
    [v11 appendFormat:@"assetType IN (%@) AND ", v14];
  }

  v36 = [v8 objectForKeyedSubscript:kManagedAssetsAssetLabelKey];
  if (v36)
  {
    [v11 appendFormat:@"assetLabel = ? AND "];
  }

  v35 = [v8 objectForKeyedSubscript:kManagedAssetsAlgorithmVerKey];
  if (v35)
  {
    [v11 appendFormat:@"lastUpdatedAlgorithmVersion = ? AND "];
  }

  v33 = [v8 objectForKeyedSubscript:kManagedAssetsAssetStateKey];
  v15 = [v33 unsignedIntegerValue];
  v16 = v15 & 3;
  if (!v15)
  {
    v16 = 1;
  }

  if (v16 < 2 || (v16 & 1) == 0)
  {
    if (v16 > 1)
    {
      v18 = @"(activeState == 2) AND ";
    }

    else
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      v18 = @"(activeState == 1) AND ";
    }

    [v11 appendString:v18];
  }

LABEL_21:
  v19 = [v8 objectForKeyedSubscript:kManagedAssetsQueryOptionProfileUUID];
  v32 = v19;
  if (v19)
  {
    v20 = v19;

    v9 = v20;
  }

  [v11 appendString:@" assetProfileName = ?"];
  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001945C();
  }

  v34 = v13;
  if (sqlite3_prepare_v2(self->_database, [v11 cStringUsingEncoding:4], -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000193BC();
    }

    v30 = NSStringFromSelector(a2);
    sqlite3_errmsg(self->_database);
    createManagedAssetError();
    *a5 = v21 = a5;
  }

  else
  {
    if (v36)
    {
      v22 = ppStmt;
      v23 = v36;
      sqlite3_bind_text(v22, 1, [v36 cStringUsingEncoding:4], objc_msgSend(v36, "lengthOfBytesUsingEncoding:", 4), 0);
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v21 = a5;
    if (v35)
    {
      sqlite3_bind_text(ppStmt, v24++, [v35 cStringUsingEncoding:4], objc_msgSend(v35, "lengthOfBytesUsingEncoding:", 4), 0);
    }

    sqlite3_bind_text(ppStmt, v24, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    while (sqlite3_step(ppStmt) != 101)
    {
      v25 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
      v26 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:v25];

      if (v26)
      {
        v27 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:v25];
        v28 = [v27 assetMetadata];
        [v10 setObject:v28 forKeyedSubscript:v25];
      }

      else
      {
        v27 = [(MAStorage *)self buildMetaDataFromSqlStatement:ppStmt];
        [v10 setObject:v27 forKeyedSubscript:v25];
      }
    }
  }

  if (*v21)
  {
    [v10 removeAllObjects];

    v10 = 0;
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v10;
}

- (id)queryA06AssetsWithError:(id *)a3
{
  v6 = objc_alloc_init(NSDateFormatter);
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v21 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  v20 = [NSMutableString stringWithString:@"SELECT assetHandle, creationTime FROM mAssets WHERE assetType IN (107, 114, 106, 110, 120)"];
  v7 = [v20 cStringUsingEncoding:4];
  v8 = off_100127CD8;
  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSString stringWithUTF8String:v7];
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "querying sql string %@", buf, 0xCu);
  }

  if (sqlite3_prepare_v2(self->_database, v7, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000193BC();
    }

    v19 = NSStringFromSelector(a2);
    sqlite3_errmsg(self->_database);
    *a3 = createManagedAssetError();
  }

  else
  {
    while (sqlite3_step(ppStmt) != 101)
    {
      v11 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
      v12 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 1)];
      v13 = [v6 dateFromString:v12];
      [v13 timeIntervalSince1970];
      v15 = v14;
      v16 = [NSString stringWithFormat:@"%@%@.asset", self->_malocalAssetPath, v11];
      if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v16])
      {
        v17 = [NSNumber numberWithInteger:v15];
        [v21 setObject:v17 forKeyedSubscript:v11];
      }
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v21;
}

- (BOOL)deleteAllAssetsExcept:(id)a3 error:(id *)a4
{
  v6 = a3;
  errmsg = 0;
  if ([v6 count])
  {
    v7 = [v6 componentsJoinedByString:{@"', '"}];
    v8 = [NSString stringWithFormat:@"DELETE FROM mAssets WHERE assetHandle NOT IN ('%@')", v7];
    v9 = [v8 UTF8String];
  }

  else
  {
    v9 = "DELETE FROM mAssets";
  }

  if (sqlite3_exec(self->_database, v9, 0, 0, &errmsg))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000194C4(&errmsg);
    }

    createManagedAssetError();
    *a4 = v10 = 0;
    goto LABEL_32;
  }

  v11 = [v6 count];
  p_malocalAssetPath = &self->_malocalAssetPath;
  malocalAssetPath = self->_malocalAssetPath;
  fileMgr = self->_fileMgr;
  if (!v11)
  {
    if ([(NSFileManager *)fileMgr removeItemAtPath:malocalAssetPath error:a4])
    {
      v10 = 1;
      if ([(NSFileManager *)self->_fileMgr createDirectoryAtPath:self->_malocalAssetPath withIntermediateDirectories:1 attributes:0 error:a4])
      {
        goto LABEL_32;
      }

      v33 = *p_malocalAssetPath;
      *a4 = createManagedAssetError();
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_1000195FC(&self->_malocalAssetPath);
      }
    }

    else
    {
      v34 = *p_malocalAssetPath;
      *a4 = createManagedAssetError();
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100019594(&self->_malocalAssetPath);
      }
    }

    goto LABEL_31;
  }

  v15 = [(NSFileManager *)fileMgr contentsOfDirectoryAtPath:malocalAssetPath error:a4];
  v16 = v15;
  if (*a4)
  {
    v32 = *p_malocalAssetPath;
    *a4 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_10001952C(&self->_malocalAssetPath);
    }

LABEL_31:
    v10 = 0;
    goto LABEL_32;
  }

  v35 = self;
  obj = v15;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v38 + 1) + 8 * i);
        v22 = [v21 componentsSeparatedByString:@"."];
        v23 = [v22 objectAtIndexedSubscript:0];

        v24 = [NSString stringWithFormat:@"%@%@", *p_malocalAssetPath, v21];
        v25 = v6;
        v26 = [v6 containsObject:v23];
        v27 = 0;
        if ((v26 & 1) == 0)
        {
          v28 = v35->_fileMgr;
          v37 = 0;
          v29 = [(NSFileManager *)v28 removeItemAtPath:v24 error:&v37];
          v27 = v37;
          if ((v29 & 1) == 0)
          {
            v30 = off_100127CD8;
            if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v44 = v24;
              v45 = 2112;
              v46 = v27;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to delete asset file store at: %@, error: %@", buf, 0x16u);
            }
          }
        }

        v6 = v25;
      }

      v18 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v18);
  }

  v10 = 1;
LABEL_32:
  if (errmsg)
  {
    sqlite3_free(errmsg);
  }

  return v10;
}

- (BOOL)createProfile:(id)a3 type:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6
{
  v8 = a4;
  v11 = a3;
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "INSERT INTO mProfileInfo (profileName, isGuest, creationTime) VALUES (?, ?, ?);", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v21 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a6 = createManagedAssetError();

    v14 = 0;
  }

  else
  {
    v15 = ppStmt;
    v16 = [v11 UUIDString];
    v17 = [v16 cStringUsingEncoding:4];
    v18 = [v11 UUIDString];
    v14 = 1;
    sqlite3_bind_text(v15, 1, v17, [v18 lengthOfBytesUsingEncoding:4], 0);

    sqlite3_bind_int(ppStmt, 2, v8);
    sqlite3_bind_double(ppStmt, 3, a5);
    if (sqlite3_step(ppStmt) != 101)
    {
      v19 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018B28(p_database, v19);
      }

      sqlite3_errmsg(*p_database);
      createManagedAssetError();
      *a6 = v14 = 0;
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v14;
}

- (id)getProfile:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (v7)
  {
    ppStmt = 0;
    database = self->_database;
    p_database = &self->_database;
    if (sqlite3_prepare_v2(database, "SELECT * FROM mProfileInfo WHERE profileName = ? ", -1, &ppStmt, 0))
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018A88();
      }

      v24 = NSStringFromSelector(a2);
      sqlite3_errmsg(*p_database);
      *a4 = createManagedAssetError();
    }

    else
    {
      v12 = ppStmt;
      v13 = [v7 UUIDString];
      v14 = [v13 cStringUsingEncoding:4];
      v15 = [v7 UUIDString];
      sqlite3_bind_text(v12, 1, v14, [v15 lengthOfBytesUsingEncoding:4], 0);

      v16 = sqlite3_step(ppStmt);
      if (v16 != 101)
      {
        if (v16 == 100)
        {
          v17 = sqlite3_column_int64(ppStmt, 0);
          v18 = sqlite3_column_text(ppStmt, 1);
          v19 = sqlite3_column_int(ppStmt, 2);
          v20 = [MASDUserProfile alloc];
          v21 = [NSString stringWithUTF8String:v18];
          v10 = [(MASDUserProfile *)v20 initNewProfileWith:v17 name:v21 type:v19];
        }

        else
        {
          v23 = off_100127CD8;
          if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
          {
            sub_1000190C8(p_database, v23);
          }

          sqlite3_errmsg(*p_database);
          createManagedAssetError();
          *a4 = v10 = 0;
        }

        goto LABEL_7;
      }

      v22 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100019664(v22);
      }

      v25 = [v7 UUIDString];
      *a4 = createManagedAssetError();
    }

    v10 = 0;
LABEL_7:
    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_1000196FC();
  }

  createManagedAssetError();
  *a4 = v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)deleteAllAssetsWith:(id)a3 recordIDs:(id *)a4 error:(id *)a5 wipeOutProfile:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(self->_database, "SELECT assethandle, assetType, recordName FROM mAssets WHERE assetProfileName = ?", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000193BC();
    }

LABEL_30:
    v21 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a5 = createManagedAssetError();

    v20 = 0;
    goto LABEL_31;
  }

  v25 = a4;
  sqlite3_bind_text(ppStmt, 1, [v10 cStringUsingEncoding:4], objc_msgSend(v10, "lengthOfBytesUsingEncoding:", 4), 0);
  if (sqlite3_step(ppStmt) == 101)
  {
LABEL_11:
    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
      ppStmt = 0;
    }

    if (sqlite3_prepare_v2(*p_database, "DELETE FROM mAssets WHERE assetProfileName = ?", -1, &ppStmt, 0))
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018A88();
      }

      goto LABEL_30;
    }

    sqlite3_bind_text(ppStmt, 1, [v10 cStringUsingEncoding:4], objc_msgSend(v10, "lengthOfBytesUsingEncoding:", 4), 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018DE4();
      }

      goto LABEL_30;
    }

    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
      ppStmt = 0;
    }

    v19 = v25;
    if (!v6)
    {
      goto LABEL_36;
    }

    if (sqlite3_prepare_v2(*p_database, "DELETE FROM mProfileInfo WHERE ProfileName = ?", -1, &ppStmt, 0))
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018A88();
      }

      goto LABEL_30;
    }

    sqlite3_bind_text(ppStmt, 1, [v10 cStringUsingEncoding:4], objc_msgSend(v10, "lengthOfBytesUsingEncoding:", 4), 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018DE4();
      }

      goto LABEL_30;
    }

    v19 = v25;
    if (!sqlite3_changes(*p_database))
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_1000197A0();
      }

      createManagedAssetError();
      *a5 = v20 = 0;
    }

    else
    {
LABEL_36:
      v23 = v11;
      *v19 = v11;
      v20 = 1;
    }
  }

  else
  {
    while (1)
    {
      v13 = [NSString stringWithFormat:@"%@%s.asset", self->_malocalAssetPath, sqlite3_column_text(ppStmt, 0)];
      v14 = sqlite3_column_int(ppStmt, 1);
      v15 = sqlite3_column_text(ppStmt, 2);
      if (v15)
      {
        v16 = v15;
        v17 = [NSNumber numberWithInt:v14];
        v18 = [NSString stringWithFormat:@"%s", v16];
        [v11 setObject:v17 forKeyedSubscript:v18];
      }

      if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v13]&& ![(NSFileManager *)self->_fileMgr removeItemAtPath:v13 error:a5])
      {
        break;
      }

      if (sqlite3_step(ppStmt) == 101)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019738(a5);
    }

    v24 = *a5;
    *a5 = createManagedAssetError();

    v20 = 0;
  }

LABEL_31:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v20;
}

- (id)getAllProfilesWithError:(id *)a3
{
  v6 = +[NSMutableDictionary dictionary];
  [v6 setObject:&off_10011DB80 forKey:kMASDDefaultLocalUser];
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "SELECT profileName, isGuest FROM mProfileInfo", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v14 = NSStringFromSelector(a2);
    v15 = sqlite3_errmsg(*p_database);
    *a3 = createManagedAssetError();
  }

  else
  {
    while (sqlite3_step(ppStmt) != 101)
    {
      v9 = sqlite3_column_text(ppStmt, 0);
      v10 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, 1)];
      v11 = [NSString stringWithUTF8String:v9];
      [v6 setObject:v10 forKey:v11];
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  v12 = [v6 copy];

  return v12;
}

- (BOOL)updateProfileLastSwitchTS:(id)a3 mode:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6
{
  v11 = a3;
  ppStmt = 0;
  if (a4)
  {
    v12 = "UPDATE mProfileInfo SET lastSwitchInTime = ? WHERE profileName = ?";
  }

  else
  {
    v12 = "UPDATE mProfileInfo SET lastSwitchOutTime = ? WHERE profileName = ?";
  }

  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v12, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }
  }

  else
  {
    v15 = 1;
    sqlite3_bind_double(ppStmt, 1, a5);
    sqlite3_bind_text(ppStmt, 2, [v11 cStringUsingEncoding:4], objc_msgSend(v11, "lengthOfBytesUsingEncoding:", 4), 0);
    if (sqlite3_step(ppStmt) == 101)
    {
      goto LABEL_12;
    }

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DE4();
    }
  }

  v16 = NSStringFromSelector(a2);
  sqlite3_errmsg(*p_database);
  *a6 = createManagedAssetError();

  v15 = 0;
LABEL_12:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v15;
}

- (id)getLastSeenProfile
{
  v23[0] = self->_marootPath;
  v23[1] = @"lastSeenProfile.profile";
  v3 = [NSArray arrayWithObjects:v23 count:2];
  v4 = [NSString pathWithComponents:v3];

  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v4])
  {
    v5 = [NSFileHandle fileHandleForReadingAtPath:v4];
    v22 = 0;
    v6 = [v5 readDataToEndOfFileAndReturnError:&v22];
    v7 = v22;
    [v5 closeFile];
    if (v7)
    {
      fileMgr = self->_fileMgr;
      v21 = v7;
      [(NSFileManager *)fileMgr removeItemAtPath:v4 error:&v21];
      v9 = v21;

      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_1000197DC();
      }

      v10 = 0;
LABEL_6:

      goto LABEL_10;
    }

    if (v6)
    {
      v20 = 0;
      v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v20];
      v13 = v20;
      if (v13)
      {
        v14 = v13;
        v15 = self->_fileMgr;
        v19 = v14;
        [(NSFileManager *)v15 removeItemAtPath:v4 error:&v19];
        v9 = v19;

        if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
        {
          sub_10001984C();
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_6;
    }

    v16 = self->_fileMgr;
    v18 = 0;
    [(NSFileManager *)v16 removeItemAtPath:v4 error:&v18];
    v9 = v18;
    if (v9 && os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000198B4();
    }

    v10 = 0;
  }

  else
  {
    v11 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "lastSeenProfile file does not exist.", v17, 2u);
    }

    v10 = 0;
    v9 = 0;
  }

LABEL_10:

  return v10;
}

- (void)setLastSeenProfile:(id)a3
{
  v4 = a3;
  v20[0] = self->_marootPath;
  v20[1] = @"lastSeenProfile.profile";
  v5 = [NSArray arrayWithObjects:v20 count:2];
  v6 = [NSString pathWithComponents:v5];

  if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v6])
  {
    fileMgr = self->_fileMgr;
    v17 = 0;
    [(NSFileManager *)fileMgr removeItemAtPath:v6 error:&v17];
    v8 = v17;
  }

  else
  {
    v8 = 0;
  }

  v9 = open_dprotected_np([v6 UTF8String], 514, 6, 0, 420);
  if (v9 == -1)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019A04();
    }
  }

  else
  {
    v10 = [[NSFileHandle alloc] initWithFileDescriptor:v9];
    v16 = v8;
    v11 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v16];
    v12 = v16;

    if (v12)
    {
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100019924();
      }
    }

    else
    {
      v15 = 0;
      v13 = [v10 writeData:v11 error:&v15];
      v12 = v15;
      v14 = off_100127CD8;
      if (v13)
      {
        if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Write serialized profile to PROTECTION_CLASS_F file at %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100019994();
      }

      [v10 closeFile];
    }

    v8 = v12;
  }
}

- (BOOL)changeProfileType:(id)a3 profileType:(unint64_t)a4 timestamp:(double)a5 error:(id *)a6
{
  v11 = a3;
  ppStmt = 0;
  if (a4 == 2)
  {
    v12 = "UPDATE mProfileInfo SET isGuest = ?, lastSwitchInTime = ?, lastSwitchOutTime = ? WHERE profileName = ?";
  }

  else
  {
    v12 = "UPDATE mProfileInfo SET isGuest = ?, lastSwitchInTime = ? WHERE profileName = ?";
  }

  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v12, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }
  }

  else
  {
    sqlite3_bind_int(ppStmt, 1, a4);
    sqlite3_bind_double(ppStmt, 2, a5);
    v15 = ppStmt;
    if (a4 == 2)
    {
      sqlite3_bind_double(ppStmt, 3, a5);
      v16 = ppStmt;
      v17 = [v11 cStringUsingEncoding:4];
      v18 = [v11 lengthOfBytesUsingEncoding:4];
      v19 = v16;
      v20 = 4;
      v21 = v17;
    }

    else
    {
      v22 = [v11 cStringUsingEncoding:4];
      v18 = [v11 lengthOfBytesUsingEncoding:4];
      v19 = v15;
      v20 = 3;
      v21 = v22;
    }

    sqlite3_bind_text(v19, v20, v21, v18, 0);
    if (sqlite3_step(ppStmt) == 101)
    {
      v23 = 1;
      goto LABEL_16;
    }

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DE4();
    }
  }

  v24 = NSStringFromSelector(a2);
  sqlite3_errmsg(*p_database);
  *a6 = createManagedAssetError();

  v23 = 0;
LABEL_16:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v23;
}

- (BOOL)persistGuestProfile:(id)a3 timestamp:(double)a4 error:(id *)a5
{
  v9 = a3;
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "UPDATE mProfileInfo SET lastSwitchInTime = ? WHERE profileName = ?", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }
  }

  else
  {
    v12 = 1;
    sqlite3_bind_double(ppStmt, 1, a4);
    sqlite3_bind_text(ppStmt, 2, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    if (sqlite3_step(ppStmt) == 101)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DE4();
    }
  }

  v13 = NSStringFromSelector(a2);
  sqlite3_errmsg(*p_database);
  *a5 = createManagedAssetError();

  v12 = 0;
LABEL_9:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v12;
}

- (id)getLastSwitchOutTimeForRecentPersistedGuestWithError:(id *)a3
{
  ppStmt = 0;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(self->_database, "SELECT MAX(lastSwitchOutTime) from mProfileInfo WHERE isGuest = 2", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v8 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a3 = createManagedAssetError();

    goto LABEL_11;
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    *a3 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      sub_100019A6C(a3);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (sqlite3_column_type(ppStmt, 0) == 5)
  {
    *a3 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (sqlite3_column_double(ppStmt, 0) == 0.0)
  {
    *a3 = createManagedAssetError();
    if (!os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = [NSDate dateWithTimeIntervalSince1970:?];
LABEL_12:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v6;
}

- (id)getLastSwitchTS:(id)a3 mode:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  ppStmt = 0;
  if (a4)
  {
    v10 = "SELECT lastSwitchInTime from mProfileInfo WHERE profileName = ?";
  }

  else
  {
    v10 = "SELECT lastSwitchOutTime from mProfileInfo WHERE profileName = ?";
  }

  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v10, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v23 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a5 = createManagedAssetError();

    goto LABEL_8;
  }

  sqlite3_bind_text(ppStmt, 1, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
  v15 = sqlite3_step(ppStmt);
  if (v15 == 101)
  {
    *a5 = createManagedAssetError();
    v16 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      v17 = *a5;
      *buf = 134218498;
      v26 = a4;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v17;
      v18 = "Failed to get lastSwitchTS mode %lu for %@, error = %@";
      v19 = v16;
LABEL_25:
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v18, buf, 0x20u);
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (v15 != 100)
  {
    goto LABEL_8;
  }

  if (sqlite3_column_double(ppStmt, 0) == 0.0)
  {
    if (a4)
    {
      v20 = @"lastSwitchInTime";
    }

    else
    {
      v20 = @"lastSwitchOutTime";
    }

    *a5 = createManagedAssetError();
    v21 = off_100127CD8;
    if (!os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v22 = *a5;
    *buf = 138412802;
    v26 = v20;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v22;
    v18 = "Failed to get %@ for %@, error=%@";
    v19 = v21;
    goto LABEL_25;
  }

  v13 = [NSDate dateWithTimeIntervalSince1970:?];
LABEL_9:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v13;
}

- (id)getInactiveProfilesWith:(unint64_t)a3 profileType:(unint64_t)a4 error:(id *)a5
{
  v10 = +[NSMutableArray array];
  ppStmt = 0;
  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v13 = v12;

  if (a3)
  {
    v14 = @"SELECT profileName from mProfileInfo WHERE isGuest = %ld AND lastSwitchOutTime IS NOT NULL AND lastSwitchOutTime <= ?";
  }

  else
  {
    v14 = @"SELECT profileName from mProfileInfo WHERE isGuest = %ld";
  }

  v15 = [NSString stringWithFormat:v14, a4];
  v16 = [v15 UTF8String];
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v16, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v23 = NSStringFromSelector(a2);
    v24 = sqlite3_errmsg(*p_database);
    *a5 = createManagedAssetError();
  }

  else
  {
    if (a3)
    {
      sqlite3_bind_double(ppStmt, 1, v13 + a3 * -60.0);
    }

    while (sqlite3_step(ppStmt) == 100)
    {
      v19 = sqlite3_column_text(ppStmt, 0);
      if (v19)
      {
        v20 = [NSString stringWithUTF8String:v19];
        [v10 addObject:v20];
      }
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  v21 = [NSSet setWithArray:v10, v23, v24];

  return v21;
}

- (id)queryAssetHandleAndTypeBy:(id)a3 type:(id *)a4 error:(id *)a5
{
  v9 = a3;
  ppStmt = 0;
  v10 = [NSMutableString stringWithString:@"SELECT assetHandle"];
  v11 = v10;
  if (a4)
  {
    [v10 appendString:{@", assetType"}];
  }

  [v11 appendString:@" from mAssets WHERE recordName = ?"];
  v12 = [v11 cStringUsingEncoding:4];
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v12, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v17 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a5 = createManagedAssetError();

    v15 = 0;
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    v15 = 0;
    if (sqlite3_step(ppStmt) == 100)
    {
      v15 = [NSString stringWithFormat:@"%s", sqlite3_column_text(ppStmt, 0)];
      if (a4)
      {
        *a4 = [NSNumber numberWithUnsignedInteger:sqlite3_column_int64(ppStmt, 1)];
      }
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v15;
}

- (BOOL)deleteAssets:(id)a3 error:(id *)a4
{
  v6 = a3;
  ppStmt = 0;
  if (![v6 count])
  {
    v7 = 0;
    v20 = 0;
    v21 = 1;
    goto LABEL_36;
  }

  aSelector = a2;
  v7 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        if (([v13 isValidAssetHandle] & 1) == 0)
        {
          if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
          {
            sub_100019AD4();
          }

          *a4 = createManagedAssetError();

          v7 = 0;
          goto LABEL_33;
        }

        v14 = [NSString stringWithFormat:@"'%@'", v13];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v7 componentsJoinedByString:{@", "}];
  v16 = [NSString stringWithFormat:@"DELETE FROM mAssets WHERE assetHandle IN (%@)", v15];
  v17 = [v16 UTF8String];

  p_database = &self->_database;
  if (sqlite3_prepare_v2(self->_database, v17, -1, &ppStmt, 0))
  {
    v19 = aSelector;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    goto LABEL_32;
  }

  if (sqlite3_step(ppStmt) != 101)
  {
    v19 = aSelector;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DE4();
    }

LABEL_32:
    v29 = NSStringFromSelector(v19);
    sqlite3_errmsg(*p_database);
    *a4 = createManagedAssetError();

LABEL_33:
    v20 = 0;
    v21 = 0;
    goto LABEL_34;
  }

  if (sqlite3_changes(*p_database))
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    aSelectora = v8;
    v22 = [aSelectora countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v20 = 0;
      v24 = *v36;
      while (2)
      {
        v25 = 0;
        v26 = v20;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(aSelectora);
          }

          v27 = *(*(&v35 + 1) + 8 * v25);
          malocalAssetPath = self->_malocalAssetPath;
          v20 = [NSString stringWithFormat:@"%@%@.asset", malocalAssetPath, v27];

          if ([(NSFileManager *)self->_fileMgr fileExistsAtPath:v20]&& ![(NSFileManager *)self->_fileMgr removeItemAtPath:v20 error:a4])
          {
            if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
            {
              sub_100019738(a4);
            }

            v31 = *a4;
            createManagedAssetError();
            *a4 = v21 = 0;
            goto LABEL_45;
          }

          [(NSMutableDictionary *)self->_cachedAssets removeObjectForKey:v27];
          v25 = v25 + 1;
          v26 = v20;
        }

        while (v23 != v25);
        v23 = [aSelectora countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 1;
LABEL_45:
  }

  else
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019B10();
    }

    createManagedAssetError();
    v20 = 0;
    *a4 = v21 = 0;
  }

LABEL_34:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

LABEL_36:

  return v21;
}

- (BOOL)deleteAllLocalAssets:(id)a3 assetType:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  ppStmt = 0;
  if (a4)
  {
    v10 = "DELETE FROM mAssets WHERE recordAccount = ? AND assetType = ? AND isSyncedToiCloud > 0";
  }

  else
  {
    v10 = "DELETE FROM mAssets WHERE recordAccount = ? AND isSyncedToiCloud > 0";
  }

  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, v10, -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    v16 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a5 = createManagedAssetError();

    v13 = 0;
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    if (a4)
    {
      sqlite3_bind_int64(ppStmt, 2, a4);
    }

    if (sqlite3_step(ppStmt) == 101)
    {
      v13 = 1;
    }

    else
    {
      v14 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018B28(p_database, v14);
      }

      sqlite3_errmsg(*p_database);
      createManagedAssetError();
      *a5 = v13 = 0;
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v13;
}

- (BOOL)setConfigWith:(id)a3 value:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  ppStmt = 0;
  *a5 = 0;
  database = self->_database;
  p_database = &self->_database;
  v13 = sqlite3_prepare_v2(database, "INSERT OR REPLACE INTO mConfig (mKey, mValue) VALUES(?,?)", -1, &ppStmt, 0);
  if (v13)
  {
    v26 = ManagedAssetsSqliteErrorKey;
    v14 = [NSNumber numberWithInt:v13];
    v27 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v21 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a5 = createManagedAssetError();

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    sqlite3_bind_blob(ppStmt, 2, [v10 bytes], objc_msgSend(v10, "length"), 0);
    v16 = sqlite3_step(ppStmt);
    if (v16 != 101)
    {
      v24 = ManagedAssetsSqliteErrorKey;
      v17 = [NSNumber numberWithInt:v16];
      v25 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v22 = NSStringFromSelector(a2);
      sqlite3_errmsg(*p_database);
      *a5 = createManagedAssetError();

      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018DE4();
      }
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  v19 = *a5 == 0;

  return v19;
}

- (id)getConfigWith:(id)a3 error:(id *)a4
{
  v7 = a3;
  ppStmt = 0;
  *a4 = 0;
  database = self->_database;
  p_database = &self->_database;
  v10 = sqlite3_prepare_v2(database, "SELECT mValue FROM mConfig WHERE mKey = ?", -1, &ppStmt, 0);
  if (v10)
  {
    v25 = ManagedAssetsSqliteErrorKey;
    v11 = [NSNumber numberWithInt:v10];
    v26 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v20 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a4 = createManagedAssetError();

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }

    goto LABEL_4;
  }

  sqlite3_bind_text(ppStmt, 1, [v7 cStringUsingEncoding:4], objc_msgSend(v7, "lengthOfBytesUsingEncoding:", 4), 0);
  v15 = sqlite3_step(ppStmt);
  if (v15 == 11)
  {
    goto LABEL_17;
  }

  if (v15 == 101)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
    {
      sub_100019B4C();
    }

    goto LABEL_4;
  }

  if (v15 != 100)
  {
LABEL_17:
    v23 = ManagedAssetsSqliteErrorKey;
    v18 = [NSNumber numberWithInt:v15];
    v24 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v21 = NSStringFromSelector(a2);
    sqlite3_errmsg(*p_database);
    *a4 = createManagedAssetError();

    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DE4();
    }

    goto LABEL_4;
  }

  v16 = sqlite3_column_blob(ppStmt, 0);
  v17 = sqlite3_column_bytes(ppStmt, 0);
  if (!v17)
  {
LABEL_4:
    v13 = 0;
    goto LABEL_5;
  }

  v13 = [NSData dataWithBytes:v16 length:v17];
LABEL_5:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v13;
}

- (BOOL)addAnchorGroupIdentifier:(id)a3 client:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "INSERT INTO mAnchorGroups (groupID, clientID) VALUES (?, ?);", -1, &ppStmt, 0))
  {
    v12 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BB4(p_database, v12);
    }
  }

  else
  {
    v13 = 1;
    sqlite3_bind_text(ppStmt, 1, [v8 cStringUsingEncoding:4], objc_msgSend(v8, "lengthOfBytesUsingEncoding:", 4), 0);
    sqlite3_bind_text(ppStmt, 2, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
    if (sqlite3_step(ppStmt) == 101)
    {
      goto LABEL_9;
    }

    v14 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000190C8(p_database, v14);
    }
  }

  sqlite3_errmsg(*p_database);
  createManagedAssetError();
  *a5 = v13 = 0;
LABEL_9:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v13;
}

- (BOOL)removeAnchorGroupIdentifier:(id)a3 client:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "DELETE FROM mAnchorGroups WHERE groupID = ? AND clientID = ?;", -1, &ppStmt, 0))
  {
    v12 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BB4(p_database, v12);
    }

LABEL_10:
    sqlite3_errmsg(*p_database);
    goto LABEL_11;
  }

  sqlite3_bind_text(ppStmt, 1, [v8 cStringUsingEncoding:4], objc_msgSend(v8, "lengthOfBytesUsingEncoding:", 4), 0);
  sqlite3_bind_text(ppStmt, 2, [v9 cStringUsingEncoding:4], objc_msgSend(v9, "lengthOfBytesUsingEncoding:", 4), 0);
  if (sqlite3_step(ppStmt) != 101)
  {
    v14 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000190C8(p_database, v14);
    }

    goto LABEL_10;
  }

  if (sqlite3_changes(*p_database))
  {
    v13 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_100019C38();
  }

LABEL_11:
  createManagedAssetError();
  *a5 = v13 = 0;
LABEL_12:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v13;
}

- (BOOL)removeAllAnchorGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "DELETE FROM mAnchorGroups WHERE clientID = ?;", -1, &ppStmt, 0))
  {
    v9 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BB4(p_database, v9);
    }

LABEL_10:
    sqlite3_errmsg(*p_database);
    goto LABEL_11;
  }

  sqlite3_bind_text(ppStmt, 1, [v6 cStringUsingEncoding:4], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4), 0);
  if (sqlite3_step(ppStmt) != 101)
  {
    v11 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_1000190C8(p_database, v11);
    }

    goto LABEL_10;
  }

  if (sqlite3_changes(*p_database))
  {
    v10 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_100019CA0();
  }

LABEL_11:
  createManagedAssetError();
  *a4 = v10 = 0;
LABEL_12:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v10;
}

- (id)getAllAnchorGroups:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSMutableArray array];
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "SELECT groupID FROM mAnchorGroups WHERE clientID = ?", -1, &ppStmt, 0))
  {
    v10 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019BB4(p_database, v10);
    }

    sqlite3_errmsg(*p_database);
LABEL_5:
    *a4 = createManagedAssetError();
    goto LABEL_11;
  }

  sqlite3_bind_text(ppStmt, 1, [v6 cStringUsingEncoding:4], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4), 0);
  while (sqlite3_step(ppStmt) == 100)
  {
    v11 = sqlite3_column_text(ppStmt, 0);
    if (v11)
    {
      v12 = [NSString stringWithUTF8String:v11];
      [v7 addObject:v12];
    }
  }

  if (![v7 count])
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100019D08();
    }

    goto LABEL_5;
  }

LABEL_11:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v7;
}

- (void)deleteConfigWith:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  database = self->_database;
  p_database = &self->_database;
  if (sqlite3_prepare_v2(database, "DELETE FROM mConfig WHERE mKey = ?", -1, &ppStmt, 0))
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018A88();
    }
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v4 cStringUsingEncoding:4], objc_msgSend(v4, "lengthOfBytesUsingEncoding:", 4), 0);
    if (sqlite3_step(ppStmt) != 101)
    {
      v7 = off_100127CD8;
      if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018B28(p_database, v7);
      }
    }
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }
}

- (void)wipeIdentityFolderForPresence
{
  v3 = [NSString pathWithComponents:&off_10011E470];
  if (![(NSFileManager *)self->_fileMgr fileExistsAtPath:v3])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  fileMgr = self->_fileMgr;
  v9 = 0;
  v5 = [(NSFileManager *)fileMgr removeItemAtPath:v3 error:&v9];
  v6 = v9;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = off_100127CD8;
  if (!v6)
  {
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "wipe presence group folder", v8, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
  {
    sub_100019D44();
  }

LABEL_9:
}

- (void)convertAssetCaches:(unint64_t)a3 deviceState:(unint64_t)a4
{
  if ([(NSMutableDictionary *)self->_cachedAssets count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(NSMutableDictionary *)self->_cachedAssets allValues];
    v5 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v21 = *v26;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v25 + 1) + 8 * i);
          v9 = [v8 assetMetadata];
          v10 = +[MAUtilityHelper determinePClassWith:profileType:deviceState:](MAUtilityHelper, "determinePClassWith:profileType:deviceState:", [v9 type], a3, a4);

          malocalAssetPath = self->_malocalAssetPath;
          v12 = [v8 assetHandle];
          v13 = [NSString stringWithFormat:@"%@%@.asset", malocalAssetPath, v12];

          fileMgr = self->_fileMgr;
          v33 = NSFileProtectionKey;
          v34 = v10;
          v15 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v24 = 0;
          LOBYTE(malocalAssetPath) = [(NSFileManager *)fileMgr setAttributes:v15 ofItemAtPath:v13 error:&v24];
          v16 = v24;

          v17 = off_100127CD8;
          if (malocalAssetPath)
          {
            if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_DEBUG))
            {
              v18 = v17;
              v19 = [v8 assetHandle];
              *buf = 138412546;
              v30 = v19;
              v31 = 2112;
              v32 = v10;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "convert guest asset (handle:%@) to protection class %@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v13;
            v31 = 2112;
            v32 = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "fail to change file attributes at %@, errno=%@", buf, 0x16u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v6);
    }

    [(NSMutableDictionary *)self->_cachedAssets removeAllObjects];
  }
}

- (void)close
{
  p_database = &self->_database;
  if (sqlite3_close(self->_database))
  {
    v4 = off_100127CD8;
    if (os_log_type_enabled(off_100127CD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018898(self, p_database, v4);
    }
  }

  self->_database = 0;
  [(MAKVGroupDB *)self->_dbInClassC close];
  [(MAKVGroupDB *)self->_dbInClassD close];
}

@end