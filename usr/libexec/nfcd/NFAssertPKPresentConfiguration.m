@interface NFAssertPKPresentConfiguration
+ (id)configurationWithOptions:(unint64_t)a3 expressPassIDList:(id)a4 clientInfo:(id)a5;
@end

@implementation NFAssertPKPresentConfiguration

+ (id)configurationWithOptions:(unint64_t)a3 expressPassIDList:(id)a4 clientInfo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setOptions:a3];
  [v9 setExpressPassIDList:v8];

  [v9 setClientInfo:v7];

  return v9;
}

@end