@interface MSDDomainsPlistPatcher
+ (id)patchDomainsPlist:(id)a3;
@end

@implementation MSDDomainsPlistPatcher

+ (id)patchDomainsPlist:(id)a3
{
  v3 = a3;
  has_internal_content = os_variant_has_internal_content();
  v5 = [NSMutableDictionary dictionaryWithContentsOfFile:v3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"SystemDomains"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 objectForKey:@"CameraRollDomain"];
      v48 = v3;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:@"RelativePathsNotToBackup"];
          if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v9 removeObject:@"Media/PhotoData/Sync"];
            [v8 setObject:v9 forKey:@"RelativePathsNotToBackup"];
            [v7 setObject:v8 forKey:@"CameraRollDomain"];
          }

          else if (has_internal_content)
          {
            sub_1000C8E50();
            goto LABEL_172;
          }

          v10 = [v8 objectForKey:@"RelativePathsToRemoveOnRestore"];

          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v10 removeObject:@"Media/PhotoData/Sync"];
            [v10 removeObject:@"Media/PhotoData/Metadata/PhotoData/Sync"];
            [v8 setObject:v10 forKey:@"RelativePathsToRemoveOnRestore"];
            [v7 setObject:v8 forKey:@"CameraRollDomain"];
          }

          else if (has_internal_content)
          {
            sub_1000C8DE8();
            goto LABEL_172;
          }

