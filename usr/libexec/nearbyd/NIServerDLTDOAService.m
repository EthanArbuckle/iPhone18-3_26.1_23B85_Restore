@interface NIServerDLTDOAService
+ (id)sharedInstance;
- (NIServerDLTDOAServiceClient)client;
- (id).cxx_construct;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)printableState;
- (void)clientInvalidateWithSessionRecord:(SessionRecord *)a3;
- (void)setClient:(id)a3;
@end

@implementation NIServerDLTDOAService

+ (id)sharedInstance
{
  if (qword_1009F2740 != -1)
  {
    sub_1004B55D4();
  }

  v3 = qword_1009F2738;

  return v3;
}

- (void)setClient:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10027342C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (NIServerDLTDOAServiceClient)client
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100273528;
  v10 = sub_100273538;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100273540;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)clientInvalidateWithSessionRecord:(SessionRecord *)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1002736A0;
  block[3] = &unk_1009A14C0;
  objc_copyWeak(&v8, &location);
  v6 = *&a3->var3;
  v9 = *&a3->var0;
  v10[0] = v6;
  *(v10 + 9) = *(&a3->var5 + 1);
  if (*(&a3->var7.__rep_.__l + 23) < 0)
  {
    sub_1000056BC(&__p, a3->var7.__rep_.__l.__data_, a3->var7.__rep_.__l.__size_);
  }

  else
  {
    __p = *a3->var7.__rep_.__s.__data_;
    v12 = *(&a3->var7.__rep_.__l + 2);
  }

  dispatch_async(queue, block);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_initInternal
{
  v11.receiver = self;
  v11.super_class = NIServerDLTDOAService;
  v2 = [(NIServerDLTDOAService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.nearbyd.dl-tdoa-service", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLForKey:@"EnableStateDump"], v6, v7))
    {
      v8 = v2->_queue;
      v10 = v2;
      os_state_add_handler();
    }
  }

  return v2;
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100273528;
  v10 = sub_100273538;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100273C2C;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v3 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  context = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_client);
  totalDLTDOASessions = self->_totalDLTDOASessions;
  if (WeakRetained)
  {
    ++totalDLTDOASessions;
  }

  v6 = [NSString stringWithFormat:@"Total session count: %zu", totalDLTDOASessions];
  [v3 addObject:v6];

  v7 = [NSString stringWithFormat:@"Complete Sessions:"];
  [v3 addObject:v7];

  begin = self->_sessionRecords.__map_.__begin_;
  if (self->_sessionRecords.__map_.__end_ != begin)
  {
    start = self->_sessionRecords.__start_;
    size = self->_sessionRecords.__size_;
    v11 = &begin[start / 0x38];
    v12 = &(*v11)[start % 0x38];
    v13 = &begin[(size + start) / 0x38][(size + start) % 0x38];
    while (v12 != v13)
    {
      v14 = *(v12 + 4);
      v15 = sub_100273EF4(v12);
      v16 = [NSString stringWithFormat:@" Cluster initiator address: %u \n             %@", v14, v15];
      [v3 addObject:v16];

      v12 += 72;
      if (v12 - *v11 == 4032)
      {
        v17 = v11[1];
        ++v11;
        v12 = v17;
      }
    }
  }

  v18 = [NSString stringWithFormat:@"Active Sessions:"];
  [v3 addObject:v18];

  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [WeakRetained sessionRecordPrintableState];
    [v3 addObject:v19];
  }

  objc_autoreleasePoolPop(context);

  return v3;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

@end