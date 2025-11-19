@interface REMCDFileAttachment
- (void)prepareForDeletion;
@end

@implementation REMCDFileAttachment

- (void)prepareForDeletion
{
  v20.receiver = self;
  v20.super_class = REMCDFileAttachment;
  [(REMCDObject *)&v20 prepareForDeletion];
  v4 = +[REMLogStore write];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = [NSString stringWithFormat:@"%@.%@", v6, v7];
    v9 = [(REMCDObject *)self remObjectID];
    *buf = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] prepareForDeletion {attachmentID: %{public}@}", buf, 0x16u);
  }

  v10 = [(REMCDObject *)self storeControllerManagedObjectContext];
  if (v10)
  {
    v11 = [(REMCDFileAttachment *)self identifier];
    if (v11)
    {
      v12 = [(REMCDFileAttachment *)self account];
      v13 = [v12 identifier];

      if (v13)
      {
        v14 = [(REMCDFileAttachment *)self sha512Sum];

        if (v14)
        {
          v15 = [(REMCDFileAttachment *)self sha512Sum];
          v16 = [(REMCDFileAttachment *)self fileName];
          v17 = [v16 pathExtension];

          [v10 proposePurgingFileAttachmentWithSha512Sum:v15 fileExtension:v17 account:v13];
        }

        else
        {
          v18 = [v10 fileAttachmentIdentifiersToPurgeByAccountIdentifier];
          v15 = [v18 objectForKey:v13];

          if (!v15)
          {
            v15 = +[NSMutableSet set];
            v19 = [v10 fileAttachmentIdentifiersToPurgeByAccountIdentifier];
            [v19 setObject:v15 forKey:v13];
          }

          [v15 addObject:v11];
        }
      }

      else
      {
        v15 = +[REMLogStore write];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10076A808();
        }
      }
    }

    else
    {
      v13 = +[REMLogStore write];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10076A8F0();
      }
    }
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10076A9D8();
    }
  }
}

@end