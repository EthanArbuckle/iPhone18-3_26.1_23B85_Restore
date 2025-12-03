@interface SESACAccountHelper
+ (id)aaPrimaryAppleAccount;
@end

@implementation SESACAccountHelper

+ (id)aaPrimaryAppleAccount
{
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];

  return aa_primaryAppleAccount;
}

@end