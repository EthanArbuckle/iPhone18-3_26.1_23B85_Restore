@interface DMDUserSwitchStakeholder
+ (id)sharedStakeholder;
- (BOOL)inEDUMode;
@end

@implementation DMDUserSwitchStakeholder

+ (id)sharedStakeholder
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000666D0;
  block[3] = &unk_1000CE018;
  block[4] = self;
  if (qword_1000FF288 != -1)
  {
    dispatch_once(&qword_1000FF288, block);
  }

  v2 = qword_1000FF280;

  return v2;
}

- (BOOL)inEDUMode
{
  if (qword_1000FF298 != -1)
  {
    sub_100086B24();
  }

  return byte_1000FF290;
}

@end