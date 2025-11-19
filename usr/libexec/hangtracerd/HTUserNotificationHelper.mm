@interface HTUserNotificationHelper
+ (id)sharedHelperWithCategories:(id)a3;
- (void)associatePrefix:(id)a3 withHandler:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation HTUserNotificationHelper

+ (id)sharedHelperWithCategories:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = qword_100067D38;
  if (!qword_100067D38)
  {
    if (!v3)
    {
      v6 = sub_100003824();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10003487C(v6);
      }

      goto LABEL_12;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002B23C;
    block[3] = &unk_100054D38;
    v10 = v3;
    if (qword_100067D40 != -1)
    {
      dispatch_once(&qword_100067D40, block);
    }

    v5 = qword_100067D38;
LABEL_9:
    v7 = v5;
    goto LABEL_13;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = sub_100003824();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000347F8(v6);
  }

LABEL_12:

  v7 = 0;
LABEL_13:

  return v7;
}

- (void)associatePrefix:(id)a3 withHandler:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v8 = objc_retainBlock(a4);
    v7 = [(HTUserNotificationHelper *)self responseHandlers];
    [v7 setObject:v8 forKeyedSubscript:v6];
  }
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v28 = self;
  v29 = a5;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [(HTUserNotificationHelper *)self responseHandlers];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      v14 = [v7 notification];
      v15 = [v14 request];
      v16 = [v15 identifier];
      v17 = [v16 hasPrefix:v13];

      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = [(HTUserNotificationHelper *)v28 responseHandlers];
    v19 = [v18 objectForKeyedSubscript:v13];

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = sub_100003824();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v7 notification];
      v22 = [v21 request];
      v23 = [v22 identifier];
      v24 = [v7 actionIdentifier];
      *buf = 138412546;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ResponseHandler invoked, request %@, action %@", buf, 0x16u);
    }

    (*(v19 + 16))(v19, v7);
  }

  else
  {
LABEL_9:

LABEL_14:
    v19 = sub_100003824();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = [v7 notification];
      v26 = [v25 request];
      v27 = [v26 identifier];
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Request identifier %@ using default handler", buf, 0xCu);
    }
  }

  if (v29)
  {
    v29[2](v29);
  }
}

@end