@interface MSDHubSession
- (void)authenticate:(id)authenticate forTask:(id)task completion:(id)completion;
@end

@implementation MSDHubSession

- (void)authenticate:(id)authenticate forTask:(id)task completion:(id)completion
{
  authenticateCopy = authenticate;
  taskCopy = task;
  completionCopy = completion;
  info = [taskCopy info];
  endpoint = [info endpoint];

  v12 = [endpoint isEqualToString:@"/Register"];
  v13 = off_100168E28;
  if (!v12)
  {
    v13 = off_100168E30;
  }

  v14 = objc_alloc_init(*v13);
  protectionSpace = [authenticateCopy protectionSpace];
  v16 = [v14 trustServer:objc_msgSend(protectionSpace isRedirect:{"serverTrust"), objc_msgSend(taskCopy, "redirected")}];

  if (v16)
  {
    protectionSpace2 = [authenticateCopy protectionSpace];
    v18 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace2 serverTrust]);

    completionCopy[2](completionCopy, 0, v18);
  }

  else
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000CC3FC(taskCopy, v19);
    }

    completionCopy[2](completionCopy, 2, 0);
  }
}

@end