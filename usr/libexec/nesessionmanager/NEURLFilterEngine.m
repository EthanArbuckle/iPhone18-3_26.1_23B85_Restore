@interface NEURLFilterEngine
- (BOOL)isActive;
- (NEURLFilterEngine)init;
- (id)getPrefilterTag;
- (void)fetchConnectionWithCompletionHandler:(id)a3;
- (void)fetchFilterServerParameters;
- (void)getPrefilter;
- (void)resetCache;
- (void)setConfiguration:(id)a3 completionHandler:(id)a4;
- (void)startFilterWithCompletionHandler:(id)a3;
- (void)stopFilter;
@end

@implementation NEURLFilterEngine

- (void)setConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000A4834(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A48C0;
  block[3] = &unk_1000EB2E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (BOOL)isActive
{
  if (self)
  {
    self = self->_filter;
  }

  return [(NEURLFilterEngine *)self isActive];
}

- (id)getPrefilterTag
{
  if (self)
  {
    self = self->_prefilter;
  }

  return [(NEURLFilterEngine *)self getTag];
}

- (void)getPrefilter
{
  v3 = sub_1000A4834(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4BE0;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)resetCache
{
  v3 = sub_1000A4834(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4E1C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)fetchFilterServerParameters
{
  v3 = sub_1000A4834(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A4F74;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)fetchConnectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_1000A4834(self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A50F8;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopFilter
{
  v3 = sub_1000A4834(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A7588;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startFilterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sub_1000A4834(self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A7950;
  v7[3] = &unk_1000EB310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NEURLFilterEngine)init
{
  v5.receiver = self;
  v5.super_class = NEURLFilterEngine;
  v2 = [(NEURLFilterEngine *)&v5 init];
  if (v2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v7 = v2;
      v8 = 2080;
      v9 = "[NEURLFilterEngine init]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@: %s: enter", buf, 0x16u);
    }
  }

  return v2;
}

@end