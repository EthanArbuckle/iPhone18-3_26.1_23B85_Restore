@interface NSPSystemPrivacyProxyDNSAgent
+ (id)agentType;
@end

@implementation NSPSystemPrivacyProxyDNSAgent

+ (id)agentType
{
  if (qword_1001297A8 != -1)
  {
    dispatch_once(&qword_1001297A8, &stru_100109E18);
  }

  v3 = qword_1001297A0;

  return v3;
}

@end