@interface NFTagAppProcessorHomeKitAccessory
- (NFTagAppProcessorHomeKitAccessory)init;
- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6;
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

- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6
{
  v8 = a5;
  v44 = a6;
  *a6 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = [a3 records];
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    v13 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v41 = *v53;
    v42 = v8;
    v45 = v9;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        if ([v15 isURIRecord])
        {
          v47 = [v15 decode];
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
                  v22 = [v16 scheme];
                  v23 = [v22 lowercaseString];
                  LODWORD(v21) = [v23 isEqualToString:v21];

                  if (v21)
                  {
                    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                    Logger = NFLogGetLogger();
                    v8 = v42;
                    if (Logger)
                    {
                      v25 = Logger;
                      Class = object_getClass(self);
                      isMetaClass = class_isMetaClass(Class);
                      ClassName = object_getClassName(self);
                      Name = sel_getName(a2);
                      v30 = [v42 tagID];
                      v31 = 45;
                      if (isMetaClass)
                      {
                        v31 = 43;
                      }

                      v25(6, "%c[%{public}s %{public}s]:%i Posting HomeKit Tag notification with UID : %@ for urlText = %@", v31, ClassName, Name, 59, v30, v47);
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
                      v37 = [v42 tagID];
                      *buf = 67110402;
                      v57 = v34;
                      v58 = 2082;
                      v59 = v35;
                      v60 = 2082;
                      v61 = v36;
                      v62 = 1024;
                      v63 = 59;
                      v64 = 2112;
                      v65 = v37;
                      v66 = 2112;
                      v67 = v47;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Posting HomeKit Tag notification with UID : %@ for urlText = %@", buf, 0x36u);
                    }

                    v38 = NFSharedSignpostLog();
                    if (os_signpost_enabled(v38))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", &unk_1002E8B7A, buf, 2u);
                    }

                    v39 = +[NSDistributedNotificationCenter defaultCenter];
                    [v39 postNotificationName:@"com.apple.nfcd.homekit.proxcard" object:v47 userInfo:0 options:3];

                    [(NFXPCEventPublisher *)self->_eventPublisher sendXpcNotificationEventWithString:v47];
                    *v44 = 1;

                    v9 = v45;
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

          v9 = v45;
          v12 = v41;
          v13 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v69 count:16];
      v8 = v42;
    }

    while (v11);
  }

LABEL_32:

  return 0;
}

@end