@interface WAMessageSubmitter
- (WAMessageSubmitter)initWithMessageGroupType:(int64_t)a3;
- (id)submitMessage:(id)a3;
@end

@implementation WAMessageSubmitter

- (WAMessageSubmitter)initWithMessageGroupType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WAMessageSubmitter;
  v4 = [(WAMessageSubmitter *)&v8 init];
  if (!v4)
  {
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "[WAMessageSubmitter initWithMessageGroupType:]";
      v11 = 1024;
      v12 = 26;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed in super-init", buf, 0x12u);
    }

    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v10 = "[WAMessageSubmitter initWithMessageGroupType:]";
      v11 = 1024;
      v12 = 32;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error configuring groupType: %ld", buf, 0x1Cu);
    }
  }

  return v4;
}

- (id)submitMessage:(id)a3
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Never use %@ for WAMessage.", v3];

  return 0;
}

@end