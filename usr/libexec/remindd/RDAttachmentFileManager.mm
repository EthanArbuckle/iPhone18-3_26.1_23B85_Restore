@interface RDAttachmentFileManager
+ (id)extractSha512Sum:(id)sum;
- (BOOL)purgeFilesForAccountWithAccountID:(id)d error:(id *)error;
- (BOOL)updateAttachmentFile:(id)file accountID:(id)d fileName:(id)name sha512Sum:(id)sum fileURL:(id)l keepSource:(BOOL)source error:(id *)error;
- (RDAttachmentFileManager)initWithDocumentsURLProvider:(id)provider;
- (RDAttachmentFileManagerDocumentsURLProvider)documentsURLProvider;
- (id)URLForAccountFileDirectory:(id)directory;
- (id)URLForAttachmentDirectory:(id)directory accountID:(id)d;
- (id)URLForAttachmentFile:(id)file accountID:(id)d fileName:(id)name sha512Sum:(id)sum;
- (id)URLForDefaultFilesDirectory;
- (id)URLForHashedAttachmentDirectory:(id)directory;
- (id)URLForHashedAttachmentFileInAccount:(id)account sha512Sum:(id)sum fileExtension:(id)extension;
- (id)URLForHashedAttachmentFileInAccount:(id)account sha512SumWithFileExtension:(id)extension;
- (id)attachmentIDsFromAttachmentDirectoryWithAccountID:(id)d error:(id *)error;
- (id)documentsURLForAccountIdentifier:(id)identifier;
- (id)purgeAttachmentFilesWithAttachmentIDs:(id)ds accountID:(id)d error:(id *)error;
- (id)purgeAttachmentFilesWithSha512SumsAndExtensions:(id)extensions accountID:(id)d error:(id *)error;
@end

@implementation RDAttachmentFileManager

- (RDAttachmentFileManager)initWithDocumentsURLProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = RDAttachmentFileManager;
  v5 = [(RDAttachmentFileManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentsURLProvider, providerCopy);
  }

  return v6;
}

- (id)URLForDefaultFilesDirectory
{
  v2 = [(RDAttachmentFileManager *)self documentsURLForAccountIdentifier:0];
  v3 = [v2 URLByAppendingPathComponent:@"Files/"];

  return v3;
}

- (id)URLForAccountFileDirectory:(id)directory
{
  directoryCopy = directory;
  uUIDString = [directoryCopy UUIDString];
  v6 = [(RDAttachmentFileManager *)self documentsURLForAccountIdentifier:uUIDString];

  v7 = [v6 URLByAppendingPathComponent:@"Files/"];
  uUIDString2 = [directoryCopy UUIDString];

  v9 = [@"Account-" stringByAppendingString:uUIDString2];

  v10 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];

  return v10;
}

- (id)URLForAttachmentDirectory:(id)directory accountID:(id)d
{
  directoryCopy = directory;
  v7 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:d];
  uUIDString = [directoryCopy UUIDString];

  v9 = [@"Attachment-" stringByAppendingString:uUIDString];

  v10 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];

  return v10;
}

- (id)URLForHashedAttachmentDirectory:(id)directory
{
  v3 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:directory];
  v4 = [v3 URLByAppendingPathComponent:@"Attachments" isDirectory:1];

  return v4;
}

- (id)URLForAttachmentFile:(id)file accountID:(id)d fileName:(id)name sha512Sum:(id)sum
{
  sumCopy = sum;
  nameCopy = name;
  if (sumCopy)
  {
    v12 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:d];
    pathExtension = [nameCopy pathExtension];

    v14 = [sumCopy stringByAppendingPathExtension:pathExtension];
    v15 = [v12 URLByAppendingPathComponent:v14 isDirectory:0];

    nameCopy = pathExtension;
  }

  else
  {
    v12 = [(RDAttachmentFileManager *)self URLForAttachmentDirectory:file accountID:d];
    v15 = [v12 URLByAppendingPathComponent:nameCopy isDirectory:0];
  }

  return v15;
}

