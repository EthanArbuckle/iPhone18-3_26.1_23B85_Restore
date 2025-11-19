@interface SDShareSheetRecipientServer
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (void)activate;
- (void)invalidate;
- (void)requestMessagesRecipientInfoForSessionID:(id)a3 completionHandler:(id)a4;
- (void)requestRecipientsForSessionID:(id)a3 completionHandler:(id)a4;
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

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.sharesheet.recipients"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 BOOLValue])
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = [v3 processIdentifier];
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
      v9 = [v3 processIdentifier];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "process %d tried to connect to the sharingd recipient server, but it was not entitled!", &v8, 8u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)requestMessagesRecipientInfoForSessionID:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SDShareSheetSlotManager sharedManager];
  [v7 requestMessagesRecipientInfoForSessionID:v6 completionHandler:v5];
}

- (void)requestRecipientsForSessionID:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v9 = +[SDShareSheetSlotManager sharedManager];
    v8 = [v9 recipientHandlesForSessionID:v7];

    (*(a4 + 2))(v6, v8);
  }
}

@end