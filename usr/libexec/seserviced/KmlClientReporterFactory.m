@interface KmlClientReporterFactory
+ (id)getReporter;
+ (id)getTestReporter;
+ (void)removeTestReporter;
@end

@implementation KmlClientReporterFactory

+ (id)getReporter
{
  v2 = qword_10051B0A8;
  if (!qword_10051B0A8)
  {
    v2 = qword_10051B0A0;
    if (!qword_10051B0A0)
    {
      v3 = objc_alloc_init(KmlWalletReporter);
      v4 = qword_10051B0A0;
      qword_10051B0A0 = v3;

      v2 = qword_10051B0A0;
    }
  }

  v5 = v2;

  return v5;
}

+ (id)getTestReporter
{
  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "+[KmlClientReporterFactory getTestReporter]";
    v9 = 1024;
    v10 = 53;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : ", &v7, 0x12u);
  }

  v3 = qword_10051B0A8;
  if (!qword_10051B0A8)
  {
    v4 = objc_alloc_init(KmlTestClientReporter);
    v5 = qword_10051B0A8;
    qword_10051B0A8 = v4;

    v3 = qword_10051B0A8;
  }

  return v3;
}

+ (void)removeTestReporter
{
  v2 = qword_10051B0A8;
  if (qword_10051B0A8)
  {
    ++*(qword_10051B0A8 + 64);
    if (![*(v2 + 8) count] || *(v2 + 64) >= *(v2 + 68))
    {
      [qword_10051B0A8 cleanup];
      v3 = qword_10051B0A8;
      qword_10051B0A8 = 0;
    }
  }
}

@end