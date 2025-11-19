@interface RDAttachmentFileManager
+ (id)extractSha512Sum:(id)a3;
- (BOOL)purgeFilesForAccountWithAccountID:(id)a3 error:(id *)a4;
- (BOOL)updateAttachmentFile:(id)a3 accountID:(id)a4 fileName:(id)a5 sha512Sum:(id)a6 fileURL:(id)a7 keepSource:(BOOL)a8 error:(id *)a9;
- (RDAttachmentFileManager)initWithDocumentsURLProvider:(id)a3;
- (RDAttachmentFileManagerDocumentsURLProvider)documentsURLProvider;
- (id)URLForAccountFileDirectory:(id)a3;
- (id)URLForAttachmentDirectory:(id)a3 accountID:(id)a4;
- (id)URLForAttachmentFile:(id)a3 accountID:(id)a4 fileName:(id)a5 sha512Sum:(id)a6;
- (id)URLForDefaultFilesDirectory;
- (id)URLForHashedAttachmentDirectory:(id)a3;
- (id)URLForHashedAttachmentFileInAccount:(id)a3 sha512Sum:(id)a4 fileExtension:(id)a5;
- (id)URLForHashedAttachmentFileInAccount:(id)a3 sha512SumWithFileExtension:(id)a4;
- (id)attachmentIDsFromAttachmentDirectoryWithAccountID:(id)a3 error:(id *)a4;
- (id)documentsURLForAccountIdentifier:(id)a3;
- (id)purgeAttachmentFilesWithAttachmentIDs:(id)a3 accountID:(id)a4 error:(id *)a5;
- (id)purgeAttachmentFilesWithSha512SumsAndExtensions:(id)a3 accountID:(id)a4 error:(id *)a5;
@end

@implementation RDAttachmentFileManager

- (RDAttachmentFileManager)initWithDocumentsURLProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RDAttachmentFileManager;
  v5 = [(RDAttachmentFileManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentsURLProvider, v4);
  }

  return v6;
}

- (id)URLForDefaultFilesDirectory
{
  v2 = [(RDAttachmentFileManager *)self documentsURLForAccountIdentifier:0];
  v3 = [v2 URLByAppendingPathComponent:@"Files/"];

  return v3;
}

- (id)URLForAccountFileDirectory:(id)a3
{
  v4 = a3;
  v5 = [v4 UUIDString];
  v6 = [(RDAttachmentFileManager *)self documentsURLForAccountIdentifier:v5];

  v7 = [v6 URLByAppendingPathComponent:@"Files/"];
  v8 = [v4 UUIDString];

  v9 = [@"Account-" stringByAppendingString:v8];

  v10 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];

  return v10;
}

- (id)URLForAttachmentDirectory:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:a4];
  v8 = [v6 UUIDString];

  v9 = [@"Attachment-" stringByAppendingString:v8];

  v10 = [v7 URLByAppendingPathComponent:v9 isDirectory:1];

  return v10;
}

- (id)URLForHashedAttachmentDirectory:(id)a3
{
  v3 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:a3];
  v4 = [v3 URLByAppendingPathComponent:@"Attachments" isDirectory:1];

  return v4;
}

- (id)URLForAttachmentFile:(id)a3 accountID:(id)a4 fileName:(id)a5 sha512Sum:(id)a6
{
  v10 = a6;
  v11 = a5;
  if (v10)
  {
    v12 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:a4];
    v13 = [v11 pathExtension];

    v14 = [v10 stringByAppendingPathExtension:v13];
    v15 = [v12 URLByAppendingPathComponent:v14 isDirectory:0];

    v11 = v13;
  }

  else
  {
    v12 = [(RDAttachmentFileManager *)self URLForAttachmentDirectory:a3 accountID:a4];
    v15 = [v12 URLByAppendingPathComponent:v11 isDirectory:0];
  }

  return v15;
}

