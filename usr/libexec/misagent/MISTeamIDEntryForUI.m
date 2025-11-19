@interface MISTeamIDEntryForUI
- (BOOL)isEqual:(id)a3;
- (MISTeamIDEntryForUI)initWithTeamID:(id)a3 teamName:(id)a4 trusted:(BOOL)a5 hasAuxiliarySignature:(BOOL)a6;
- (unint64_t)hash;
@end

@implementation MISTeamIDEntryForUI

- (MISTeamIDEntryForUI)initWithTeamID:(id)a3 teamName:(id)a4 trusted:(BOOL)a5 hasAuxiliarySignature:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MISTeamIDEntryForUI;
  v13 = [(MISTeamIDEntryForUI *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_teamID, a3);
    objc_storeStrong(&v14->_teamName, a4);
    v14->_trusted = a5;
    v14->_hasAuxiliarySignature = a6;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MISTeamIDEntryForUI *)self teamID];
    v7 = [v5 teamID];
    if ([v6 isEqual:v7])
    {
      v8 = [(MISTeamIDEntryForUI *)self teamName];
      v9 = [v5 teamName];
      if ([v8 isEqual:v9] && (v10 = -[MISTeamIDEntryForUI trusted](self, "trusted"), v10 == objc_msgSend(v5, "trusted")))
      {
        v12 = [(MISTeamIDEntryForUI *)self hasAuxiliarySignature];
        v11 = v12 ^ [v5 hasAuxiliarySignature] ^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MISTeamIDEntryForUI *)self teamID];
  v4 = [v3 hash];
  v5 = [(MISTeamIDEntryForUI *)self teamName];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(MISTeamIDEntryForUI *)self trusted];
  v8 = [(MISTeamIDEntryForUI *)self hasAuxiliarySignature];

  return v7 ^ v8;
}

@end