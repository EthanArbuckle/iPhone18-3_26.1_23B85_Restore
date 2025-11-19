@interface FMFConfig
+ (id)sharedInstance;
- (BOOL)isFMFAllowed;
- (id)initSingleton;
- (void)dealloc;
@end

@implementation FMFConfig

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100036958(self, v3);
  }

  v4 = qword_1000702B0;
  qword_1000702B0 = 0;

  v5.receiver = self;
  v5.super_class = FMFConfig;
  [(FMFConfig *)&v5 dealloc];
}

+ (id)sharedInstance
{
  if (qword_1000702B8 != -1)
  {
    sub_1000381D4();
  }

  v2 = qword_1000702B0;
  if (!qword_1000702B0)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** The FMFConfig singleton seems to have been deallocated. This is unexpected & damaging.", v5, 2u);
    }

    v2 = qword_1000702B0;
  }

  return v2;
}

- (id)initSingleton
{
  v5.receiver = self;
  v5.super_class = FMFConfig;
  v2 = [(FMFConfig *)&v5 init];
  if (v2)
  {
    v3 = sub_100002830();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10003822C(v3);
    }

    objc_storeStrong(&qword_1000702B0, v2);
  }

  return v2;
}

- (BOOL)isFMFAllowed
{
  if ((byte_1000702C0 & 1) == 0)
  {
    v6 = 0;
    v2 = MGCopyAnswerWithError();
    v3 = v2;
    if (v2)
    {
      byte_10006FA78 = CFBooleanGetValue(v2) != 0;
      byte_1000702C0 = 1;
LABEL_7:
      CFRelease(v3);
      return byte_10006FA78;
    }

    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100038270(&v6, v4);
    }

    if (v3)
    {
      goto LABEL_7;
    }
  }

  return byte_10006FA78;
}

@end