+ (id)extractSha512Sum:(id)a3
{
  v3 = a3;
  v4 = [v3 pathComponents];
  v5 = v4;
  if (v4 && [v4 count] >= 3 && (objc_msgSend(v5, "objectAtIndexedSubscript:", objc_msgSend(v5, "count") - 2), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Attachments"), v6, v7))
  {
    v8 = [v3 URLByDeletingPathExtension];
    v9 = [v8 lastPathComponent];

    if ([v9 length] == 128)
    {
      [v9 getCharacters:v17 range:{0, 128}];
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
          v15 = v9;
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

- (BOOL)updateAttachmentFile:(id)a3 accountID:(id)a4 fileName:(id)a5 sha512Sum:(id)a6 fileURL:(id)a7 keepSource:(BOOL)a8 error:(id *)a9
{
  v46 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a5;
  v19 = +[NSFileManager defaultManager];
  v47 = v14;
  if (v16)
  {
    v20 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:v15];
    v21 = [v18 pathExtension];

    v22 = [(RDAttachmentFileManager *)self URLForHashedAttachmentFileInAccount:v15 sha512Sum:v16 fileExtension:v21];
    v18 = v21;
  }

  else
  {
    v20 = [(RDAttachmentFileManager *)self URLForAttachmentDirectory:v14 accountID:v15];
    v22 = [v20 URLByAppendingPathComponent:v18 isDirectory:0];
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
      v37 = [v24 localizedDescription];
      *buf = 138544130;
      v51 = v40;
      v52 = 2114;
      v53 = v47;
      v54 = 2114;
      v55 = v15;
      v56 = 2112;
      v57 = v37;
      v38 = v37;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {attachmentID: %{public}@, accountID: %{public}@, error: %@}", buf, 0x2Au);
    }
  }

  if (([v22 isEqual:v17] & 1) == 0)
  {
    v48 = 0;
    v27 = [v22 checkResourceIsReachableAndReturnError:&v48];
    v28 = v48;
    if (v27)
    {
      if (v16)
      {
        v26 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v33 = a9;
      if (![v19 removeItemAtURL:v22 error:a9])
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
        v39 = [NSString stringWithFormat:@"%@.%@", v41, aSelectora];
        v31 = [v28 localizedDescription];
        *buf = 138544130;
        v51 = v39;
        v52 = 2114;
        v53 = v47;
        v54 = 2114;
        v55 = v15;
        v56 = 2112;
        v57 = v31;
        v32 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[%{public}@] checkResourceIsReachableAndReturnError returned false {attachmentID: %{public}@, accountID: %{public}@, error: %@}", buf, 0x2Au);
      }

      v33 = a9;
    }

    [v17 startAccessingSecurityScopedResource];
    if (v46)
    {
      v34 = [v19 copyItemAtURL:v17 toURL:v22 error:v33];
    }

    else
    {
      v34 = [v19 moveItemAtURL:v17 toURL:v22 error:v33];
    }

    v26 = v34;
    [v17 stopAccessingSecurityScopedResource];
    goto LABEL_20;
  }

  v26 = 1;
LABEL_21:

  return v26;
}

- (BOOL)purgeFilesForAccountWithAccountID:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = +[NSFileManager defaultManager];
  v9 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:v7];
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
        v24 = [v13 code];
        v25 = [v13 localizedDescription];
        *buf = 138544130;
        v29 = v7;
        v30 = 2048;
        v31 = v24;
        v32 = 2112;
        v33 = v25;
        v34 = 2114;
        v35 = v9;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error purging account file directory for {accountID: %{public}@, code: %ld, error: %@, url: %{public}@}", buf, 0x2Au);
      }

      if (!a4)
      {
        goto LABEL_11;
      }

LABEL_10:
      v22 = v13;
      *a4 = v13;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v7;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Purged account file directory and its content for {accountID: %{public}@, url: %{public}@}", buf, 0x16u);
    }

    v13 = 0;
    if (a4)
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
      v21 = [v11 localizedDescription];
      *buf = 138543874;
      v29 = v20;
      v30 = 2114;
      v31 = v7;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] checkResourceIsReachableAndReturnError returned false {accountID: %{public}@, error: %@}", buf, 0x20u);
    }

    v13 = v11;
    v12 = 0;
    if (a4)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return v12;
}

