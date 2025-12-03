@interface HTUserNotificationHelper
+ (id)sharedHelperWithCategories:(id)categories;
- (void)associatePrefix:(id)prefix withHandler:(id)handler;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation HTUserNotificationHelper

+ (id)sharedHelperWithCategories:(id)categories
{
  categoriesCopy = categories;
  v4 = categoriesCopy;
  v5 = qword_100067D38;
  if (!qword_100067D38)
  {
    if (!categoriesCopy)
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
    v10 = categoriesCopy;
    if (qword_100067D40 != -1)
    {
      dispatch_once(&qword_100067D40, block);
    }

    v5 = qword_100067D38;
LABEL_9:
    v7 = v5;
    goto LABEL_13;
  }

  if (!categoriesCopy)
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

- (void)associatePrefix:(id)prefix withHandler:(id)handler
{
  if (handler)
  {
    prefixCopy = prefix;
    v8 = objc_retainBlock(handler);
    responseHandlers = [(HTUserNotificationHelper *)self responseHandlers];
    [responseHandlers setObject:v8 forKeyedSubscript:prefixCopy];
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  selfCopy = self;
  handlerCopy = handler;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  responseHandlers = [(HTUserNotificationHelper *)self responseHandlers];
  v9 = [responseHandlers countByEnumeratingWithState:&v30 objects:v38 count:16];
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
        objc_enumerationMutation(responseHandlers);
      }

      v13 = *(*(&v30 + 1) + 8 * v12);
      notification = [responseCopy notification];
      request = [notification request];
      identifier = [request identifier];
      v17 = [identifier hasPrefix:v13];

      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [responseHandlers countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    responseHandlers2 = [(HTUserNotificationHelper *)selfCopy responseHandlers];
    v19 = [responseHandlers2 objectForKeyedSubscript:v13];

    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = sub_100003824();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      notification2 = [responseCopy notification];
      request2 = [notification2 request];
      identifier2 = [request2 identifier];
      actionIdentifier = [responseCopy actionIdentifier];
      *buf = 138412546;
      v35 = identifier2;
      v36 = 2112;
      v37 = actionIdentifier;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "ResponseHandler invoked, request %@, action %@", buf, 0x16u);
    }

    (*(v19 + 16))(v19, responseCopy);
  }

  else
  {
LABEL_9:

LABEL_14:
    v19 = sub_100003824();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      notification3 = [responseCopy notification];
      request3 = [notification3 request];
      identifier3 = [request3 identifier];
      *buf = 138412290;
      v35 = identifier3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Request identifier %@ using default handler", buf, 0xCu);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

@end