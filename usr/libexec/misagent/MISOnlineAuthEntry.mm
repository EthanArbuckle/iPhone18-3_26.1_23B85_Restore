@interface MISOnlineAuthEntry
- (BOOL)isEqual:(id)equal;
- (MISOnlineAuthEntry)initWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period lastSuccessMonotonicTime:(int64_t)time lastSuccessResetCount:(int64_t)count isRejected:(BOOL)rejected isRejectedByWholeProfile:(BOOL)profile;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryDescription;
- (unint64_t)hash;
@end

@implementation MISOnlineAuthEntry

- (MISOnlineAuthEntry)initWithProfileUUID:(id)d cdHash:(id)hash gracePeriod:(int)period lastSuccessMonotonicTime:(int64_t)time lastSuccessResetCount:(int64_t)count isRejected:(BOOL)rejected isRejectedByWholeProfile:(BOOL)profile
{
  dCopy = d;
  hashCopy = hash;
  v21.receiver = self;
  v21.super_class = MISOnlineAuthEntry;
  v18 = [(MISOnlineAuthEntry *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_profileUUID, d);
    objc_storeStrong(&v19->_cdHash, hash);
    v19->_gracePeriod = period;
    v19->_lastSuccessMonotonicTime = time;
    v19->_lastSuccessResetCount = count;
    v19->_isRejected = rejected;
    v19->_isRejectedByWholeProfile = profile;
  }

  return v19;
}

- (id)dictionaryDescription
{
  profileUUID = self->_profileUUID;
  cdHash = self->_cdHash;
  v14[0] = profileUUID;
  v13[0] = @"profileUUID";
  v13[1] = @"cdHash";
  v5 = sub_100004260(cdHash);
  v14[1] = v5;
  v13[2] = @"gracePeriod";
  v6 = [NSNumber numberWithInt:self->_gracePeriod];
  v14[2] = v6;
  v13[3] = @"lastSuccessMonotonicTime";
  v7 = [NSNumber numberWithLongLong:self->_lastSuccessMonotonicTime];
  v14[3] = v7;
  v13[4] = @"lastSuccessResetCount";
  v8 = [NSNumber numberWithLongLong:self->_lastSuccessResetCount];
  v14[4] = v8;
  v13[5] = @"isRejected";
  v9 = [NSNumber numberWithBool:self->_isRejected];
  v14[5] = v9;
  v13[6] = @"isRejectedByWholeProfile";
  v10 = [NSNumber numberWithBool:self->_isRejectedByWholeProfile];
  v14[6] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:7];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    profileUUID = [(MISOnlineAuthEntry *)self profileUUID];
    profileUUID2 = [v5 profileUUID];
    if ([profileUUID isEqual:profileUUID2])
    {
      cdHash = [(MISOnlineAuthEntry *)self cdHash];
      cdHash2 = [v5 cdHash];
      if ([cdHash isEqual:cdHash2] && (v10 = -[MISOnlineAuthEntry gracePeriod](self, "gracePeriod"), v10 == objc_msgSend(v5, "gracePeriod")) && (v11 = -[MISOnlineAuthEntry lastSuccessMonotonicTime](self, "lastSuccessMonotonicTime"), v11 == objc_msgSend(v5, "lastSuccessMonotonicTime")) && (v12 = -[MISOnlineAuthEntry lastSuccessResetCount](self, "lastSuccessResetCount"), v12 == objc_msgSend(v5, "lastSuccessResetCount")) && (v13 = -[MISOnlineAuthEntry isRejected](self, "isRejected"), v13 == objc_msgSend(v5, "isRejected")))
      {
        isRejectedByWholeProfile = [(MISOnlineAuthEntry *)self isRejectedByWholeProfile];
        v14 = isRejectedByWholeProfile ^ [v5 isRejectedByWholeProfile] ^ 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  profileUUID = [(MISOnlineAuthEntry *)self profileUUID];
  v4 = [profileUUID hash];
  cdHash = [(MISOnlineAuthEntry *)self cdHash];
  v6 = &v4[[cdHash hash]];
  v7 = &v6[[(MISOnlineAuthEntry *)self gracePeriod]];
  lastSuccessMonotonicTime = [(MISOnlineAuthEntry *)self lastSuccessMonotonicTime];
  v9 = [(MISOnlineAuthEntry *)self lastSuccessResetCount]+ lastSuccessMonotonicTime + v7;
  v10 = &v9[[(MISOnlineAuthEntry *)self isRejected]];
  v11 = &v10[[(MISOnlineAuthEntry *)self isRejectedByWholeProfile]];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  profileUUID = [(MISOnlineAuthEntry *)self profileUUID];
  [v4 setProfileUUID:profileUUID];

  cdHash = [(MISOnlineAuthEntry *)self cdHash];
  [v4 setCdHash:cdHash];

  [v4 setGracePeriod:{-[MISOnlineAuthEntry gracePeriod](self, "gracePeriod")}];
  [v4 setLastSuccessMonotonicTime:{-[MISOnlineAuthEntry lastSuccessMonotonicTime](self, "lastSuccessMonotonicTime")}];
  [v4 setLastSuccessResetCount:{-[MISOnlineAuthEntry lastSuccessResetCount](self, "lastSuccessResetCount")}];
  [v4 setIsRejected:{-[MISOnlineAuthEntry isRejected](self, "isRejected")}];
  [v4 setIsRejectedByWholeProfile:{-[MISOnlineAuthEntry isRejectedByWholeProfile](self, "isRejectedByWholeProfile")}];
  return v4;
}

@end