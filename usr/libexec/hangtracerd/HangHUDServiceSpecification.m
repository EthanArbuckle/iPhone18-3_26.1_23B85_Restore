@interface HangHUDServiceSpecification
+ (BSServiceInterface)interface;
@end

@implementation HangHUDServiceSpecification

+ (BSServiceInterface)interface
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017CA8;
  block[3] = &unk_100055408;
  block[4] = a1;
  if (qword_100067A78 != -1)
  {
    dispatch_once(&qword_100067A78, block);
  }

  v2 = qword_100067A70;

  return v2;
}

@end