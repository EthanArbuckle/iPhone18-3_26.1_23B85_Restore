@interface MISTrustedProfileEntry
- (BOOL)isEqual:(id)equal;
- (MISTrustedProfileEntry)initWithUUID:(id)d trustedTeamIDEntry:(id)entry;
- (id)redactedDescription;
- (unint64_t)hash;
@end

@implementation MISTrustedProfileEntry

- (MISTrustedProfileEntry)initWithUUID:(id)d trustedTeamIDEntry:(id)entry
{
  dCopy = d;
  entryCopy = entry;
  v12.receiver = self;
  v12.super_class = MISTrustedProfileEntry;
  v9 = [(MISTrustedProfileEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uuid, d);
    objc_storeStrong(&v10->_trustedTeamIDEntry, entry);
  }

  return v10;
}

- (id)redactedDescription
{
  uuid = self->_uuid;
  teamID = [(MISTrustedTeamIDEntry *)self->_trustedTeamIDEntry teamID];
  signature = [(MISTrustedTeamIDEntry *)self->_trustedTeamIDEntry signature];
  v6 = [NSString stringWithFormat:@"MISTrustedProfileEntry(%@, %@, %@)", uuid, teamID, signature];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    uuid = [(MISTrustedProfileEntry *)self uuid];
    uuid2 = [v5 uuid];
    if ([uuid isEqual:uuid2])
    {
      trustedTeamIDEntry = [(MISTrustedProfileEntry *)self trustedTeamIDEntry];
      trustedTeamIDEntry2 = [v5 trustedTeamIDEntry];
      v10 = [trustedTeamIDEntry isEqual:trustedTeamIDEntry2];
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
  uuid = [(MISTrustedProfileEntry *)self uuid];
  v4 = [uuid hash];
  trustedTeamIDEntry = [(MISTrustedProfileEntry *)self trustedTeamIDEntry];
  v6 = [trustedTeamIDEntry hash];

  return v6 ^ v4;
}

@end