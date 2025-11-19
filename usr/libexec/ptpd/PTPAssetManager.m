@interface PTPAssetManager
- (PTPAssetManager)init;
- (void)closeSession:(id)a3;
- (void)openSession;
@end

@implementation PTPAssetManager

- (PTPAssetManager)init
{
  v6.receiver = self;
  v6.super_class = PTPAssetManager;
  v2 = [(PTPAssetManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PHPTPAssetManager);
    am = v2->_am;
    v2->_am = v3;

    v2->_sessionOpened = 0;
  }

  return v2;
}

- (void)openSession
{
  v3 = [(PTPAssetManager *)self am];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0 && ![(PTPAssetManager *)self sessionOpened])
  {
    [(PTPAssetManager *)self setSessionOpened:1];
    v4 = os_transaction_create();
    [(PTPAssetManager *)self setActiveTransaction:v4];

    __ICOSLogCreate();
    v5 = @"AssetManager";
    if ([@"AssetManager" length] >= 0x15)
    {
      v6 = [@"AssetManager" substringWithRange:{0, 18}];
      v5 = [v6 stringByAppendingString:@".."];
    }

    v7 = [NSString stringWithFormat:@"(Open Session) 🔐 Host opened new session"];
    v8 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5;
      v10 = v8;
      v11 = 136446466;
      v12 = [(__CFString *)v5 UTF8String];
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v11, 0x16u);
    }

    [v3 performSelector:"ptpOpenSession"];
  }
}

- (void)closeSession:(id)a3
{
  v4 = a3;
  v5 = [(PTPAssetManager *)self am];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && [(PTPAssetManager *)self sessionOpened])
  {
    [(PTPAssetManager *)self setSessionOpened:0];
    __ICOSLogCreate();
    v6 = @"AssetManager";
    if ([@"AssetManager" length] >= 0x15)
    {
      v7 = [@"AssetManager" substringWithRange:{0, 18}];
      v6 = [v7 stringByAppendingString:@".."];
    }

    v8 = [NSString stringWithFormat:@"(Close Session) 🔐 %@", v4];
    v9 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6;
      v11 = v9;
      *buf = 136446466;
      v13 = [(__CFString *)v6 UTF8String];
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    [v5 performSelector:"ptpCloseSession"];
  }
}

@end