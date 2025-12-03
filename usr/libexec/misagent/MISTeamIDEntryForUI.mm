@interface MISTeamIDEntryForUI
- (BOOL)isEqual:(id)equal;
- (MISTeamIDEntryForUI)initWithTeamID:(id)d teamName:(id)name trusted:(BOOL)trusted hasAuxiliarySignature:(BOOL)signature;
- (unint64_t)hash;
@end

@implementation MISTeamIDEntryForUI

- (MISTeamIDEntryForUI)initWithTeamID:(id)d teamName:(id)name trusted:(BOOL)trusted hasAuxiliarySignature:(BOOL)signature
{
  dCopy = d;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = MISTeamIDEntryForUI;
  v13 = [(MISTeamIDEntryForUI *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_teamID, d);
    objc_storeStrong(&v14->_teamName, name);
    v14->_trusted = trusted;
    v14->_hasAuxiliarySignature = signature;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    teamID = [(MISTeamIDEntryForUI *)self teamID];
    teamID2 = [v5 teamID];
    if ([teamID isEqual:teamID2])
    {
      teamName = [(MISTeamIDEntryForUI *)self teamName];
      teamName2 = [v5 teamName];
      if ([teamName isEqual:teamName2] && (v10 = -[MISTeamIDEntryForUI trusted](self, "trusted"), v10 == objc_msgSend(v5, "trusted")))
      {
        hasAuxiliarySignature = [(MISTeamIDEntryForUI *)self hasAuxiliarySignature];
        v11 = hasAuxiliarySignature ^ [v5 hasAuxiliarySignature] ^ 1;
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
  teamID = [(MISTeamIDEntryForUI *)self teamID];
  v4 = [teamID hash];
  teamName = [(MISTeamIDEntryForUI *)self teamName];
  v6 = [teamName hash] ^ v4;
  v7 = v6 ^ [(MISTeamIDEntryForUI *)self trusted];
  hasAuxiliarySignature = [(MISTeamIDEntryForUI *)self hasAuxiliarySignature];

  return v7 ^ hasAuxiliarySignature;
}

@end