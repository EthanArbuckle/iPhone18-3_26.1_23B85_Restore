@interface ICSyncSettings
+ (BOOL)hasOptions:(unint64_t)options;
+ (id)sharedSettings;
+ (void)initSharedSettingsWithOptions:(unint64_t)options;
- (ICSyncSettings)initWithOptions:(unint64_t)options;
@end

@implementation ICSyncSettings

+ (void)initSharedSettingsWithOptions:(unint64_t)options
{
  if (qword_100952AD8)
  {
    sub_10076A754();
  }

  v4 = [[ICSyncSettings alloc] initWithOptions:options];
  v5 = qword_100952AD8;
  qword_100952AD8 = v4;
}

+ (id)sharedSettings
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BE318;
  block[3] = &unk_1008DBDD8;
  block[4] = self;
  if (qword_100952AE0 != -1)
  {
    dispatch_once(&qword_100952AE0, block);
  }

  v2 = qword_100952AD8;

  return v2;
}

- (ICSyncSettings)initWithOptions:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = ICSyncSettings;
  v4 = [(ICSyncSettings *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ICSyncSettings *)v4 setOptions:options];
  }

  return v5;
}

+ (BOOL)hasOptions:(unint64_t)options
{
  result = qword_100952AD8;
  if (qword_100952AD8)
  {
    return [qword_100952AD8 hasOptions:options];
  }

  return result;
}

@end