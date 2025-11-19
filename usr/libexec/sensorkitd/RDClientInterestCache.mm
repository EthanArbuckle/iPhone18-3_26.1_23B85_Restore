@interface RDClientInterestCache
+ (void)initialize;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)dealloc;
@end

@implementation RDClientInterestCache

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071980 = os_log_create("com.apple.SensorKit", "ClientInterestCache");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 8);
    objc_setProperty_nonatomic(self, v3, 0, 16);
    objc_setProperty_nonatomic(self, v4, 0, 24);
  }

  v5.receiver = self;
  v5.super_class = RDClientInterestCache;
  [(RDClientInterestCache *)&v5 dealloc];
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v6 = qword_100071980;
  if (os_log_type_enabled(qword_100071980, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543618;
    v8 = a4;
    v9 = 2050;
    v10 = a3;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Evicting %{public}@ from cache: %{public}p", &v7, 0x16u);
  }
}

@end