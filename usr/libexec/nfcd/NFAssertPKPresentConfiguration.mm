@interface NFAssertPKPresentConfiguration
+ (id)configurationWithOptions:(unint64_t)options expressPassIDList:(id)list clientInfo:(id)info;
@end

@implementation NFAssertPKPresentConfiguration

+ (id)configurationWithOptions:(unint64_t)options expressPassIDList:(id)list clientInfo:(id)info
{
  infoCopy = info;
  listCopy = list;
  v9 = objc_opt_new();
  [v9 setOptions:options];
  [v9 setExpressPassIDList:listCopy];

  [v9 setClientInfo:infoCopy];

  return v9;
}

@end