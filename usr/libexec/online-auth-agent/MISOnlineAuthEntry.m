@interface MISOnlineAuthEntry
- (BOOL)isEqual:(id)a3;
- (MISOnlineAuthEntry)initWithProfileUUID:(id)a3 cdHash:(id)a4 gracePeriod:(int)a5 lastSuccessMonotonicTime:(int64_t)a6 lastSuccessResetCount:(int64_t)a7 isRejected:(BOOL)a8 isRejectedByWholeProfile:(BOOL)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryDescription;
- (unint64_t)hash;
@end

@implementation MISOnlineAuthEntry

- (MISOnlineAuthEntry)initWithProfileUUID:(id)a3 cdHash:(id)a4 gracePeriod:(int)a5 lastSuccessMonotonicTime:(int64_t)a6 lastSuccessResetCount:(int64_t)a7 isRejected:(BOOL)a8 isRejectedByWholeProfile:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v21.receiver = self;
  v21.super_class = MISOnlineAuthEntry;
  v18 = [(MISOnlineAuthEntry *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_profileUUID, a3);
    objc_storeStrong(&v19->_cdHash, a4);
    v19->_gracePeriod = a5;
    v19->_lastSuccessMonotonicTime = a6;
    v19->_lastSuccessResetCount = a7;
    v19->_isRejected = a8;
    v19->_isRejectedByWholeProfile = a9;
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
  v5 = sub_100012098(cdHash);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(MISOnlineAuthEntry *)self profileUUID];
    v7 = [v5 profileUUID];
    if ([v6 isEqual:v7])
    {
      v8 = [(MISOnlineAuthEntry *)self cdHash];
      v9 = [v5 cdHash];
      if ([v8 isEqual:v9] && (v10 = -[MISOnlineAuthEntry gracePeriod](self, "gracePeriod"), v10 == objc_msgSend(v5, "gracePeriod")) && (v11 = -[MISOnlineAuthEntry lastSuccessMonotonicTime](self, "lastSuccessMonotonicTime"), v11 == objc_msgSend(v5, "lastSuccessMonotonicTime")) && (v12 = -[MISOnlineAuthEntry lastSuccessResetCount](self, "lastSuccessResetCount"), v12 == objc_msgSend(v5, "lastSuccessResetCount")) && (v13 = -[MISOnlineAuthEntry isRejected](self, "isRejected"), v13 == objc_msgSend(v5, "isRejected")))
      {
        v16 = [(MISOnlineAuthEntry *)self isRejectedByWholeProfile];
        v14 = v16 ^ [v5 isRejectedByWholeProfile] ^ 1;
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
  v3 = [(MISOnlineAuthEntry *)self profileUUID];
  v4 = [v3 hash];
  v5 = [(MISOnlineAuthEntry *)self cdHash];
  v6 = &v4[[v5 hash]];
  v7 = &v6[[(MISOnlineAuthEntry *)self gracePeriod]];
  v8 = [(MISOnlineAuthEntry *)self lastSuccessMonotonicTime];
  v9 = [(MISOnlineAuthEntry *)self lastSuccessResetCount]+ v8 + v7;
  v10 = &v9[[(MISOnlineAuthEntry *)self isRejected]];
  v11 = &v10[[(MISOnlineAuthEntry *)self isRejectedByWholeProfile]];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MISOnlineAuthEntry *)self profileUUID];
  [v4 setProfileUUID:v5];

  v6 = [(MISOnlineAuthEntry *)self cdHash];
  [v4 setCdHash:v6];

  [v4 setGracePeriod:{-[MISOnlineAuthEntry gracePeriod](self, "gracePeriod")}];
  [v4 setLastSuccessMonotonicTime:{-[MISOnlineAuthEntry lastSuccessMonotonicTime](self, "lastSuccessMonotonicTime")}];
  [v4 setLastSuccessResetCount:{-[MISOnlineAuthEntry lastSuccessResetCount](self, "lastSuccessResetCount")}];
  [v4 setIsRejected:{-[MISOnlineAuthEntry isRejected](self, "isRejected")}];
  [v4 setIsRejectedByWholeProfile:{-[MISOnlineAuthEntry isRejectedByWholeProfile](self, "isRejectedByWholeProfile")}];
  return v4;
}

@end