@interface SDShareSheetRecipientServer
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)activate;
- (void)invalidate;
- (void)requestMessagesRecipientInfoForSessionID:(id)d completionHandler:(id)handler;
- (void)requestRecipientsForSessionID:(id)d completionHandler:(id)handler;
@end

@implementation SDShareSheetRecipientServer

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SDShareSheetRecipientServer;
  [(SDXPCDaemon *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SDShareSheetRecipientServer;
  [(SDXPCDaemon *)&v2 _invalidate];
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [connectionCopy valueForEntitlement:@"com.apple.sharesheet.recipients"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Allowing connection from pid %d to sharingd recipient server", &v8, 8u);
    }

    v6 = 1;
  }

  else
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "process %d tried to connect to the sharingd recipient server, but it was not entitled!", &v8, 8u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)requestMessagesRecipientInfoForSessionID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v7 = +[SDShareSheetSlotManager sharedManager];
  [v7 requestMessagesRecipientInfoForSessionID:dCopy completionHandler:handlerCopy];
}

- (void)requestRecipientsForSessionID:(id)d completionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    dCopy = d;
    v9 = +[SDShareSheetSlotManager sharedManager];
    v8 = [v9 recipientHandlesForSessionID:dCopy];

    (*(handler + 2))(handlerCopy, v8);
  }
}

@end