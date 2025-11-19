@interface HAPFragmentationStream
- (HAPFragmentationStream)init;
- (HAPFragmentationStreamDelegate)delegate;
- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)a3;
- (void)__addFragmentationPacket:(id)a3;
- (void)close;
- (void)receivedFragmentedPacket:(id)a3;
@end

@implementation HAPFragmentationStream

- (HAPFragmentationStream)init
{
  v11.receiver = self;
  v11.super_class = HAPFragmentationStream;
  v2 = [(HAPFragmentationStream *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100014728(v2, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v6;

    v8 = objc_alloc_init(NSMutableOrderedSet);
    pendingPackets = v3->_pendingPackets;
    v3->_pendingPackets = v8;
  }

  return v3;
}

- (void)close
{
  v3 = [(HAPFragmentationStream *)self clientQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006428;
  block[3] = &unk_100273348;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)receivedFragmentedPacket:(id)a3
{
  v4 = a3;
  v5 = [(HAPFragmentationStream *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006560;
  v7[3] = &unk_100273370;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)__transactionDataWithTransactionIdentifier:(unsigned __int16)a3
{
  v3 = a3;
  v4 = [(HAPFragmentationStream *)self __filteredPacketsWithTransactionIdentifier:?];
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 length];

    v7 = [NSMutableData dataWithCapacity:v6];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 offset];
          if ([v7 length]!= v14)
          {
            v17 = sub_10007FAA0();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = sub_10007FAFC(0);
              v19 = [v13 offset];
              v20 = [v7 length];
              *buf = 138543874;
              v29 = v18;
              v30 = 1024;
              *v31 = v19;
              *&v31[4] = 2048;
              *&v31[6] = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Packet with offset %u does not match current offset %tu", buf, 0x1Cu);
            }

            goto LABEL_19;
          }

          v15 = [v13 data];
          [v7 appendData:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 length]== v6)
    {
      v7 = v7;
      v16 = v7;
      goto LABEL_21;
    }

    v8 = sub_10007FAA0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = sub_10007FAFC(0);
      v22 = [v7 length];
      *buf = 138543874;
      v29 = v21;
      v30 = 2048;
      *v31 = v22;
      *&v31[8] = 1024;
      *&v31[10] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] Final payload length, %tu, doesn't match expected payload length, %u", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

  v7 = sub_10007FAA0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_10007FAFC(0);
    *buf = 138543618;
    v29 = v8;
    v30 = 1024;
    *v31 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationInputStream] No packets matching transaction %u", buf, 0x12u);
LABEL_19:
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (void)__addFragmentationPacket:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(HAPFragmentationStream *)self pendingPackets];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100006DEC;
  v11 = &unk_100273398;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [v5 enumerateObjectsUsingBlock:&v8];

  v7 = [(HAPFragmentationStream *)self pendingPackets:v8];
  [v7 insertObject:v6 atIndex:v15[3]];

  _Block_object_dispose(&v14, 8);
}

- (HAPFragmentationStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end