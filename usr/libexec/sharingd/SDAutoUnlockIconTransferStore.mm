@interface SDAutoUnlockIconTransferStore
- (BOOL)imageCachedForHash:(id)hash device:(id)device;
- (SDAutoUnlockIconTransferStore)init;
- (void)_loadTransferStore;
- (void)storeCachedImageForHash:(id)hash device:(id)device appName:(id)name;
@end

@implementation SDAutoUnlockIconTransferStore

- (SDAutoUnlockIconTransferStore)init
{
  v6.receiver = self;
  v6.super_class = SDAutoUnlockIconTransferStore;
  v2 = [(SDAutoUnlockIconTransferStore *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SDAutoUnlockIconTransferStore *)v2 _loadTransferStore];
    v4 = v3;
  }

  return v3;
}

- (void)storeCachedImageForHash:(id)hash device:(id)device appName:(id)name
{
  hashCopy = hash;
  deviceCopy = device;
  nameCopy = name;
  v11 = SFHexStringForData();
  v12 = [(NSMutableDictionary *)self->_transferStore objectForKeyedSubscript:deviceCopy];
  v13 = [v12 mutableCopy];

  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = objc_opt_new();

    v13 = v14;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100136150;
  v29 = sub_100136160;
  v30 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100136168;
  v22[3] = &unk_1008D1258;
  v15 = nameCopy;
  v23 = v15;
  v24 = &v25;
  [v13 enumerateKeysAndObjectsUsingBlock:v22];
  if (v26[5])
  {
    [v13 removeObjectForKey:?];
  }

  [v13 setObject:v15 forKeyedSubscript:v11];
  v16 = [v13 copy];
  [(NSMutableDictionary *)self->_transferStore setObject:v16 forKeyedSubscript:deviceCopy];

  if (dword_100971278 <= 50 && (dword_100971278 != -1 || _LogCategory_Initialize()))
  {
    v20 = deviceCopy;
    v21 = v11;
    v19 = v15;
    LogPrintF();
  }

  v17 = [NSUserDefaults standardUserDefaults:v19];
  v18 = [(NSMutableDictionary *)self->_transferStore copy];
  [v17 setObject:v18 forKey:@"AUIconTransferStore"];

  [v17 synchronize];
  _Block_object_dispose(&v25, 8);
}

- (BOOL)imageCachedForHash:(id)hash device:(id)device
{
  hashCopy = hash;
  deviceCopy = device;
  v8 = [(NSMutableDictionary *)self->_transferStore objectForKeyedSubscript:deviceCopy];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    if (dword_100971278 <= 50 && (dword_100971278 != -1 || _LogCategory_Initialize()))
    {
      sub_100136460();
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (dword_100971278 <= 90 && (dword_100971278 != -1 || _LogCategory_Initialize()))
    {
      sub_100136440();
    }

LABEL_13:
    v12 = 0;
    goto LABEL_16;
  }

  v10 = SFHexStringForData();
  v11 = [v9 objectForKeyedSubscript:v10];
  if (dword_100971278 <= 50 && (dword_100971278 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = v11 != 0;

LABEL_16:
  return v12;
}

- (void)_loadTransferStore
{
  v7 = +[NSUserDefaults standardUserDefaults];
  v3 = [v7 objectForKey:@"AUIconTransferStore"];
  v4 = [v3 mutableCopy];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_opt_new();

    v4 = v5;
  }

  transferStore = self->_transferStore;
  self->_transferStore = v4;
}

@end