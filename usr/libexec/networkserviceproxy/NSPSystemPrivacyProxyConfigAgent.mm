@interface NSPSystemPrivacyProxyConfigAgent
+ (id)agentType;
@end

@implementation NSPSystemPrivacyProxyConfigAgent

+ (id)agentType
{
  if (qword_100129758 != -1)
  {
    dispatch_once(&qword_100129758, &stru_100109C00);
  }

  v3 = qword_100129750;

  return v3;
}

@end