+ (id)extractSha512Sum:(id)sum
{
  sumCopy = sum;
  pathComponents = [sumCopy pathComponents];
  v5 = pathComponents;
  if (pathComponents && [pathComponents count] >= 3 && (objc_msgSend(v5, "objectAtIndexedSubscript:", objc_msgSend(v5, "count") - 2), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Attachments"), v6, v7))
  {
    uRLByDeletingPathExtension = [sumCopy URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

    if ([lastPathComponent length] == 128)
    {
      [lastPathComponent getCharacters:v17 range:{0, 128}];
      v10 = 0;
      while (1)
      {
        if ((*&v17[v10] - 48) >= 0xAu)
        {
          v11 = *&v17[v10] - 65;
          v12 = v11 > 0x25;
          v13 = (1 << v11) & 0x3F0000003FLL;
          if (v12 || v13 == 0)
          {
            break;
          }
        }

        v10 += 2;
        if (v10 == 256)
        {
          v15 = lastPathComponent;
          goto LABEL_18;
        }
      }
    }

    v15 = 0;
LABEL_18:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)updateAttachmentFile:(id)file accountID:(id)d fileName:(id)name sha512Sum:(id)sum fileURL:(id)l keepSource:(BOOL)source error:(id *)error
{
  sourceCopy = source;
  fileCopy = file;
  dCopy = d;
  sumCopy = sum;
  lCopy = l;
  nameCopy = name;
  v19 = +[NSFileManager defaultManager];
  v47 = fileCopy;
  if (sumCopy)
  {
    v20 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:dCopy];
    pathExtension = [nameCopy pathExtension];

    v22 = [(RDAttachmentFileManager *)self URLForHashedAttachmentFileInAccount:dCopy sha512Sum:sumCopy fileExtension:pathExtension];
    nameCopy = pathExtension;
  }

  else
  {
    v20 = [(RDAttachmentFileManager *)self URLForAttachmentDirectory:fileCopy accountID:dCopy];
    v22 = [v20 URLByAppendingPathComponent:nameCopy isDirectory:0];
  }

  v49 = 0;
  v23 = [v19 rem_createDirectoryIfNecessaryAtURL:v20 error:&v49];
  v24 = v49;
  if ((v23 & 1) == 0)
  {
    v25 = +[REMLogStore container];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v43 = NSStringFromClass(v36);
      v42 = NSStringFromSelector(a2);
      v40 = [NSString stringWithFormat:@"%@.%@", v43, v42];
      localizedDescription = [v24 localizedDescription];
      *buf = 138544130;
      v51 = v40;
      v52 = 2114;
      v53 = v47;
      v54 = 2114;
      v55 = dCopy;
      v56 = 2112;
      v57 = localizedDescription;
      v38 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {attachmentID: %{public}@, accountID: %{public}@, error: %@}", buf, 0x2Au);
    }
  }

  if (([v22 isEqual:lCopy] & 1) == 0)
  {
    v48 = 0;
    v27 = [v22 checkResourceIsReachableAndReturnError:&v48];
    v28 = v48;
    if (v27)
    {
      if (sumCopy)
      {
        v26 = 1;
LABEL_20:

        goto LABEL_21;
      }

      errorCopy2 = error;
      if (![v19 removeItemAtURL:v22 error:error])
      {
        v26 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v29 = +[REMLogStore container];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v41 = NSStringFromClass(v30);
        aSelectora = NSStringFromSelector(a2);
        aSelectora = [NSString stringWithFormat:@"%@.%@", v41, aSelectora];
        localizedDescription2 = [v28 localizedDescription];
        *buf = 138544130;
        v51 = aSelectora;
        v52 = 2114;
        v53 = v47;
        v54 = 2114;
        v55 = dCopy;
        v56 = 2112;
        v57 = localizedDescription2;
        v32 = localizedDescription2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}@] checkResourceIsReachableAndReturnError returned false {attachmentID: %{public}@, accountID: %{public}@, error: %@}", buf, 0x2Au);
      }

      errorCopy2 = error;
    }

    [lCopy startAccessingSecurityScopedResource];
    if (sourceCopy)
    {
      v34 = [v19 copyItemAtURL:lCopy toURL:v22 error:errorCopy2];
    }

    else
    {
      v34 = [v19 moveItemAtURL:lCopy toURL:v22 error:errorCopy2];
    }

    v26 = v34;
    [lCopy stopAccessingSecurityScopedResource];
    goto LABEL_20;
  }

  v26 = 1;
LABEL_21:

  return v26;
}

