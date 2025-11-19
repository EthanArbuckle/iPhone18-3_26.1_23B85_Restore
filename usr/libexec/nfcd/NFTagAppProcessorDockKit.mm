@interface NFTagAppProcessorDockKit
- (NFTagAppProcessorDockKit)init;
- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6;
@end

@implementation NFTagAppProcessorDockKit

- (NFTagAppProcessorDockKit)init
{
  v9.receiver = self;
  v9.super_class = NFTagAppProcessorDockKit;
  v2 = [(NFTagAppProcessorDockKit *)&v9 init];
  if (v2)
  {
    v3 = [NFXPCEventPublisher alloc];
    v4 = dispatch_get_global_queue(25, 0);
    v5 = [v3 initWithStreamName:@"com.apple.dockaccessoryd.pairsetup" queue:v4];
    eventPublisher = v2->_eventPublisher;
    v2->_eventPublisher = v5;

    v7 = v2;
  }

  return v2;
}

- (id)processNDEFMesssage:(id)a3 outputMessage:(id *)a4 tag:(id)a5 stopProcessing:(BOOL *)a6
{
  v7 = a3;
  v40 = a6;
  *a6 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v42 = v7;
  v8 = [v7 records];
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        if ([v13 isURIRecord])
        {
          v14 = [v13 decode];
          v15 = [NSURLComponents componentsWithString:v14];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 scheme];
            v18 = [v17 lowercaseString];
            v19 = [v18 isEqualToString:@"x-dk"];

            if (v19)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              Logger = NFLogGetLogger();
              if (Logger)
              {
                v21 = Logger;
                Class = object_getClass(self);
                isMetaClass = class_isMetaClass(Class);
                ClassName = object_getClassName(self);
                Name = sel_getName(a2);
                v26 = [v16 string];
                v27 = 45;
                if (isMetaClass)
                {
                  v27 = 43;
                }

                v21(6, "%c[%{public}s %{public}s]:%i Found DockKit notification with URL: %@, Orig msg: %@", v27, ClassName, Name, 55, v26, v42);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v28 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = object_getClass(self);
                if (class_isMetaClass(v29))
                {
                  v30 = 43;
                }

                else
                {
                  v30 = 45;
                }

                v31 = object_getClassName(self);
                v32 = sel_getName(a2);
                v33 = [v16 string];
                *buf = 67110402;
                v50 = v30;
                v51 = 2082;
                v52 = v31;
                v53 = 2082;
                v54 = v32;
                v55 = 1024;
                v56 = 55;
                v57 = 2112;
                v58 = v33;
                v59 = 2112;
                v60 = v42;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Found DockKit notification with URL: %@, Orig msg: %@", buf, 0x36u);
              }

              v34 = NFSharedSignpostLog();
              if (os_signpost_enabled(v34))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", &unk_1002E8B7A, buf, 2u);
              }

              eventPublisher = self->_eventPublisher;
              v47 = @"url";
              v36 = [v16 string];
              v48 = v36;
              v37 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              [(NFXPCEventPublisher *)eventPublisher sendXpcNotificationEventWithDictionary:v37];

              *v40 = 1;
              goto LABEL_25;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v43 objects:v61 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  return 0;
}

@end