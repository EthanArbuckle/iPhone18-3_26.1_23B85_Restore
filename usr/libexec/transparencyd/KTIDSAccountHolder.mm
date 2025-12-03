@interface KTIDSAccountHolder
- (KTIDSAccountHolder)initWithIDSAccount:(id)account;
@end

@implementation KTIDSAccountHolder

- (KTIDSAccountHolder)initWithIDSAccount:(id)account
{
  accountCopy = account;
  profileID = [accountCopy profileID];
  accountType = [accountCopy accountType];

  v7 = [(KTIDSAccountHolder *)self initWithIDSDSID:profileID type:accountType];
  return v7;
}

@end