- (BOOL)purgeFilesForAccountWithAccountID:(id)d error:(id *)error
{
  dCopy = d;
  v8 = +[NSFileManager defaultManager];
  v9 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:dCopy];
  v27 = 0;
  v10 = [v9 checkResourceIsReachableAndReturnError:&v27];
  v11 = v27;
  if (v10)
  {
    v26 = 0;
    v12 = [v8 removeItemAtURL:v9 error:&v26];
    v13 = v26;
    v14 = +[REMLogStore container];
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        code = [v13 code];
        localizedDescription = [v13 localizedDescription];
        *buf = 138544130;
        v29 = dCopy;
        v30 = 2048;
        v31 = code;
        v32 = 2112;
        v33 = localizedDescription;
        v34 = 2114;
        v35 = v9;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error purging account file directory for {accountID: %{public}@, code: %ld, error: %@, url: %{public}@}", buf, 0x2Au);
      }

      if (!error)
      {
        goto LABEL_11;
      }

LABEL_10:
      v22 = v13;
      *error = v13;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = dCopy;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Purged account file directory and its content for {accountID: %{public}@, url: %{public}@}", buf, 0x16u);
    }

    v13 = 0;
    if (error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v16 = +[REMLogStore container];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = [NSString stringWithFormat:@"%@.%@", v18, v19];
      localizedDescription2 = [v11 localizedDescription];
      *buf = 138543874;
      v29 = v20;
      v30 = 2114;
      v31 = dCopy;
      v32 = 2112;
      v33 = localizedDescription2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] checkResourceIsReachableAndReturnError returned false {accountID: %{public}@, error: %@}", buf, 0x20u);
    }

    v13 = v11;
    v12 = 0;
    if (error)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return v12;
}

- (id)purgeAttachmentFilesWithAttachmentIDs:(id)ds accountID:(id)d error:(id *)error
{
  dsCopy = ds;
  dCopy = d;
  v31 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [dsCopy count]);
  v32 = +[NSMutableArray array];
  v33 = +[NSFileManager defaultManager];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = dsCopy;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(RDAttachmentFileManager *)self URLForAttachmentDirectory:v11 accountID:dCopy];
        v38 = 0;
        v14 = [v13 checkResourceIsReachableAndReturnError:&v38];
        v15 = v38;
        if (v14)
        {
          v37 = 0;
          v16 = [v33 removeItemAtURL:v13 error:&v37];
          v17 = v37;
          if (v17)
          {
            [v32 addObject:v17];
            v18 = +[REMLogStore container];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              code = [v17 code];
              localizedDescription = [v17 localizedDescription];
              *buf = 138544386;
              v44 = v11;
              v45 = 2114;
              v46 = dCopy;
              v47 = 2048;
              v48 = code;
              v49 = 2112;
              v50 = localizedDescription;
              v51 = 2114;
              v52 = v13;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error purging attachment directory for {attachmentID: %{public}@, accountID: %{public}@, code: %ld, error: %@, url: %{public}@}", buf, 0x34u);
            }
          }

          else
          {
            v18 = +[REMLogStore container];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v44 = v11;
              v45 = 2114;
              v46 = dCopy;
              v47 = 2114;
              v48 = v13;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Purged attachment directory and its content for {attachmentID: %{public}@, accountID: %{public}@, url: %{public}@}", buf, 0x20u);
            }
          }

          if (v16)
          {
            [v31 addObject:v11];
          }
        }

        else
        {
          v17 = +[REMLogStore container];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = objc_opt_class();
            v30 = NSStringFromClass(v19);
            v28 = NSStringFromSelector(a2);
            v20 = [NSString stringWithFormat:@"%@.%@", v30, v28];
            localizedDescription2 = [v15 localizedDescription];
            *buf = 138544130;
            v44 = v20;
            v45 = 2114;
            v46 = v11;
            v47 = 2114;
            v48 = dCopy;
            v49 = 2112;
            v50 = localizedDescription2;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%{public}@] checkResourceIsReachableAndReturnError failed {attachmentID: %{public}@, accountID: %{public}@, error: %@}", buf, 0x2Au);
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v8);
  }

  v22 = [v32 count];
  if (error && v22 && (+[REMError errorFromErrors:](REMError, "errorFromErrors:", v32), *error = objc_claimAutoreleasedReturnValue(), ![v31 count]))
  {
    v23 = 0;
  }

  else
  {
    v23 = v31;
  }

  return v23;
}

