@interface CLMicroLocationEnvironment
+ (id)shared;
- (BOOL)isTestingEnvironment;
- (CLMicroLocationEnvironment)init;
@end

@implementation CLMicroLocationEnvironment

+ (id)shared
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003CA7D0;
  block[3] = &unk_102447418;
  block[4] = self;
  if (qword_102655FE8 != -1)
  {
    dispatch_once(&qword_102655FE8, block);
  }

  return qword_102655FE0;
}

- (CLMicroLocationEnvironment)init
{
  v3.receiver = self;
  v3.super_class = CLMicroLocationEnvironment;
  result = [(CLMicroLocationEnvironment *)&v3 init];
  if (result)
  {
    result->_isTestingEnvironment = 0;
  }

  return result;
}

- (BOOL)isTestingEnvironment
{
  if (!self->_isTestingEnvironment)
  {
    return 0;
  }

  sub_10001A3E8();

  return sub_100328630();
}

@end