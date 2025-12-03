@interface NFTagAppProcessorHomeKitAccessory
- (NFTagAppProcessorHomeKitAccessory)init;
- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing;
@end

@implementation NFTagAppProcessorHomeKitAccessory

- (NFTagAppProcessorHomeKitAccessory)init
{
  v9.receiver = self;
  v9.super_class = NFTagAppProcessorHomeKitAccessory;
  v2 = [(NFTagAppProcessorHomeKitAccessory *)&v9 init];
  if (v2)
  {
    v3 = [NFXPCEventPublisher alloc];
    v4 = dispatch_get_global_queue(25, 0);
    v5 = [v3 initWithStreamName:@"com.apple.nfcd.homekit.proxcard" queue:v4];
    eventPublisher = v2->_eventPublisher;
    v2->_eventPublisher = v5;

    v7 = v2;
  }

  return v2;
}

- (id)processNDEFMesssage:(id)messsage outputMessage:(id *)message tag:(id)tag stopProcessing:(BOOL *)processing
{
  tagCopy = tag;
  processingCopy = processing;
  *processing = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  records = [messsage records];
  v10 = [records countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    v13 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v41 = *v53;
    v42 = tagCopy;
    v45 = records;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(records);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        if ([v15 isURIRecord])
        {
          decode = [v15 decode];
          v16 = [v13[476] componentsWithString:?];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v17 = [&off_100338FD0 countByEnumeratingWithState:&v48 objects:v68 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v49;
            while (2)
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v49 != v19)
                {
                  objc_enumerationMutation(&off_100338FD0);
                }

                if (v16)
                {
                  v21 = *(*(&v48 + 1) + 8 * j);
                  scheme = [v16 scheme];
                  lowercaseString = [scheme lowercaseString];
                  LODWORD(v21) = [lowercaseString isEqualToString:v21];

                  if (v21)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    Logger = NFLogGetLogger();
                    tagCopy = v42;
                    if (Logger)
                    {
                      v25 = Logger;
                      Class = object_getClass(self);
                      isMetaClass = class_isMetaClass(Class);
                      ClassName = object_getClassName(self);
                      Name = sel_getName(a2);
                      tagID = [v42 tagID];
                      v31 = 45;
                      if (isMetaClass)
                      {
                        v31 = 43;
                      }

                      v25(6, "%c[%{public}s %{public}s]:%i Posting HomeKit Tag notification with UID : %@ for urlText = %@", v31, ClassName, Name, 59, tagID, decode);
                    }

                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    v32 = NFSharedLogGetLogger();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      v33 = object_getClass(self);
                      if (class_isMetaClass(v33))
                      {
                        v34 = 43;
                      }

                      else
                      {
                        v34 = 45;
                      }

                      v35 = object_getClassName(self);
                      v36 = sel_getName(a2);
                      tagID2 = [v42 tagID];
                      *buf = 67110402;
                      v57 = v34;
                      v58 = 2082;
                      v59 = v35;
                      v60 = 2082;
                      v61 = v36;
                      v62 = 1024;
                      v63 = 59;
                      v64 = 2112;
                      v65 = tagID2;
                      v66 = 2112;
                      v67 = decode;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Posting HomeKit Tag notification with UID : %@ for urlText = %@", buf, 0x36u);
                    }

                    v38 = NFSharedSignpostLog();
                    if (os_signpost_enabled(v38))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", &unk_1002E8B7A, buf, 2u);
                    }

                    v39 = +[NSDistributedNotificationCenter defaultCenter];
                    [v39 postNotificationName:@"com.apple.nfcd.homekit.proxcard" object:decode userInfo:0 options:3];

                    [(NFXPCEventPublisher *)self->_eventPublisher sendXpcNotificationEventWithString:decode];
                    *processingCopy = 1;

                    records = v45;
                    goto LABEL_32;
                  }
                }
              }

              v18 = [&off_100338FD0 countByEnumeratingWithState:&v48 objects:v68 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          records = v45;
          v12 = v41;
          v13 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        }
      }

      v11 = [records countByEnumeratingWithState:&v52 objects:v69 count:16];
      tagCopy = v42;
    }

    while (v11);
  }

LABEL_32:

  return 0;
}

@end