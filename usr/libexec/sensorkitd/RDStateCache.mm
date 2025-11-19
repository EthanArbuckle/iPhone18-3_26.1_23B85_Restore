@interface RDStateCache
+ (void)initialize;
- (id)description;
- (void)dealloc;
@end

@implementation RDStateCache

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071AC8 = os_log_create("com.apple.SensorKit", "RDStateCache");
  }
}

- (void)dealloc
{
  self->_fileURLs = 0;

  objc_setProperty_nonatomic(self, v3, 0, 96);
  objc_setProperty_nonatomic(self, v4, 0, 104);
  objc_setProperty_nonatomic(self, v5, 0, 112);
  v6.receiver = self;
  v6.super_class = RDStateCache;
  [(RDStateCache *)&v6 dealloc];
}

- (id)description
{
  v3 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v4 = qword_100071B68;
  v5 = *&qword_100071B70;
  v6 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v4 >= v3)
  {
    v7 = -v7;
  }

  return [NSString stringWithFormat:@"SRAbsoluteTimeGetCurrent(): %f, %@", v6 + v5 + v7, [(NSDictionary *)sub_100027B10(self) description]];
}

@end