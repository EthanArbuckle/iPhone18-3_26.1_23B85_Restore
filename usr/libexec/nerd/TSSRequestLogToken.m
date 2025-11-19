@interface TSSRequestLogToken
@end

@implementation TSSRequestLogToken

void __TSSRequestLogToken_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.accessoryupdater.uarp", "personalization");
  v2 = TSSRequestLogToken_logToken;
  TSSRequestLogToken_logToken = v1;
}

@end