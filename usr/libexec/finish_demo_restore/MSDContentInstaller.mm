@interface MSDContentInstaller
+ (id)sharedInstance;
- (BOOL)adjustContentUnder:(id)under;
- (BOOL)createIntermdediateDirectoriesInPathAndRestoreAttributes:(id)attributes;
- (BOOL)finishInstallContent;
- (BOOL)hasInheritanceACL:(id)l;
- (BOOL)hasXattr:(id)xattr path:(id)path;
- (BOOL)isContentRoot:(id)root;
- (BOOL)removeXattr:(id)xattr;
- (MSDContentInstaller)init;
- (id)originalPathFor:(id)for;
@end

@implementation MSDContentInstaller

+ (id)sharedInstance
{
  if (qword_10000C768 != -1)
  {
    sub_100004638();
  }

  v3 = qword_10000C760;

  return v3;
}

- (MSDContentInstaller)init
{
  v8.receiver = self;
  v8.super_class = MSDContentInstaller;
  v2 = [(MSDContentInstaller *)&v8 init];
  if (v2)
  {
    v3 = [@"/private/var/logs/demod" stringByAppendingPathComponent:@"demod-finish-demo-restore.log"];
    v4 = +[MSDLogModel sharedInstance];
    [v4 enableLogToFile:v3];

    v5 = +[MSDLogModel sharedInstance];
    [v5 logMessage:1 prefix:@"[INF]" message:@"MSDContentInstaller launched!"];

    v6 = v2;
  }

  return v2;
}

- (BOOL)finishInstallContent
{
  v3 = +[NSFileManager defaultManager];
  v4 = +[MSDDemoVolumeManager sharedInstance];
  [v4 mountDemoVolume];

  v5 = +[MSDDemoVolumeManager sharedInstance];
  [v5 moveDataFromShelterToFinal];

  if ([v3 fileExistsAtPath:@"/var/demo_backup/Metadata/.Content.plist"])
  {
    v6 = [NSURL fileURLWithPath:@"/var/demo_backup/Metadata/Content.plist"];
    v7 = [NSURL fileURLWithPath:@"/var/demo_backup/Metadata/.Content.plist"];
    v8 = +[MSDLogModel sharedInstance];
    [v8 logMessage:1 prefix:@"[INF]" message:{@"Restoring secure cookie file from %@ to %@", @"/var/demo_backup/Metadata/.Content.plist", @"/var/demo_backup/Metadata/Content.plist"}];

    v23 = 0;
    v9 = [v3 replaceItemAtURL:v6 withItemAtURL:v7 backupItemName:0 options:0 resultingItemURL:0 error:&v23];
    v10 = v23;
    if ((v9 & 1) == 0)
    {
      v11 = +[MSDLogModel sharedInstance];
      [v11 logMessage:1 prefix:@"[INF]" message:{@"Cannot restore secure cookie with error: %@", v10}];
    }
  }

  else
  {
    v12 = +[MSDLogModel sharedInstance];
    [v12 logMessage:1 prefix:@"[INF]" message:{@"Skipping secure cookie restore as Content.plist does not exist at %@", @"/var/demo_backup/Metadata/.Content.plist"}];

    v10 = 0;
  }

  v13 = [v3 fileExistsAtPath:@"/private/var/demo_backup/backup"];
  v14 = +[MSDLogModel sharedInstance];
  v15 = v14;
  if (!v13)
  {
    [v14 logMessage:1 prefix:@"[INF]" message:@"Skipping demo content restore as staging folder does not exist."];
    v19 = v10;
    goto LABEL_12;
  }

  [v14 logMessage:1 prefix:@"[INF]" message:@"Starting to move staged demo content..."];

  if (![(MSDContentInstaller *)self adjustContentUnder:@"/private/var/demo_backup/backup"])
  {
    v16 = +[MSDLogModel sharedInstance];
    [v16 logMessage:1 prefix:@"[INF]" message:@"Cannot move staged demo content."];
  }

  v17 = +[MSDLogModel sharedInstance];
  [v17 logMessage:1 prefix:@"[INF]" message:{@"Removing staging folder %@...", @"/private/var/demo_backup/backup"}];

  v22 = v10;
  v18 = [v3 removeItemAtPath:@"/private/var/demo_backup/backup" error:&v22];
  v19 = v22;

  if ((v18 & 1) == 0)
  {
    v15 = +[MSDLogModel sharedInstance];
    localizedDescription = [v19 localizedDescription];
    [v15 logMessage:1 prefix:@"[INF]" message:{@"Cannot remove staging folder: %@", localizedDescription}];

LABEL_12:
  }

  return 1;
}