LABEL_16:
          v11 = [v7 objectForKey:@"HomeKitDomain"];

          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 objectForKey:@"RelativePathsToRemoveOnRestore"];

              if (v12 || (v12 = objc_alloc_init(NSMutableArray)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                [v12 addObject:@"Library/homed/protected-home.config"];
                [v12 addObject:@"Library/homed/datastore.sqlite"];
                [v12 addObject:@"Library/homed/datastore.sqlite-shm"];
                [v12 addObject:@"Library/homed/datastore.sqlite-wal"];
                [v11 setObject:v12 forKey:@"RelativePathsToRemoveOnRestore"];
                [v7 setObject:v11 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C9058();
                goto LABEL_172;
              }

              v13 = [v11 objectForKey:@"RelativePathsNotToBackupToService"];

              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v13 removeObject:@"Library/homed/datastore.sqlite"];
                [v13 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v13 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v11 setObject:v13 forKey:@"RelativePathsNotToBackupToService"];
                [v7 setObject:v11 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8FF0();
                goto LABEL_172;
              }

              v14 = [v11 objectForKey:@"RelativePathsNotToBackupInMegaBackup"];

              if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v14 removeObject:@"Library/homed/datastore.sqlite"];
                [v14 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v14 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v11 setObject:v14 forKey:@"RelativePathsNotToBackupInMegaBackup"];
                [v7 setObject:v11 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8F88();
                goto LABEL_172;
              }

              v15 = [v11 objectForKey:@"RelativePathsToRestoreOnly"];

              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v15 removeObject:@"Library/homed/protected-home.config"];
                [v15 removeObject:@"Library/homed/datastore.sqlite"];
                [v15 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v15 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v11 setObject:v15 forKey:@"RelativePathsToRestoreOnly"];
                [v7 setObject:v11 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8F20();
                goto LABEL_172;
              }

              v10 = [v11 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];

              if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v10 removeObject:@"Library/homed/protected-home.config"];
                [v10 removeObject:@"Library/homed/datastore.sqlite"];
                [v10 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v10 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v11 setObject:v10 forKey:@"RelativePathsToOnlyBackupEncrypted"];
                [v7 setObject:v11 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8EB8();
                goto LABEL_172;
              }
            }
          }

          v16 = [v7 objectForKey:@"HomeDomain"];

          if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v17 = [v16 objectForKey:@"RelativePathsNotToBackup"];

            if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v17 addObject:@"Library/Preferences/com.apple.identityservices.idstatuscache.plist"];
              [v17 addObject:@"Library/Preferences/com.apple.identityservicesd.plist"];
              [v17 addObject:@"Library/Preferences/com.apple.ids.deviceproperties.plist"];
              [v17 addObject:@"Library/Preferences/com.apple.ids.subservices.plist"];
              [v17 addObject:@"Library/Preferences/com.apple.ids.plist"];
              [v17 removeObject:@"Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db"];
              [v16 setObject:v17 forKey:@"RelativePathsNotToBackup"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C941C();
              goto LABEL_172;
            }

            v19 = [v16 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v19 removeObject:@"Library/Accounts"];
              [v19 removeObject:@"Library/DeviceRegistry"];
              [v19 removeObject:@"Library/DeviceRegistry.state"];
              [v19 removeObject:@"Library/MobileBluetooth"];
              [v19 removeObject:@"Library/Mobile Documents"];
              [v19 addObject:@"Library/Application Support/ScreenSaverManager"];
              v18 = [v16 objectForKey:@"RelativePathsToBackupToDriveAndStandardAccount"];
              if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v20 = [v19 arrayByAddingObjectsFromArray:v18];
                v21 = [v20 mutableCopy];

                v22 = +[NSMutableArray array];
                [v16 setObject:v22 forKey:@"RelativePathsToBackupToDriveAndStandardAccount"];

                v19 = v21;
              }

              else
              {
                v23 = sub_100063A54();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Cannot find RelativePathsToBackupToDriveAndStandardAccount under HomeDomain.", buf, 2u);
                }
              }

              [v16 setObject:v19 forKey:@"RelativePathsToBackupAndRestore"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else
            {
              if (has_internal_content)
              {
                sub_1000C93B4();
                goto LABEL_172;
              }

              v18 = 0;
            }

            v24 = [v16 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v24 addObject:@"Library/DoNotDisturb/DB/ModeConfigurations.json"];
              [v24 addObject:@"Library/DoNotDisturb/DB/ModeConfigurationsSecure.json"];
              [v16 setObject:v24 forKey:@"RelativePathsToBackupAndRestore"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9348();
              goto LABEL_172;
            }

            v25 = [v16 objectForKey:@"RelativePathsToRestoreOnly"];

            if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v25 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurations.json"];
              [v25 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurationsSecure.json"];
              [v16 setObject:v25 forKey:@"RelativePathsToRestoreOnly"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C92DC();
              goto LABEL_172;
            }

            v26 = [v16 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];

            if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v26 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurations.json"];
              [v26 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurationsSecure.json"];
              [v16 setObject:v26 forKey:@"RelativePathsToOnlyBackupEncrypted"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9270();
              goto LABEL_172;
            }

            v27 = [v16 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v27 addObject:@"Library/Safari/SafariTabs.db"];
              [v16 setObject:v27 forKey:@"RelativePathsToBackupAndRestore"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9204();
              goto LABEL_172;
            }

            v28 = [v16 objectForKey:@"RelativePathsToRestoreOnly"];

            if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v28 removeObject:@"Library/Safari/SafariTabs.db"];
              [v16 setObject:v28 forKey:@"RelativePathsToRestoreOnly"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9198();
              goto LABEL_172;
            }

            v29 = [v16 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];

            if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v29 removeObject:@"Library/Safari/SafariTabs.db"];
              [v16 setObject:v29 forKey:@"RelativePathsToOnlyBackupEncrypted"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C912C();
              goto LABEL_172;
            }

            v10 = [v16 objectForKey:@"RelativePathsNotToBackupToService"];

            if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v10 removeObject:@"Library/Safari/SafariTabs.db"];
              [v16 setObject:v10 forKey:@"RelativePathsNotToBackupToService"];
              [v7 setObject:v16 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C90C0();
              goto LABEL_172;
            }
          }

          else
          {
            if (has_internal_content)
            {
              sub_1000C9928();
              goto LABEL_172;
            }

            v18 = 0;
          }

          v30 = [v7 objectForKey:@"KeychainDomain"];

          if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v31 = +[NSMutableArray array];
            [v30 setObject:v31 forKey:@"RelativePathsToBackupAndRestore"];

            [v7 setObject:v30 forKey:@"KeychainDomain"];
          }

          else if (has_internal_content)
          {
            sub_1000C98BC();
            goto LABEL_172;
          }

          v32 = [v7 objectForKey:@"MediaDomain"];

          if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v32 removeObjectForKey:@"RelativePathsNotToBackupToDrive"];
            [v7 setObject:v32 forKey:@"MediaDomain"];
            v33 = [v32 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v33 removeObject:@"Media/iTunes_Control/Device/Trainer"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/iTunesPrefs.plist"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/MobileSync.plist"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/iPhotoAlbumPrefs"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/ApertureAlbumPrefs"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/PSAlbumAlbums"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/PSElementsAlbums"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/PhotosFolderPrefs"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/PhotosFolderAlbums"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/PhotosFolderName"];
              [v33 removeObject:@"Media/iTunes_Control/iTunes/MediaLibrary.sqlitedb"];
              [v33 addObject:@"Media/iTunes_Control/iTunes"];
              [v33 addObject:@"Media/iTunes_Control/Music"];
              [v33 addObject:@"Media/iTunes_Control/Sync"];
              [v33 addObject:@"Media/iTunes_Control/Artwork"];
              [v33 addObject:@"Media/Books"];
              [v33 addObject:@"Media/ManagedPurchases"];
              [v33 addObject:@"Media/Music/Downloads"];
              [v32 setObject:v33 forKey:@"RelativePathsToBackupAndRestore"];
              [v7 setObject:v32 forKey:@"MediaDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9484();
              goto LABEL_172;
            }
          }

          else
          {
            if (has_internal_content)
            {
              sub_1000C9850();
              goto LABEL_172;
            }

            v33 = v10;
          }

          v34 = [v7 objectForKey:@"RootDomain"];

          if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v35 = [v34 objectForKey:@"RelativePathsToRemoveOnRestore"];

            if (v35 || (v35 = objc_alloc_init(NSMutableArray)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [v35 addObject:@"Library/Preferences/com.apple.ASPCarryLog.plist"];
              [v34 setObject:v35 forKey:@"RelativePathsToRemoveOnRestore"];
              [v7 setObject:v34 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9634();
              goto LABEL_172;
            }

            v36 = [v34 objectForKey:@"RelativePathsNotToRemoveIfNotRestored"];

            if (v36 || (v36 = objc_alloc_init(NSMutableArray)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [v36 addObject:@"Library/Preferences/com.apple.MobileAsset.plist"];
              [v34 setObject:v36 forKey:@"RelativePathsNotToRemoveIfNotRestored"];
              [v7 setObject:v34 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C95C8();
              goto LABEL_172;
            }

            v37 = [v34 objectForKey:@"RelativePathsNotToRestore"];

            if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v37 removeObject:@"Library/Preferences/com.apple.powerd.lowpowermode.state.plist"];
              [v37 removeObject:@"Library/Preferences/com.apple.osanalytics.internal.plist"];
              [v34 setObject:v37 forKey:@"RelativePathsNotToRestore"];
              [v7 setObject:v34 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C955C();
              goto LABEL_172;
            }

            v33 = [v34 objectForKey:@"RelativePathsNotToBackup"];

            if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v33 removeObject:@"Library/Preferences/com.apple.powerd.lowpowermode.state.plist"];
              [v33 removeObject:@"Library/Preferences/com.apple.osanalytics.internal.plist"];
              [v34 setObject:v33 forKey:@"RelativePathsNotToBackup"];
              [v7 setObject:v34 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C94F0();
              goto LABEL_172;
            }
          }

          else if (has_internal_content)
          {
            sub_1000C97E4();
            goto LABEL_172;
          }

          v38 = [v7 objectForKey:@"SystemPreferencesDomain"];

          if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v39 = [v38 objectForKey:@"RelativePathsNotToBackup"];

            if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v39 addObject:@"SystemConfiguration/com.apple.wifi.plist"];
              [v39 addObject:@"SystemConfiguration/com.apple.wifi-networks.plist"];
              [v38 setObject:v39 forKey:@"RelativePathsNotToBackup"];
              [v7 setObject:v38 forKey:@"SystemPreferencesDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C96A0();
              goto LABEL_172;
            }
          }

          else
          {
            if (has_internal_content)
            {
              sub_1000C9778();
              goto LABEL_172;
            }

            v39 = v33;
          }

          v40 = [v7 objectForKey:@"KeyboardDomain"];

          if (v40)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [v40 objectForKey:@"RelativePathsToBackupAndRestore"];

              if (v41)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v41 addObject:@"Library/KeyboardServices"];
                }
              }

              goto LABEL_135;
            }
          }

          if (!has_internal_content)
          {
            v41 = v39;
LABEL_135:
            v42 = objc_alloc_init(NSMutableDictionary);

            [v42 setObject:@"/var/MobileAsset" forKey:@"RootPath"];
            v43 = objc_alloc_init(NSMutableArray);

            [v43 addObject:@"AssetsV2/com_apple_MobileAsset_SystemEnvironmentAsset"];
            [v43 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_FM_GenerativeModels"];
            [v43 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_Siri_Understanding"];
            [v43 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_IF_Planner"];
            [v43 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_Photos_MagicCleanup"];
            [v43 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_FM_Visual"];
            [v42 setObject:v43 forKey:@"RelativePathsToBackupAndRestore"];
            [v7 setObject:v42 forKey:@"MobileAssetDomain"];
            v44 = +[NSMutableDictionary dictionary];

            [v44 setObject:@"/var/mobile/XcodeBuiltProducts" forKey:@"RootPath"];
            v45 = +[NSMutableArray array];

            [v45 addObject:@"PressDemoScripts.xctestproducts"];
            [v44 setObject:v45 forKey:@"RelativePathsToBackupAndRestore"];
            [v7 setObject:v44 forKey:@"DemoPortalScriptsDomain"];
            [v6 setObject:v7 forKey:@"SystemDomains"];
            v46 = v6;

LABEL_136:
            v3 = v48;
            goto LABEL_137;
          }

          sub_1000C970C();
LABEL_172:
          v46 = 0;
          goto LABEL_136;
        }
      }

      if (!has_internal_content)
      {
        v10 = 0;
        goto LABEL_16;
      }

      sub_1000C9990(v8);
    }

    else
    {
      sub_1000C9A04();
    }
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000C9A6C(v3, v7);
    }
  }

  v46 = 0;
LABEL_137:

  return v46;
}

@end