@interface NROSLogStateProvider
- (NROSLogStateProvider)initWithName:(id)name maxStringLength:(int64_t)length block:(id)block;
- (void)registerOSLogStateHandlerName:(id)name block:(id)block;
@end

@implementation NROSLogStateProvider

- (NROSLogStateProvider)initWithName:(id)name maxStringLength:(int64_t)length block:(id)block
{
  nameCopy = name;
  blockCopy = block;
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

    while (v15 < length);
    if (length >= 1)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = [NSString stringWithFormat:@"%@.%ld", nameCopy, v18];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10005FFB0;
        v21[3] = &unk_100177BC0;
        v23 = blockCopy;
        v22 = v10;
        v24 = v18;
        v25 = v16;
        [(NROSLogStateProvider *)v22 registerOSLogStateHandlerName:v19 block:v21];

        ++v18;
        v17 += 15872;
      }

      while (v17 < length);
    }
  }

  return v10;
}

- (void)registerOSLogStateHandlerName:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  queue = self->_queue;
  v11 = nameCopy;
  v12 = blockCopy;
  v9 = nameCopy;
  v10 = blockCopy;
  os_state_add_handler();
}

@end