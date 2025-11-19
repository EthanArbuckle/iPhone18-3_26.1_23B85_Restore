@interface SESACAccountHelper
+ (id)aaPrimaryAppleAccount;
@end

@implementation SESACAccountHelper

+ (id)aaPrimaryAppleAccount
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];

  return v3;
}

@end