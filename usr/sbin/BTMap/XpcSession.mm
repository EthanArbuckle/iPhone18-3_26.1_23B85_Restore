@interface XpcSession
- (XpcSession)initWithConnection:(id)connection;
- (id)serializeIMMessageNotification:(id)notification;
- (id)serializeIMSPIMessage:(id)message;
- (void)dealloc;
- (void)getImCoreSeedMessages:(id)messages;
- (void)handleMsg:(id)msg;
- (void)markMessageAsRead:(id)read;
- (void)messageReceivedNotification:(id)notification;
- (void)messageSentNotification:(id)notification;
- (void)registerForIMCoreNotifications;
- (void)sendMsg:(id)msg args:(id)args;
- (void)sendReplyToMsg:(id)msg status:(unsigned __int8)status args:(id)args;
- (void)sendTextMessage:(id)message;
@end

@implementation XpcSession

- (XpcSession)initWithConnection:(id)connection
{
  v7.receiver = self;
  v7.super_class = XpcSession;
  v3 = [(BTXpcSession *)&v7 initWithConnection:connection];
  if (v3)
  {
    v4 = objc_alloc_init(MapHandler);
    mapHandler = v3->_mapHandler;
    v3->_mapHandler = v4;

    [(MapHandler *)v3->_mapHandler setDelegate:v3];
  }

  return v3;
}

- (void)handleMsg:(id)msg
{
  msgCopy = msg;
  string = xpc_dictionary_get_string(msgCopy, "kMsgId");
  if (!strcmp(string, "kStart"))
  {
    [(XpcSession *)self registerForIMCoreNotifications];
  }

  else if (!strcmp(string, "kMarkMessageRead"))
  {
    [(XpcSession *)self markMessageAsRead:msgCopy];
  }

  else if (!strcmp(string, "kSendTextMessage"))
  {
    [(XpcSession *)self sendTextMessage:msgCopy];
  }

  else if (!strcmp(string, "kGetImCoreInitialMessages"))
  {
    [(XpcSession *)self getImCoreSeedMessages:msgCopy];
  }

  _objc_release_x1();
}

- (void)sendMsg:(id)msg args:(id)args
{
  argsCopy = args;
  msgCopy = msg;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = [msgCopy cStringUsingEncoding:4];

  xpc_dictionary_set_string(v7, "kMsgId", v8);
  if (argsCopy)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v7, "kMsgArgs", v9);
  }

  [(BTXpcSession *)self sendMsg:v7];
}

- (void)sendReplyToMsg:(id)msg status:(unsigned __int8)status args:(id)args
{
  statusCopy = status;
  argsCopy = args;
  xdict = xpc_dictionary_create_reply(msg);
  xpc_dictionary_set_int64(xdict, "kMsgStatus", statusCopy);
  v9 = _CFXPCCreateXPCObjectFromCFObject();

  xpc_dictionary_set_value(xdict, "kMsgArgs", v9);
  [(BTXpcSession *)self sendReply:xdict];
}

- (void)messageReceivedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if ([object isMuted])
  {
    v6 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropping text message as chat session is muted", buf, 2u);
    }
  }

  else
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKey:IMChatValueKey];

    v9 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      guid = [v8 guid];
      *buf = 138412290;
      v18 = guid;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending received text message with GUID %@ to bluetoothd", buf, 0xCu);
    }

    v12 = +[NSMutableArray array];
    v13 = [(XpcSession *)self serializeIMMessageNotification:notificationCopy];
    [v12 addObject:v13];

    v15 = @"kMessagesInfo";
    v16 = v12;
    v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [(XpcSession *)self sendMsg:@"kMessageAdded" args:v14];
  }
}

- (void)messageSentNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:IMChatValueKey];

  guid = [v6 guid];
  pendingSendGuids = [(MapHandler *)self->_mapHandler pendingSendGuids];
  if (![pendingSendGuids containsObject:guid])
  {
LABEL_6:

    goto LABEL_7;
  }

  isSent = [v6 isSent];

  if (isSent)
  {
    v10 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = guid;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Guid %@ has sent, updating CK", buf, 0xCu);
    }

    pendingSendGuids = +[NSMutableArray array];
    v11 = [(XpcSession *)self serializeIMMessageNotification:notificationCopy];
    [pendingSendGuids addObject:v11];

    v14 = @"kMessagesInfo";
    v15 = pendingSendGuids;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(XpcSession *)self sendMsg:@"kMessageSent" args:v12];
    pendingSendGuids2 = [(MapHandler *)self->_mapHandler pendingSendGuids];
    [pendingSendGuids2 removeObject:guid];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)markMessageAsRead:(id)read
{
  v3 = xpc_dictionary_get_value(read, "kMsgArgs");
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kMessageGUID")];
  v5 = qword_10000CEC8;
  if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asking IMCore to mark message with messageGUID: %@ as read", &v6, 0xCu);
  }

  IMSPIQueryMessageWithGUIDAndQOS();
}

