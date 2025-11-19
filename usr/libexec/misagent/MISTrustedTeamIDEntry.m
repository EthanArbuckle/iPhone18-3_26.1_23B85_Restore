@interface MISTrustedTeamIDEntry
- (BOOL)isEqual:(id)a3;
- (MISTrustedTeamIDEntry)initWithTeamID:(id)a3 signature:(id)a4;
- (unint64_t)hash;
@end

@implementation MISTrustedTeamIDEntry

- (MISTrustedTeamIDEntry)initWithTeamID:(id)a3 signature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MISTrustedTeamIDEntry;
  v9 = [(MISTrustedTeamIDEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_teamID, a3);
    objc_storeStrong(&v10->_signature, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MISTrustedTeamIDEntry *)self teamID];
    v7 = [v5 teamID];
    if ([v6 isEqual:v7])
    {
      v8 = [(MISTrustedTeamIDEntry *)self signature];
      v9 = [v5 signature];
      if ([v8 isEqual:v9])
      {
        v10 = 1;
      }

      else
      {
        v11 = [(MISTrustedTeamIDEntry *)self signature];
        if (v11)
        {
          v10 = 0;
        }

        else
        {
          v12 = [v5 signature];
          v10 = v12 == 0;
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
  v3 = [(MISTrustedTeamIDEntry *)self teamID];
  v4 = [v3 hash];
  v5 = [(MISTrustedTeamIDEntry *)self signature];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end