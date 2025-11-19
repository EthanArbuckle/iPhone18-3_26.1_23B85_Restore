@interface CARPropertyListMessenger
- (CARPropertyListMessageReceiving)messageReceiver;
- (CARPropertyListMessenger)init;
- (id)dataForMessageWithIdentifier:(unsigned __int16)a3 contents:(id)a4 error:(id *)a5;
- (void)handleReceivedData:(id)a3;
@end

@implementation CARPropertyListMessenger

- (CARPropertyListMessenger)init
{
  v9.receiver = self;
  v9.super_class = CARPropertyListMessenger;
  v2 = [(CARPropertyListMessenger *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.carkit.plist_messenger_receive", v3);
    receiveQueue = v2->_receiveQueue;
    v2->_receiveQueue = v4;

    v6 = +[NSMutableData data];
    receiveBuffer = v2->_receiveBuffer;
    v2->_receiveBuffer = v6;
  }

  return v2;
}

- (id)dataForMessageWithIdentifier:(unsigned __int16)a3 contents:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  Data = OPACKEncoderCreateData();
  v9 = Data;
  if (Data)
  {
    if ([Data length] <= 0x100000)
    {
      v15 = [v9 length];
      v14 = +[NSMutableData data];
      v18 = __rev16(v6);
      [v14 appendBytes:&v18 length:2];
      v17 = bswap32(v15);
      [v14 appendBytes:&v17 length:4];
      [v14 appendData:v9];
      goto LABEL_14;
    }

    v10 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100089DE8();
    }

    if (a5)
    {
      v11 = @"com.apple.carkit";
      v12 = 4;
LABEL_11:
      [NSError errorWithDomain:v11 code:v12 userInfo:0];
      *a5 = v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100089E1C(&v19, v7, v13);
    }

    v12 = v19;
    if (v19)
    {
      v11 = NSOSStatusErrorDomain;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)handleReceivedData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CARPropertyListMessenger *)self receiveQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100075C74;
    v6[3] = &unk_1000DD580;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (CARPropertyListMessageReceiving)messageReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_messageReceiver);

  return WeakRetained;
}

@end