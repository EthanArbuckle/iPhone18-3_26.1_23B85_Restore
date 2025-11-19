@interface MISTrustedProfileEntry
- (BOOL)isEqual:(id)a3;
- (MISTrustedProfileEntry)initWithUUID:(id)a3 trustedTeamIDEntry:(id)a4;
- (id)redactedDescription;
- (unint64_t)hash;
@end

@implementation MISTrustedProfileEntry

- (MISTrustedProfileEntry)initWithUUID:(id)a3 trustedTeamIDEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MISTrustedProfileEntry;
  v9 = [(MISTrustedProfileEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, a3);
    objc_storeStrong(&v10->_trustedTeamIDEntry, a4);
  }

  return v10;
}

- (id)redactedDescription
{
  uuid = self->_uuid;
  v4 = [(MISTrustedTeamIDEntry *)self->_trustedTeamIDEntry teamID];
  v5 = [(MISTrustedTeamIDEntry *)self->_trustedTeamIDEntry signature];
  v6 = [NSString stringWithFormat:@"MISTrustedProfileEntry(%@, %@, %@)", uuid, v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MISTrustedProfileEntry *)self uuid];
    v7 = [v5 uuid];
    if ([v6 isEqual:v7])
    {
      v8 = [(MISTrustedProfileEntry *)self trustedTeamIDEntry];
      v9 = [v5 trustedTeamIDEntry];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(MISTrustedProfileEntry *)self uuid];
  v4 = [v3 hash];
  v5 = [(MISTrustedProfileEntry *)self trustedTeamIDEntry];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end