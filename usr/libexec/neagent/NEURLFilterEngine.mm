@interface NEURLFilterEngine
- (BOOL)isActive;
- (NEURLFilterEngine)init;
- (id)getPrefilterTag;
- (void)fetchConnectionWithCompletionHandler:(id)handler;
- (void)fetchFilterServerParameters;
- (void)getPrefilter;
- (void)resetCache;
- (void)setConfiguration:(id)configuration completionHandler:(id)handler;
- (void)startFilterWithCompletionHandler:(id)handler;
- (void)stopFilter;
@end

@implementation NEURLFilterEngine

- (void)setConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = sub_1000105A8(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010634;
  block[3] = &unk_1000249B8;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
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
  v3 = sub_1000105A8(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010954;
  block[3] = &unk_100024A20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)resetCache
{
  v3 = sub_1000105A8(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010B90;
  block[3] = &unk_100024A20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)fetchFilterServerParameters
{
  v3 = sub_1000105A8(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010CE8;
  block[3] = &unk_100024A20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)fetchConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_1000105A8(self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010E6C;
  v7[3] = &unk_100024A98;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

- (void)stopFilter
{
  v3 = sub_1000105A8(self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000132FC;
  block[3] = &unk_100024A20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startFilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_1000105A8(self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000136C4;
  v7[3] = &unk_100024A98;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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