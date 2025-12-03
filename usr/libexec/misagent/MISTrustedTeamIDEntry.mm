@interface MISTrustedTeamIDEntry
- (BOOL)isEqual:(id)equal;
- (MISTrustedTeamIDEntry)initWithTeamID:(id)d signature:(id)signature;
- (unint64_t)hash;
@end

@implementation MISTrustedTeamIDEntry

- (MISTrustedTeamIDEntry)initWithTeamID:(id)d signature:(id)signature
{
  dCopy = d;
  signatureCopy = signature;
  v12.receiver = self;
  v12.super_class = MISTrustedTeamIDEntry;
  v9 = [(MISTrustedTeamIDEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_teamID, d);
    objc_storeStrong(&v10->_signature, signature);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    teamID = [(MISTrustedTeamIDEntry *)self teamID];
    teamID2 = [v5 teamID];
    if ([teamID isEqual:teamID2])
    {
      signature = [(MISTrustedTeamIDEntry *)self signature];
      signature2 = [v5 signature];
      if ([signature isEqual:signature2])
      {
        v10 = 1;
      }

      else
      {
        signature3 = [(MISTrustedTeamIDEntry *)self signature];
        if (signature3)
        {
          v10 = 0;
        }

        else
        {
          signature4 = [v5 signature];
          v10 = signature4 == 0;
        }
      }
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
  teamID = [(MISTrustedTeamIDEntry *)self teamID];
  v4 = [teamID hash];
  signature = [(MISTrustedTeamIDEntry *)self signature];
  v6 = [signature hash];

  return v6 ^ v4;
}

@end