- (id)purgeAttachmentFilesWithAttachmentIDs:(id)a3 accountID:(id)a4 error:(id *)a5
{
  v6 = a3;
  v36 = a4;
  v31 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v32 = +[NSMutableArray array];
  v33 = +[NSFileManager defaultManager];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
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
        v13 = [(RDAttachmentFileManager *)self URLForAttachmentDirectory:v11 accountID:v36];
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
              v27 = [v17 code];
              v29 = [v17 localizedDescription];
              *buf = 138544386;
              v44 = v11;
              v45 = 2114;
              v46 = v36;
              v47 = 2048;
              v48 = v27;
              v49 = 2112;
              v50 = v29;
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
              v46 = v36;
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
            v21 = [v15 localizedDescription];
            *buf = 138544130;
            v44 = v20;
            v45 = 2114;
            v46 = v11;
            v47 = 2114;
            v48 = v36;
            v49 = 2112;
            v50 = v21;
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
  if (a5 && v22 && (+[REMError errorFromErrors:](REMError, "errorFromErrors:", v32), *a5 = objc_claimAutoreleasedReturnValue(), ![v31 count]))
  {
    v23 = 0;
  }

  else
  {
    v23 = v31;
  }

  return v23;
}

- (id)purgeAttachmentFilesWithSha512SumsAndExtensions:(id)a3 accountID:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v24 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v26 = +[NSMutableArray array];
  v28 = +[NSFileManager defaultManager];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
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
        v14 = [(RDAttachmentFileManager *)self URLForHashedAttachmentFileInAccount:v7 sha512SumWithFileExtension:v12];
        v29 = 0;
        v15 = [v28 removeItemAtURL:v14 error:&v29];
        v16 = v29;
        if (v16)
        {
          [v26 addObject:v16];
          v17 = +[REMLogStore container];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v22 = [v16 code];
            v23 = [v16 localizedDescription];
            *buf = 138544386;
            v35 = v12;
            v36 = 2114;
            v37 = v7;
            v38 = 2048;
            v39 = v22;
            v40 = 2112;
            v41 = v23;
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
            v37 = v7;
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
  if (a5 && v18 && (+[REMError errorFromErrors:](REMError, "errorFromErrors:", v26), *a5 = objc_claimAutoreleasedReturnValue(), ![v24 count]))
  {
    v19 = 0;
  }

  else
  {
    v19 = v24;
  }

  return v19;
}

- (id)attachmentIDsFromAttachmentDirectoryWithAccountID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v46 = v6;
  v8 = [(RDAttachmentFileManager *)self URLForAccountFileDirectory:v6];
  v71 = NSURLIsDirectoryKey;
  v9 = [NSArray arrayWithObjects:&v71 count:1];
  v61 = 0;
  v10 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:0 error:&v61];
  v11 = v61;

  if (v10)
  {
    v40 = v11;
    v42 = a4;
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
              v22 = [v18 lastPathComponent];
              if ([v22 hasPrefix:@"Attachment-"])
              {
                v23 = [v22 substringFromIndex:{objc_msgSend(@"Attachment-", "length")}];
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
              v28 = [v21 localizedDescription];
              *buf = 138544130;
              v63 = v47;
              v64 = 2114;
              v65 = v46;
              v66 = 2112;
              v67 = v18;
              v68 = 2112;
              v69 = v28;
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

    if (v42 && [v12 count])
    {
      *v42 = [REMError errorFromErrors:v12];
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

    if (a4)
    {
      v32 = v11;
      v52 = 0;
      *a4 = v11;
    }

    else
    {
      v52 = 0;
    }
  }

  return v52;
}

- (id)documentsURLForAccountIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(RDAttachmentFileManager *)self documentsURLProvider];

  if (!v6)
  {
    NSLog(@"'%s' is unexpectedly nil", "self.documentsURLProvider");
  }

  v7 = [(RDAttachmentFileManager *)self documentsURLProvider];

  if (v7)
  {
    v8 = [(RDAttachmentFileManager *)self documentsURLProvider];
    v9 = [v8 documentsURLForAccountIdentifier:v5];
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
      v19 = v5;
    }

    v9 = +[RDPaths defaultApplicationDocumentsURL];
  }

  return v9;
}

- (id)URLForHashedAttachmentFileInAccount:(id)a3 sha512Sum:(id)a4 fileExtension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    v11 = [v9 stringByAppendingPathExtension:a5];
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  v13 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:v8];
  v14 = [v13 URLByAppendingPathComponent:v12 isDirectory:0];

  return v14;
}

- (id)URLForHashedAttachmentFileInAccount:(id)a3 sha512SumWithFileExtension:(id)a4
{
  v6 = a4;
  v7 = [(RDAttachmentFileManager *)self URLForHashedAttachmentDirectory:a3];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

  return v8;
}

- (RDAttachmentFileManagerDocumentsURLProvider)documentsURLProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_documentsURLProvider);

  return WeakRetained;
}

@end