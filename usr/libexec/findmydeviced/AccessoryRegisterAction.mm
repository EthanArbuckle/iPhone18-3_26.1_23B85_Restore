@interface AccessoryRegisterAction
+ (id)contextKeyForAccessory:(id)a3;
+ (id)sharedAccessoryRegisterDigestSerialQueue;
+ (void)cleanupContextForAccessory:(id)a3;
+ (void)saveAccessoryRegisterDigest:(id)a3 forKey:(id)a4;
- (BOOL)_registerDeviceWithCause:(id)a3;
- (BOOL)shouldCancelAction:(id)a3;
- (FMDServerInteractionController)serverInteractionController;
- (id)digestWithDeviceInfo:(id)a3;
- (void)runWithCompletion:(id)a3;
- (void)terminate;
@end

@implementation AccessoryRegisterAction

+ (id)sharedAccessoryRegisterDigestSerialQueue
{
  if (qword_1003145C0 != -1)
  {
    sub_100227084();
  }

  v3 = qword_1003145C8;

  return v3;
}

- (void)runWithCompletion:(id)a3
{
  v7 = a3;
  [(AccessoryRegisterAction *)self setCompletion:v7];
  v4 = [(AccessoryRegisterAction *)self cause];
  v5 = [(AccessoryRegisterAction *)self _registerDeviceWithCause:v4];

  v6 = v7;
  if (v7 && (v5 & 1) == 0)
  {
    (*(v7 + 2))(v7);
    v6 = v7;
  }
}

- (void)terminate
{
  v4 = [(AccessoryRegisterAction *)self completion];
  [(AccessoryRegisterAction *)self setCompletion:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (BOOL)shouldCancelAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AccessoryRegisterAction *)self accessory];
    v6 = [v5 accessoryIdentifier];
    v7 = [v4 accessory];
    v8 = [v7 accessoryIdentifier];
    v9 = [v6 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_registerDeviceWithCause:(id)a3
{
  v4 = a3;
  v5 = [(AccessoryRegisterAction *)self accessory];
  v6 = [(AccessoryRegisterAction *)self account];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = sub_10000A9D4;
  v52[4] = sub_100002AB4;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 1;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10000A9D4;
  v46 = sub_100002AB4;
  v47 = 0;
  v7 = +[AccessoryRegisterAction sharedAccessoryRegisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100143C40;
  block[3] = &unk_1002CDF88;
  v39 = v52;
  block[4] = self;
  v8 = v6;
  v36 = v8;
  v9 = v5;
  v37 = v9;
  v40 = &v42;
  v10 = v4;
  v38 = v10;
  v41 = &v48;
  dispatch_sync(v7, block);

  if (*(v49 + 24))
  {
    v11 = [(AccessoryRegisterAction *)self serverInteractionController];
    v12 = [FMDActingRequestDecorator alloc];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10014401C;
    v32[3] = &unk_1002CDF18;
    v33 = v8;
    v34 = v10;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100144090;
    v31[3] = &unk_1002CDFB0;
    v31[4] = v52;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001440A0;
    v29[3] = &unk_1002CD580;
    v13 = v33;
    v30 = v13;
    v14 = [(FMDActingRequestDecorator *)v12 initWithDeviceContextGenerator:v32 deviceInfoGenerator:v31 serverContextGenerator:0 requestHeaderGenerator:v29];
    v15 = [[FMDRequestRegister alloc] initWithAccount:v13];
    [(FMDRequest *)v15 setDecorator:v14];
    v16 = [AccessoryRegisterAction contextKeyForAccessory:v9];
    [(FMDRequestRegister *)v15 setDigestKey:v16];

    [(FMDRequestRegister *)v15 setDigestData:v43[5]];
    objc_initWeak(&location, self);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100144110;
    v23 = &unk_1002CDFD8;
    objc_copyWeak(&v27, &location);
    v24 = v9;
    v25 = v13;
    v17 = v11;
    v26 = v17;
    [(FMDRequest *)v15 setCompletionHandler:&v20];
    [(AccessoryRegisterAction *)self setRequest:v15, v20, v21, v22, v23];
    v18 = [v17 enqueueRequest:v15];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);

  return v18;
}

+ (id)contextKeyForAccessory:(id)a3
{
  v3 = [a3 accessoryIdentifier];
  v4 = [NSString stringWithFormat:@"%@:%@", @"AccessoryRegisterAction", v3];

  return v4;
}

+ (void)cleanupContextForAccessory:(id)a3
{
  v3 = a3;
  v4 = +[AccessoryRegisterAction sharedAccessoryRegisterDigestSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014495C;
  block[3] = &unk_1002CD4C8;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (id)digestWithDeviceInfo:(id)a3
{
  v4 = [a3 fm_flattenedArrayWithParentIndices:&off_1002E88D0];
  if ([v4 count])
  {
    v11 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100227098(self, v6, v7);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  CC_SHA1([v5 bytes], objc_msgSend(v5, "length"), md);
  v8 = [NSData dataWithBytes:md length:20];
  v9 = sub_100002880();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100227148(v8, v9);
  }

  return v8;
}

+ (void)saveAccessoryRegisterDigest:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = qword_1003145B8;
  if (!qword_1003145B8)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = qword_1003145B8;
    qword_1003145B8 = v7;

    v6 = qword_1003145B8;
  }

  [v6 setObject:v9 forKeyedSubscript:v5];
}

- (FMDServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

@end