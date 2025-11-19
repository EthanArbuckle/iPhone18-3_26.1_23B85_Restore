@interface FMDExtExtension
- (FMDExtExtension)initWithExtension:(id)a3;
- (id)connectWithDelegate:(id)a3;
- (void)invalidateRequestWithIdentifier:(id)a3;
- (void)setupCompletionBlocks;
@end

@implementation FMDExtExtension

- (FMDExtExtension)initWithExtension:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDExtExtension;
  v5 = [(FMDExtExtension *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(FMDExtExtension *)v5 setExtension:v4];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.icloud.findmydevice.fmd-ext-extension", v7);
    [(FMDExtExtension *)v6 setQueue:v8];

    [(FMDExtExtension *)v6 setup];
  }

  return v6;
}

- (void)setupCompletionBlocks
{
  v3 = [(FMDExtExtension *)self extension];
  v4 = [v3 identifier];

  objc_initWeak(&location, self);
  v5 = [(FMDExtExtension *)self extension];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10012F5AC;
  v17[3] = &unk_1002CD3B0;
  v6 = v4;
  v18 = v6;
  objc_copyWeak(&v19, &location);
  [v5 setRequestCompletionBlock:v17];

  v7 = [(FMDExtExtension *)self extension];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012F68C;
  v14[3] = &unk_1002CD3D8;
  v8 = v6;
  v15 = v8;
  objc_copyWeak(&v16, &location);
  [v7 setRequestInterruptionBlock:v14];

  v9 = [(FMDExtExtension *)self extension];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012F76C;
  v11[3] = &unk_1002CD400;
  v10 = v8;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [v9 setRequestCancellationBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (id)connectWithDelegate:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000A974;
  v16 = sub_100002A84;
  v17 = 0;
  v5 = [(FMDExtExtension *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012F990;
  block[3] = &unk_1002CD450;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)invalidateRequestWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FMDExtExtension *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012FFCC;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end