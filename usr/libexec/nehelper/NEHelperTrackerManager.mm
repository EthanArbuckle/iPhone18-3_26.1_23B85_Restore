@interface NEHelperTrackerManager
- (NEHelperTrackerManager)initWithFirstMessage:(id)message;
- (void)handleMessage:(id)message;
@end

@implementation NEHelperTrackerManager

- (void)handleMessage:(id)message
{
  messageCopy = message;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ processing Tracker Manager request", buf, 0xCu);
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  if (reply)
  {
    uint64 = xpc_dictionary_get_uint64(messageCopy, "tracker-command");
    if (uint64 != 2)
    {
      if (uint64 == 1)
      {
        v8 = xpc_dictionary_get_value(messageCopy, "test-domains");
        os_unfair_lock_lock(&stru_100046AB8);
        if (!v8 && qword_100046990 || (sub_100003144(NEHelperTrackerManager, v8, 0), qword_100046990))
        {
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            count = xpc_array_get_count(qword_100046990);
            *buf = 138412546;
            selfCopy2 = self;
            v62 = 2048;
            v63 = count;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ sending back domain list of %zu items", buf, 0x16u);
          }

          xpc_dictionary_set_int64(reply, "result-code", 0);
          xpc_dictionary_set_value(reply, "domain-dictionary", qword_100046988);
          xpc_dictionary_set_value(reply, "sorted-domains", qword_100046990);
          xpc_dictionary_set_int64(reply, "unique-prefix-count", qword_100046AA8);
          v11 = qword_100046AB0;
          v12 = "total-byte-count";
          v13 = reply;
        }

        else
        {
          v12 = "result-code";
          v13 = reply;
          v11 = 2;
        }

        xpc_dictionary_set_int64(v13, v12, v11);
        os_unfair_lock_unlock(&stru_100046AB8);

        goto LABEL_54;
      }

LABEL_30:
      xpc_dictionary_set_int64(reply, "result-code", 22);
LABEL_54:
      v42 = xpc_dictionary_get_remote_connection(messageCopy);
      xpc_connection_send_message(v42, reply);

      goto LABEL_55;
    }

    string = xpc_dictionary_get_string(messageCopy, "bundle-id");
    if (!string)
    {
      goto LABEL_30;
    }

    v15 = string;
    v16 = [NSString stringWithUTF8String:string];
    selfCopy3 = self;
    if (!self)
    {
      v34 = 0;
      goto LABEL_41;
    }

    v17 = [[_SWCServiceSpecifier alloc] initWithServiceType:0 applicationIdentifier:v16 domain:0];
    v18 = objc_alloc_init(NSMutableArray);
    v58 = 0;
    v19 = [_SWCServiceDetails serviceDetailsWithServiceSpecifier:v17 error:&v58];
    v20 = v58;
    v49 = v20;
    if (v19)
    {
      v47 = v17;
      v48 = v16;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v46 = v19;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v22)
      {
        v23 = v22;
        v43 = v15;
        v44 = messageCopy;
        v24 = 0;
        v25 = *v55;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v55 != v25)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v54 + 1) + 8 * i);
            if ([v27 isApproved])
            {
              serviceSpecifier = [v27 serviceSpecifier];
              domain = [serviceSpecifier domain];
              lowercaseString = [domain lowercaseString];

              if (lowercaseString && ([v18 containsObject:lowercaseString] & 1) == 0)
              {
                [v18 addObject:lowercaseString];
              }
            }

            else
            {
              v24 = 1;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v54 objects:buf count:16];
        }

        while (v23);
        v31 = v24 ^ 1;
        v15 = v43;
        messageCopy = v44;
      }

      else
      {
        v31 = 1;
      }

      [v18 sortUsingSelector:NSSelectorFromString(@"compare:")];
      v17 = v47;
      v16 = v48;
      v19 = v46;
      if (![v18 count] && (v31 & 1) == 0)
      {
        v34 = 0;
LABEL_40:

LABEL_41:
        v35 = ne_log_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          selfCopy2 = selfCopy3;
          v62 = 2080;
          v63 = v15;
          v64 = 2112;
          v65 = v34;
          _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%@ sending back approved domain list for %s: %@", buf, 0x20u);
        }

        if (v34)
        {
          v36 = xpc_array_create(0, 0);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v37 = v34;
          v38 = [v37 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v51;
            do
            {
              for (j = 0; j != v39; j = j + 1)
              {
                if (*v51 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                xpc_array_set_string(v36, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v50 + 1) + 8 * j) UTF8String]);
              }

              v39 = [v37 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v39);
          }
        }

        else
        {
          v36 = 0;
        }

        xpc_dictionary_set_int64(reply, "result-code", 0);
        xpc_dictionary_set_value(reply, "sorted-domains", v36);

        goto LABEL_54;
      }
    }

    else
    {
      v32 = v20;
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy2 = v32;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error getting info: %@\n", buf, 0xCu);
      }

      [v18 count];
    }

    v34 = v18;
    goto LABEL_40;
  }

LABEL_55:
}

- (NEHelperTrackerManager)initWithFirstMessage:(id)message
{
  messageCopy = message;
  objc_opt_self();
  if (qword_100046998 != -1)
  {
    dispatch_once(&qword_100046998, &stru_10003CC88);
  }

  v13.receiver = self;
  v13.super_class = NEHelperTrackerManager;
  v5 = [(NEHelperTrackerManager *)&v13 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_remote_connection(messageCopy);
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      *buf = 138412290;
      v15 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ Created new NEHelperTrackerManager", buf, 0xCu);
    }

    v11 = v5;
  }

  return v5;
}

@end