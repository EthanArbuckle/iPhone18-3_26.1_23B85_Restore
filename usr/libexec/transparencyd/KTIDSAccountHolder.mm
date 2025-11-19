@interface KTIDSAccountHolder
- (KTIDSAccountHolder)initWithIDSAccount:(id)a3;
@end

@implementation KTIDSAccountHolder

- (KTIDSAccountHolder)initWithIDSAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 profileID];
  v6 = [v4 accountType];

  v7 = [(KTIDSAccountHolder *)self initWithIDSDSID:v5 type:v6];
  return v7;
}

@end