- (id)purgeAttachmentFilesWithSha512SumsAndExtensions:(id)extensions accountID:(id)d error:(id *)error
{
  extensionsCopy = extensions;
  dCopy = d;
  v24 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [extensionsCopy count]);
  v26 = +[NSMutableArray array];
  v28 = +[NSFileManager defaultManager];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = extensionsCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [(RDAttachmentFileManager *)self URLForHashedAttachmentFileInAccount:dCopy sha512SumWithFileExtension:v12];
        v29 = 0;
        v15 = [v28 removeItemAtURL:v14 error:&v29];
        v16 = v29;
        if (v16)
        {
          [v26 addObject:v16];
          v17 = +[REMLogStore container];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            code = [v16 code];
            localizedDescription = [v16 localizedDescription];
            *buf = 138544386;
            v35 = v12;
            v36 = 2114;
            v37 = dCopy;
            v38 = 2048;
            v39 = code;
            v40 = 2112;
            v41 = localizedDescription;
            v42 = 2114;
            v43 = v14;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error purging hashed attachment file for {fileName: %{public}@, accountID: %{public}@, code: %ld, error: %@, url: %{public}@}", buf, 0x34u);
          }
        }

        else
        {
          v17 = +[REMLogStore container];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v35 = v12;
            v36 = 2114;
            v37 = dCopy;
            v38 = 2114;
            v39 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Purged hashed attachment file for {fileName: %{public}@, accountID: %{public}@, url: %{public}@}", buf, 0x20u);
          }
        }

        if (v15)
        {
          [v24 addObject:v12];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v9);
  }

  v18 = [v26 count];
  if (error && v18 && (+[REMError errorFromErrors:](REMError, "errorFromErrors:", v26), *error = objc_claimAutoreleasedReturnValue(), ![v24 count]))
  {
    v19 = 0;
  }

  else
  {
    v19 = v24;
  }

  return v19;
}

