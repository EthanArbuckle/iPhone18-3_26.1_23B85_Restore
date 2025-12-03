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
    remObjectID = [(REMCDObject *)self remObjectID];
    *buf = 138543618;
    v22 = v8;
    v23 = 2114;
    v24 = remObjectID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] prepareForDeletion {attachmentID: %{public}@}", buf, 0x16u);
  }

  storeControllerManagedObjectContext = [(REMCDObject *)self storeControllerManagedObjectContext];
  if (storeControllerManagedObjectContext)
  {
    identifier = [(REMCDFileAttachment *)self identifier];
    if (identifier)
    {
      account = [(REMCDFileAttachment *)self account];
      identifier2 = [account identifier];

      if (identifier2)
      {
        sha512Sum = [(REMCDFileAttachment *)self sha512Sum];

        if (sha512Sum)
        {
          sha512Sum2 = [(REMCDFileAttachment *)self sha512Sum];
          fileName = [(REMCDFileAttachment *)self fileName];
          pathExtension = [fileName pathExtension];

          [storeControllerManagedObjectContext proposePurgingFileAttachmentWithSha512Sum:sha512Sum2 fileExtension:pathExtension account:identifier2];
        }

        else
        {
          fileAttachmentIdentifiersToPurgeByAccountIdentifier = [storeControllerManagedObjectContext fileAttachmentIdentifiersToPurgeByAccountIdentifier];
          sha512Sum2 = [fileAttachmentIdentifiersToPurgeByAccountIdentifier objectForKey:identifier2];

          if (!sha512Sum2)
          {
            sha512Sum2 = +[NSMutableSet set];
            fileAttachmentIdentifiersToPurgeByAccountIdentifier2 = [storeControllerManagedObjectContext fileAttachmentIdentifiersToPurgeByAccountIdentifier];
            [fileAttachmentIdentifiersToPurgeByAccountIdentifier2 setObject:sha512Sum2 forKey:identifier2];
          }

          [sha512Sum2 addObject:identifier];
        }
      }

      else
      {
        sha512Sum2 = +[REMLogStore write];
        if (os_log_type_enabled(sha512Sum2, OS_LOG_TYPE_ERROR))
        {
          sub_10076A808();
        }
      }
    }

    else
    {
      identifier2 = +[REMLogStore write];
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_ERROR))
      {
        sub_10076A8F0();
      }
    }
  }

  else
  {
    identifier = +[REMLogStore write];
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      sub_10076A9D8();
    }
  }
}

@end