- (void)sendTextMessage:(id)message
{
  v3 = xpc_dictionary_get_value(message, "kMsgArgs");
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kBody")];
  string = xpc_dictionary_get_string(v3, "kRecipientPhoneNumber");
  v6 = xpc_dictionary_get_string(v3, "kRecipientEmail");
  v7 = +[NSMutableArray array];
  if (string)
  {
    string = [NSString stringWithUTF8String:string];
    [v7 addObject:string];
  }

  if (v6)
  {
    v6 = [NSString stringWithUTF8String:v6];
    [v7 addObject:v6];
  }

  v8 = qword_10000CEC8;
  if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending message through IMCore", buf, 2u);
  }

  v9 = [v7 objectAtIndex:0];
  v10 = v4;
  v11 = string;
  v12 = v6;
  v13 = IMSPISendMessageWithAttachmentsReturningGUID();

  v14 = qword_10000CEC8;
  v15 = os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      v16 = "Message handed off to ImCore for sending";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

  else if (v15)
  {
    *buf = 0;
    v16 = "Message failed to send through IMCore, could not send new chat";
    goto LABEL_12;
  }
}

- (void)getImCoreSeedMessages:(id)messages
{
  messagesCopy = messages;
  v3 = messagesCopy;
  IMSPIQueryMessagesWithQOS();
}

- (id)serializeIMSPIMessage:(id)message
{
  messageCopy = message;
  body = qword_10000CEC8;
  if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, body, OS_LOG_TYPE_DEFAULT, "Processing added text message", buf, 2u);
  }

  date = [messageCopy date];
  isAudioMessage = [messageCopy isAudioMessage];
  if (isAudioMessage)
  {
    body = [messageCopy body];
    if (![body length])
    {
      body2 = @"Audio Message";
      goto LABEL_8;
    }
  }

  body2 = [messageCopy body];
  if (isAudioMessage)
  {
LABEL_8:
  }

  sender = [messageCopy sender];
  displayName = [sender displayName];

  sender2 = [messageCopy sender];
  address = [sender2 address];

  guid = [messageCopy guid];
  service = [messageCopy service];
  v41 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messageCopy isRead]);
  v13 = [address containsString:@"@"];
  v14 = address;
  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v38 = v14;
  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v42 = v16;
  v17 = [(__CFString *)body2 UTF8StringWithMaxLength:128];
  v45[0] = @"kDate";
  v18 = date;
  if (!date)
  {
    v18 = +[NSDate date];
  }

  v34 = v18;
  v46[0] = v18;
  v45[1] = @"kBody";
  v19 = body2;
  if (!body2)
  {
    v19 = +[NSNull null];
  }

  v33 = v19;
  v46[1] = v19;
  v45[2] = @"kSenderFirstName";
  v37 = +[NSNull null];
  v46[2] = v37;
  v45[3] = @"kSubject";
  v20 = v17;
  if (!v17)
  {
    v20 = +[NSNull null];
  }

  v40 = date;
  v32 = v20;
  v46[3] = v20;
  v45[4] = @"kSenderLastName";
  v36 = +[NSNull null];
  v46[4] = v36;
  v45[5] = @"kSenderFormattedName";
  v21 = displayName;
  if (!displayName)
  {
    v21 = +[NSNull null];
  }

  v30 = v21;
  v46[5] = v21;
  v45[6] = @"kMessageGUID";
  v22 = guid;
  if (!guid)
  {
    v22 = +[NSNull null];
  }

  v39 = guid;
  v46[6] = v22;
  v45[7] = @"kSenderEmail";
  v23 = v15;
  if (!v15)
  {
    v23 = +[NSNull null];
  }

  v24 = body2;
  v46[7] = v23;
  v45[8] = @"kSenderPhoneNumber";
  v25 = v42;
  if (!v42)
  {
    v25 = +[NSNull null];
  }

  v26 = v17;
  v46[8] = v25;
  v45[9] = @"kAppType";
  v27 = service;
  if (!service)
  {
    v27 = +[NSNull null];
  }

  v46[9] = v27;
  v45[10] = @"kIsRead";
  v28 = v41;
  if (!v41)
  {
    v28 = +[NSNull null];
  }

  v46[10] = v28;
  v35 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:11, v30];
  if (!v41)
  {
  }

  if (!service)
  {
  }

  if (!v42)
  {
  }

  if (!v15)
  {
  }

  if (v39)
  {
    if (displayName)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (displayName)
    {
      goto LABEL_43;
    }
  }

LABEL_43:
  if (!v26)
  {
  }

  if (v24)
  {
    if (v40)
    {
      goto LABEL_47;
    }
  }

  else
  {

    if (v40)
    {
      goto LABEL_47;
    }
  }

LABEL_47:

  return v35;
}

