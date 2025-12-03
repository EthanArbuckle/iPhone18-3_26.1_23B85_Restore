@interface fskitdDAOperations
+ (__DASession)getMainDASession;
+ (void)probeDisk:(id)disk replyHandler:(id)handler;
+ (void)setFSKitAdditions:(id)additions disk:(id)disk replyHandler:(id)handler;
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

+ (void)probeDisk:(id)disk replyHandler:(id)handler
{
  diskCopy = disk;
  handlerCopy = handler;
  getMainDASession = [self getMainDASession];
  if (getMainDASession && DADiskCreateFromBSDName(kCFAllocatorDefault, getMainDASession, [diskCopy UTF8String]))
  {
    v9 = handlerCopy;
    DADiskProbeWithBlock();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 4175036417);
  }
}

+ (void)setFSKitAdditions:(id)additions disk:(id)disk replyHandler:(id)handler
{
  additionsCopy = additions;
  diskCopy = disk;
  handlerCopy = handler;
  getMainDASession = [self getMainDASession];
  if (getMainDASession && DADiskCreateFromBSDName(kCFAllocatorDefault, getMainDASession, [diskCopy UTF8String]))
  {
    v12 = handlerCopy;
    DADiskSetFSKitAdditions();
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 4175036417);
  }
}

@end