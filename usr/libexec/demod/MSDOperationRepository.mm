@interface MSDOperationRepository
+ (id)createOperationFromIdentifier:(id)a3 withContext:(id)a4;
@end

@implementation MSDOperationRepository

+ (id)createOperationFromIdentifier:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = NSClassFromString(v5);
  if (v7)
  {
    v8 = [v7 alloc];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v8;
        v9 = [v8 initWithContext:v6];
        goto LABEL_5;
      }
    }

    sub_1000D8DD0(v8);
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000D8E94();
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

@end