- (id)serializeIMMessageNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v6 = [userInfo objectForKey:IMChatValueKey];

  v7 = qword_10000CEC8;
  if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Processing added text message", buf, 2u);
  }

  sender = [v6 sender];
  name = [sender name];

  sender2 = [v6 sender];
  v11 = [sender2 ID];

  v12 = [v11 containsString:@"@"];
  v13 = v11;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v54 = v13;
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v62 = 0;
  v63 = 0;
  v16 = 0;
  if ([v6 isFromMe])
  {
    recipient = [object recipient];
    name2 = [recipient name];

    recipient2 = [object recipient];
    v20 = [recipient2 ID];

    v21 = [v20 containsString:@"@"];
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = v20;
    }

    v62 = v22;
    v63 = v23;
    v16 = name2;
  }

  timeDelivered = [v6 timeDelivered];
  plainBody = [v6 plainBody];
  v57 = object;
  if (![plainBody length])
  {
    v25 = v16;
    v26 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No body, using message summary instead", buf, 2u);
    }

    _imMessageItem = [v6 _imMessageItem];
    v28 = IMSPIMessageSummary();

    plainBody = v28;
    v16 = v25;
  }

  v61 = [plainBody UTF8StringWithMaxLength:128];
  guid = [v6 guid];
  subject = [v6 subject];
  accountTypeName = [subject accountTypeName];

  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isRead]);
  v65[0] = @"kDate";
  v31 = timeDelivered;
  if (!timeDelivered)
  {
    v31 = +[NSDate date];
  }

  v51 = v31;
  v66[0] = v31;
  v65[1] = @"kBody";
  v32 = plainBody;
  if (!plainBody)
  {
    v32 = +[NSNull null];
  }

  v50 = v32;
  v66[1] = v32;
  v65[2] = @"kSubject";
  v33 = v61;
  if (!v61)
  {
    v33 = +[NSNull null];
  }

  v66[2] = v33;
  v65[3] = @"kSenderFormattedName";
  v34 = name;
  if (!name)
  {
    v34 = +[NSNull null];
  }

  v48 = v34;
  v66[3] = v34;
  v65[4] = @"kSenderEmail";
  v35 = v14;
  if (!v14)
  {
    v35 = +[NSNull null];
  }

  v56 = name;
  v47 = v35;
  v66[4] = v35;
  v65[5] = @"kSenderPhoneNumber";
  v36 = v15;
  if (!v15)
  {
    v36 = +[NSNull null];
  }

  v45 = v36;
  v66[5] = v36;
  v65[6] = @"kRecipientFormattedName";
  v37 = v16;
  v53 = v16;
  if (!v16)
  {
    v37 = [NSNull null:v36];
  }

  v66[6] = v37;
  v65[7] = @"kRecipientEmail";
  v38 = v62;
  if (!v62)
  {
    v38 = +[NSNull null];
  }

  v55 = v15;
  v66[7] = v38;
  v65[8] = @"kRecipientPhoneNumber";
  v39 = v63;
  if (!v63)
  {
    v39 = +[NSNull null];
  }

  v40 = v14;
  v66[8] = v39;
  v65[9] = @"kMessageGUID";
  v41 = guid;
  if (!guid)
  {
    v41 = +[NSNull null];
  }

  v49 = v33;
  v66[9] = v41;
  v65[10] = @"kAppType";
  v42 = accountTypeName;
  if (!accountTypeName)
  {
    v42 = +[NSNull null];
  }

  v66[10] = v42;
  v65[11] = @"kIsRead";
  v43 = v30;
  if (!v30)
  {
    v43 = +[NSNull null];
  }

  v66[11] = v43;
  v52 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:12, v45];
  if (!v30)
  {
  }

  if (!accountTypeName)
  {
  }

  if (!guid)
  {
  }

  if (!v63)
  {
  }

  if (!v62)
  {
  }

  if (v53)
  {
    if (v55)
    {
      goto LABEL_57;
    }
  }

  else
  {

    if (v55)
    {
      goto LABEL_57;
    }
  }

LABEL_57:
  if (v40)
  {
    if (v56)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (v56)
    {
      goto LABEL_59;
    }
  }

LABEL_59:
  if (v61)
  {
    if (plainBody)
    {
      goto LABEL_61;
    }

LABEL_70:

    if (timeDelivered)
    {
      goto LABEL_62;
    }

    goto LABEL_71;
  }

  if (!plainBody)
  {
    goto LABEL_70;
  }

LABEL_61:
  if (timeDelivered)
  {
    goto LABEL_62;
  }

LABEL_71:

LABEL_62:

  return v52;
}

- (void)registerForIMCoreNotifications
{
  v3 = +[IMDaemonController sharedInstance];
  [v3 addListenerID:@"BTMapListener" capabilities:kFZListenerCapNotifications | kFZListenerCapChats | (kFZListenerCapTruncatedChatRegistry | kFZListenerCapEvenMoreTruncatedChatRegistry)];

  v4 = +[IMDaemonController sharedInstance];
  [v4 blockUntilConnected];

  v5 = +[IMDaemonController sharedInstance];
  [v5 _setBlocksConnectionAtResume:1];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"messageReceivedNotification:" name:IMChatMessageReceivedNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"messageSentNotification:" name:IMChatMessageDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[IMDaemonController sharedInstance];
  [v3 removeListenerID:@"BTMapListener"];

  v4 = +[IMDaemonController sharedInstance];
  [v4 disconnectFromDaemon];

  v5.receiver = self;
  v5.super_class = XpcSession;
  [(XpcSession *)&v5 dealloc];
}

@end