- (BOOL)createIntermdediateDirectoriesInPathAndRestoreAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = +[MSDLogModel sharedInstance];
  [v4 logMessage:1 prefix:@"[INF]" message:{@"%s - fullPath:  %@", "-[MSDContentInstaller createIntermdediateDirectoriesInPathAndRestoreAttributes:]", attributesCopy}];

  v5 = +[NSFileManager defaultManager];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100002AC4;
  v13[4] = sub_100002AD4;
  v14 = +[NSString string];
  pathComponents = [attributesCopy pathComponents];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002ADC;
  v9[3] = &unk_100008400;
  v11 = v13;
  v7 = v5;
  v10 = v7;
  v12 = &v15;
  [pathComponents enumerateObjectsUsingBlock:v9];

  LOBYTE(pathComponents) = *(v16 + 24);
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(&v15, 8);
  return pathComponents;
}

- (BOOL)isContentRoot:(id)root
{
  rootCopy = root;
  if ([(MSDContentInstaller *)self hasXattr:@"ContentRoot" path:rootCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(MSDContentInstaller *)self hasXattr:@"ContentRootToRemove" path:rootCopy];
  }

  return v5;
}

- (BOOL)hasXattr:(id)xattr path:(id)path
{
  xattrCopy = xattr;
  pathCopy = path;
  v7 = xattrCopy;
  uTF8String = [@"MSDAnnotation" UTF8String];
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  v10 = getxattr(fileSystemRepresentation, uTF8String, 0, 0, 0, 1);
  if (v10 < 0)
  {
    if (*__error() != 93)
    {
      v14 = +[MSDLogModel sharedInstance];
      [v14 logMessage:1 prefix:@"[INF]" message:{@"Could not extract extended file attributes from %@, returned %ld", pathCopy, v10}];
      v11 = 0;
      v13 = 0;
      v15 = 0;
      goto LABEL_9;
    }

    v11 = 0;
    v13 = 0;
  }

  else
  {
    v11 = [NSMutableData dataWithLength:v10];
    v12 = getxattr(fileSystemRepresentation, uTF8String, [v11 mutableBytes], v10, 0, 1);
    if (v12 < 0)
    {
      sub_10000464C(pathCopy, &v17);
      v13 = 0;
      v15 = 0;
      v14 = v17;
      goto LABEL_9;
    }

    [v11 setLength:v12];
    v13 = [[NSString alloc] initWithData:v11 encoding:4];
    if ([v13 isEqualToString:v7])
    {
      v14 = +[MSDLogModel sharedInstance];
      v15 = 1;
      [v14 logMessage:1 prefix:@"[INF]" message:{@"%@: Has expected xattr %@", pathCopy, v7}];
LABEL_9:

      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (BOOL)removeXattr:(id)xattr
{
  xattrCopy = xattr;
  v4 = removexattr([xattrCopy fileSystemRepresentation], objc_msgSend(@"MSDAnnotation", "UTF8String"), 1);
  if (v4)
  {
    sub_1000046A8(xattrCopy);
  }

  return v4 == 0;
}

- (BOOL)hasInheritanceACL:(id)l
{
  lCopy = l;
  flagset_p = 0;
  entry_p = 0;
  file = acl_get_file([lCopy fileSystemRepresentation], ACL_TYPE_EXTENDED);
  if (file)
  {
    v8 = file;
    if (!acl_get_entry(file, 0, &entry_p))
    {
      do
      {
        if (acl_get_flagset_np(entry_p, &flagset_p))
        {
          v9 = +[MSDLogModel sharedInstance];
          v10 = [NSString stringWithFormat:@"[ERR] %s", "[MSDContentInstaller hasInheritanceACL:]"];
          v11 = __error();
          [v9 logMessage:2 prefix:v10 message:{@"Failed to read ACL flagset from %@: %s", lCopy, strerror(*v11)}];
        }

        else if (acl_get_flag_np(flagset_p, ACL_ENTRY_DIRECTORY_INHERIT) == 1 && acl_get_flag_np(flagset_p, ACL_ENTRY_FILE_INHERIT) == 1)
        {
          v13 = 1;
          goto LABEL_14;
        }

        if (entry_p)
        {
          v12 = -1;
        }

        else
        {
          v12 = 0;
        }
      }

      while (!acl_get_entry(v8, v12, &entry_p));
    }
  }

  else if (*__error() != 2)
  {
    v5 = +[MSDLogModel sharedInstance];
    v6 = [NSString stringWithFormat:@"[ERR] %s", "[MSDContentInstaller hasInheritanceACL:]"];
    v7 = __error();
    [v5 logMessage:2 prefix:v6 message:{@"Could not read ACL from %@: %s", lCopy, strerror(*v7), flagset_p}];
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (id)originalPathFor:(id)for
{
  forCopy = for;
  v4 = [forCopy rangeOfString:@"/private/var/demo_backup/backup"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [forCopy rangeOfString:@"/var/demo_backup/backup"];
  }

  if (v4)
  {
    sub_100004710(forCopy);
    v6 = 0;
  }

  else
  {
    v6 = [forCopy substringFromIndex:v5];
  }

  return v6;
}

- (BOOL)adjustContentUnder:(id)under
{
  underCopy = under;
  v6 = +[NSFileManager defaultManager];
  v68 = 0;
  v54 = v6;
  if (![v6 fileExistsAtPath:underCopy isDirectory:&v68] || v68 != 1)
  {
    v28 = 0;
    v9 = 0;
    v10 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  v67 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:underCopy error:&v67];
  v8 = v67;
  if (!v7)
  {
    +[MSDLogModel sharedInstance];
    objc_claimAutoreleasedReturnValue();
    localizedDescription = [sub_100003300() localizedDescription];
    sub_10000330C();

    v31 = 0;
    v9 = 0;
    stringByDeletingLastPathComponent = 0;
    v10 = 0;
LABEL_61:
    v36 = 0;
    goto LABEL_51;
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = v7;
  v53 = [selfCopy countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (!v53)
  {
    v51 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_46;
  }

  v51 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v64;
  v52 = underCopy;
  while (2)
  {
    for (i = 0; i != v53; i = i + 1)
    {
      v13 = v10;
      v14 = v9;
      if (*v64 != v11)
      {
        objc_enumerationMutation(selfCopy);
      }

      v10 = [underCopy stringByAppendingPathComponent:*(*(&v63 + 1) + 8 * i)];

      v62 = v8;
      v9 = [v54 attributesOfItemAtPath:v10 error:&v62];
      v15 = v62;

      if (!v9)
      {
        v43 = @"%s: Cannot get attribute from %@ - %@";
LABEL_49:
        v44 = +[MSDLogModel sharedInstance];
        localizedDescription2 = [v15 localizedDescription];
        [v44 logMessage:1 prefix:@"[INF]" message:{v43, "-[MSDContentInstaller adjustContentUnder:]", v10, localizedDescription2}];

        stringByDeletingLastPathComponent = 0;
        v36 = 0;
        v31 = v51;
        goto LABEL_50;
      }

      fileType = [v9 fileType];
      v17 = [fileType isEqualToString:NSFileTypeSymbolicLink];

      if (v17)
      {
        v18 = +[MSDDemoVolumeManager sharedInstance];
        userHomePath = [v18 userHomePath];
        v20 = [@"/private/var/demo_backup/backup" stringByAppendingPathComponent:userHomePath];

        if (!v20 || [v10 caseInsensitiveCompare:v20])
        {

          v8 = v15;
          underCopy = v52;
          continue;
        }

        v21 = +[MSDLogModel sharedInstance];
        [v21 logMessage:1 prefix:@"[INF]" message:{@"Found wormhole in staging to user volume: %@", v20}];

        underCopy = v52;
      }

      if (![(MSDContentInstaller *)self isNotExtracted:v10])
      {
        [(MSDContentInstaller *)self adjustContentUnder:v10];
        v8 = v15;
        continue;
      }

      v22 = [(MSDContentInstaller *)self originalPathFor:v10];

      v23 = +[MSDLogModel sharedInstance];
      [v23 logMessage:1 prefix:@"[INF]" message:{@"%@ is not extracted (under a content root), should use the original content.", v10}];

      v61 = v15;
      LODWORD(v23) = [v54 removeItemAtPath:v10 error:&v61];
      v24 = v61;

      if (!v23)
      {
        v15 = v24;
        v43 = @"%s: Cannot remove item: %@ - Error:  %@";
        v51 = v22;
        underCopy = v52;
        goto LABEL_49;
      }

      if ([v54 fileExistsAtPath:v22])
      {
        v60 = v24;
        v25 = [v54 moveItemAtPath:v22 toPath:v10 error:&v60];
        v8 = v60;

        if ((v25 & 1) == 0)
        {
          v26 = +[MSDLogModel sharedInstance];
          localizedDescription3 = [v8 localizedDescription];
          [v26 logMessage:1 prefix:@"[INF]" message:{@"%s: Could not move item %@ to %@.  Error:  %@", "-[MSDContentInstaller adjustContentUnder:]", v22, v10, localizedDescription3}];
        }

        v51 = v22;
      }

      else
      {
        v51 = v22;
        v8 = v24;
      }

      underCopy = v52;
    }

    v53 = [selfCopy countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

LABEL_46:

  v15 = v8;
  v6 = v54;
  v28 = v51;
LABEL_28:
  if (![sub_1000032F4() isContentRoot:?])
  {
    stringByDeletingLastPathComponent = 0;
    v36 = 1;
    goto LABEL_54;
  }

  v29 = [sub_1000032F4() isContentRootToRemove:?];
  [sub_1000032F4() removeXattr:?];
  v30 = v28;
  selfCopy = self;
  v31 = [sub_1000032F4() originalPathFor:?];

  if (![v6 fileExistsAtPath:v31])
  {
    goto LABEL_32;
  }

  v59 = v15;
  v32 = [v6 removeItemAtPath:v31 error:&v59];
  v8 = v59;

  if ((v32 & 1) == 0)
  {
    +[MSDLogModel sharedInstance];
    objc_claimAutoreleasedReturnValue();
    localizedDescription4 = [sub_100003300() localizedDescription];
    sub_10000330C();

    stringByDeletingLastPathComponent = 0;
    goto LABEL_61;
  }

  v15 = v8;
  v6 = v54;
LABEL_32:
  if (v29)
  {
    v55 = v15;
    v33 = [v6 removeItemAtPath:underCopy error:&v55];
    v8 = v55;

    if ((v33 & 1) == 0)
    {
      v34 = +[MSDLogModel sharedInstance];
      localizedDescription5 = [v8 localizedDescription];
      [v34 logMessage:1 prefix:@"[INF]" message:{@"Failed to remove:  %@ - Error:  %@", underCopy, localizedDescription5}];
    }

    selfCopy = +[MSDLogModel sharedInstance];
    v36 = 1;
    [selfCopy logMessage:1 prefix:@"[INF]" message:{@"Removed %@.", v31}];
    stringByDeletingLastPathComponent = 0;
    goto LABEL_51;
  }

  v38 = +[MSDLogModel sharedInstance];
  [v38 logMessage:1 prefix:@"[INF]" message:{@"Moving content root item %@ to %@.", underCopy, v31}];

  v6 = v54;
  stringByDeletingLastPathComponent = [v31 stringByDeletingLastPathComponent];
  if (([v54 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v68] & 1) == 0 && !objc_msgSend(selfCopy, "createIntermdediateDirectoriesInPathAndRestoreAttributes:", stringByDeletingLastPathComponent))
  {
    v36 = 0;
    v28 = v31;
    goto LABEL_54;
  }

  if (![selfCopy hasInheritanceACL:stringByDeletingLastPathComponent])
  {
    v56 = v15;
    v42 = [v54 moveItemAtPath:underCopy toPath:v31 error:&v56];
    v8 = v56;

    if (v42)
    {
      v36 = 1;
      goto LABEL_52;
    }

    +[MSDLogModel sharedInstance];
    objc_claimAutoreleasedReturnValue();
    localizedDescription6 = [sub_100003300() localizedDescription];
    goto LABEL_60;
  }

  +[MSDLogModel sharedInstance];
  v39 = selfCopy = v54;
  [v39 logMessage:1 prefix:@"[INF]" message:{@"Parent folder of content root item has inheritance ACL: %@", stringByDeletingLastPathComponent}];

  v58 = v15;
  v40 = [v54 copyItemAtPath:underCopy toPath:v31 error:&v58];
  v8 = v58;

  if ((v40 & 1) == 0)
  {
    +[MSDLogModel sharedInstance];
    objc_claimAutoreleasedReturnValue();
    localizedDescription6 = [sub_100003300() localizedDescription];
LABEL_60:
    sub_10000330C();

    goto LABEL_61;
  }

  v57 = v8;
  v41 = [v54 removeItemAtPath:underCopy error:&v57];
  v15 = v57;

  if (v41)
  {
    v36 = 1;
    v28 = v31;
    goto LABEL_53;
  }

  selfCopy = +[MSDLogModel sharedInstance];
  localizedDescription7 = [v15 localizedDescription];
  sub_10000330C();

  v36 = 0;
LABEL_50:
  v8 = v15;
LABEL_51:

LABEL_52:
  v28 = v31;
  v15 = v8;
LABEL_53:
  v6 = v54;
LABEL_54:

  return v36;
}

@end