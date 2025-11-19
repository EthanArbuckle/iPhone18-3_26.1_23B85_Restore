@interface NROSLogStateProvider
- (NROSLogStateProvider)initWithName:(id)a3 maxStringLength:(int64_t)a4 block:(id)a5;
- (void)registerOSLogStateHandlerName:(id)a3 block:(id)a4;
@end

@implementation NROSLogStateProvider

- (NROSLogStateProvider)initWithName:(id)a3 maxStringLength:(int64_t)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NROSLogStateProvider *)self init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.nanoregistryd.statedump", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    v13 = 0;
    v14 = 0;
    v10->_cachedStateDumpHistoryIndex = 0;
    v15 = -15872;
    do
    {
      v16 = v13;
      v13 = v14++;
      v15 += 15872;
    }

    while (v15 < a4);
    if (a4 >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = [NSString stringWithFormat:@"%@.%ld", v8, v18];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10005FFB0;
        v21[3] = &unk_100177BC0;
        v23 = v9;
        v22 = v10;
        v24 = v18;
        v25 = v16;
        [(NROSLogStateProvider *)v22 registerOSLogStateHandlerName:v19 block:v21];

        ++v18;
        v17 += 15872;
      }

      while (v17 < a4);
    }
  }

  return v10;
}

- (void)registerOSLogStateHandlerName:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = v6;
  v12 = v7;
  v9 = v6;
  v10 = v7;
  os_state_add_handler();
}

@end