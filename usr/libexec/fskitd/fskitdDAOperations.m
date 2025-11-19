@interface fskitdDAOperations
+ (__DASession)getMainDASession;
+ (void)probeDisk:(id)a3 replyHandler:(id)a4;
+ (void)setFSKitAdditions:(id)a3 disk:(id)a4 replyHandler:(id)a5;
@end

@implementation fskitdDAOperations

+ (__DASession)getMainDASession
{
  if (qword_1000686F0 != -1)
  {
    sub_10000EA98();
  }

  return qword_1000686F8;
}

+ (void)probeDisk:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 getMainDASession];
  if (v8 && DADiskCreateFromBSDName(kCFAllocatorDefault, v8, [v6 UTF8String]))
  {
    v9 = v7;
    DADiskProbeWithBlock();
  }

  else
  {
    (*(v7 + 2))(v7, 4175036417);
  }
}

+ (void)setFSKitAdditions:(id)a3 disk:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [a1 getMainDASession];
  if (v11 && DADiskCreateFromBSDName(kCFAllocatorDefault, v11, [v9 UTF8String]))
  {
    v12 = v10;
    DADiskSetFSKitAdditions();
  }

  else
  {
    (*(v10 + 2))(v10, 4175036417);
  }
}

@end