- (id)attachmentIDsFromAttachmentDirectoryWithAccountID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = +[NSFileManager defaultManager];
  v46 = dCopy;
  v8 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:dCopy];
  v71 = NSURLIsDirectoryKey;
  v9 = [NSArray arrayWithObjects:&v71 count:1];
  v61 = 0;
  v10 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:0 error:&v61];
  v11 = v61;

  if (v10)
  {
    v40 = v11;
    errorCopy = error;
    v43 = v8;
    v44 = v7;
    v52 = +[NSMutableSet set];
    v12 = +[NSMutableArray array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v41 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v58;
      v53 = v12;
      v54 = v13;
      do
      {
        v17 = 0;
        do
        {
          if (*v58 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v57 + 1) + 8 * v17);
          v55 = 0;
          v56 = 0;
          v19 = [v18 getResourceValue:&v56 forKey:NSURLIsDirectoryKey error:&v55];
          v20 = v56;
          v21 = v55;
          if (v19)
          {
            if ([v20 BOOLValue])
            {
              lastPathComponent = [v18 lastPathComponent];
              if ([lastPathComponent hasPrefix:@"Attachment-"])
              {
                v23 = [lastPathComponent substringFromIndex:{objc_msgSend(@"Attachment-", "length")}];
                v24 = [[NSUUID alloc] initWithUUIDString:v23];

                v13 = v54;
                if (v24)
                {
                  v25 = +[REMLogStore container];
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                  {
                    v29 = objc_opt_class();
                    v51 = NSStringFromClass(v29);
                    v49 = NSStringFromSelector(a2);
                    v30 = [NSString stringWithFormat:@"%@.%@", v51, v49];
                    *buf = 138543874;
                    v63 = v30;
                    v64 = 2114;
                    v65 = v24;
                    v66 = 2114;
                    v67 = v46;
                    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[%{public}@] Found attachment directory {attachmentID: %{public}@, accountID: %{public}@}", buf, 0x20u);

                    v13 = v54;
                  }

                  [v52 addObject:v24];
                  v12 = v53;
                }
              }
            }
          }

          else
          {
            v26 = +[REMLogStore container];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = objc_opt_class();
              v50 = NSStringFromClass(v27);
              v48 = NSStringFromSelector(a2);
              v47 = [NSString stringWithFormat:@"%@.%@", v50, v48];
              localizedDescription = [v21 localizedDescription];
              *buf = 138544130;
              v63 = v47;
              v64 = 2114;
              v65 = v46;
              v66 = 2112;
              v67 = v18;
              v68 = 2112;
              v69 = localizedDescription;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Can't get file URL resource with {accountID: %{public}@, fileURL: %@, error: %@}", buf, 0x2Au);

              v12 = v53;
              v13 = v54;
            }

            [v12 addObject:v21];
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v15);
    }

    if (errorCopy && [v12 count])
    {
      *errorCopy = [REMError errorFromErrors:v12];
    }

    v8 = v43;
    v7 = v44;
    v11 = v40;
    v10 = v41;
  }

  else
  {
    v31 = +[REMLogStore container];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      v37 = [NSString stringWithFormat:@"%@.%@", v35, v36];
      [v11 localizedDescription];
      v39 = v38 = v11;
      *buf = 138543874;
      v63 = v37;
      v64 = 2114;
      v65 = v46;
      v66 = 2112;
      v67 = v39;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Can't get files with {accountID: %{public}@, error: %@}", buf, 0x20u);

      v10 = 0;
      v11 = v38;
    }

    if (error)
    {
      v32 = v11;
      v52 = 0;
      *error = v11;
    }

    else
    {
      v52 = 0;
    }
  }

  return v52;
}

- (id)documentsURLForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  documentsURLProvider = [(RDAttachmentFileManager *)self documentsURLProvider];

  if (!documentsURLProvider)
  {
    NSLog(@"'%s' is unexpectedly nil", "self.documentsURLProvider");
  }

  documentsURLProvider2 = [(RDAttachmentFileManager *)self documentsURLProvider];

  if (documentsURLProvider2)
  {
    documentsURLProvider3 = [(RDAttachmentFileManager *)self documentsURLProvider];
    v9 = [documentsURLProvider3 documentsURLForAccountIdentifier:identifierCopy];
  }

  else
  {
    v10 = +[REMLogStore container];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      v15 = [NSString stringWithFormat:@"%@.%@", v13, v14];
      *buf = 138543618;
      v17 = v15;
      v18 = 2114;
      v19 = identifierCopy;
    }

    v9 = +[RDPaths defaultApplicationDocumentsURL];
  }

  return v9;
}

- (id)URLForHashedAttachmentFileInAccount:(id)account sha512Sum:(id)sum fileExtension:(id)extension
{
  accountCopy = account;
  sumCopy = sum;
  v10 = sumCopy;
  if (extension)
  {
    v11 = [sumCopy stringByAppendingPathExtension:extension];
  }

  else
  {
    v11 = sumCopy;
  }

  v12 = v11;
  v13 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:accountCopy];
  v14 = [v13 URLByAppendingPathComponent:v12 isDirectory:0];

  return v14;
}

- (id)URLForHashedAttachmentFileInAccount:(id)account sha512SumWithFileExtension:(id)extension
{
  extensionCopy = extension;
  v7 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:account];
  v8 = [v7 URLByAppendingPathComponent:extensionCopy isDirectory:0];

  return v8;
}

- (RDAttachmentFileManagerDocumentsURLProvider)documentsURLProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_documentsURLProvider);

  return WeakRetained;
}

@end