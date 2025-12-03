@interface BoxedMISProfile
+ (id)fromSQLStatement:(sqlite3_stmt *)statement withMap:(id)map;
- (BoxedMISProfile)initWithUUID:(id)d withTeamID:(id)iD withName:(id)name withExpiry:(id)expiry isUniversal:(unsigned __int8)universal isAppleInternal:(unsigned __int8)internal isLocal:(unsigned __int8)local isBeta:(unsigned __int8)self0;
@end

@implementation BoxedMISProfile

- (BoxedMISProfile)initWithUUID:(id)d withTeamID:(id)iD withName:(id)name withExpiry:(id)expiry isUniversal:(unsigned __int8)universal isAppleInternal:(unsigned __int8)internal isLocal:(unsigned __int8)local isBeta:(unsigned __int8)self0
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  expiryCopy = expiry;
  v25.receiver = self;
  v25.super_class = BoxedMISProfile;
  v20 = [(BoxedMISProfile *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->UUID, d);
    objc_storeStrong(&v21->TeamID, iD);
    objc_storeStrong(&v21->Name, name);
    objc_storeStrong(&v21->Expires, expiry);
    v21->ProvisionsAllDevices = universal;
    v21->AppleInternal = internal;
    v21->Local = local;
    v21->Beta = beta;
    v22 = v21;
  }

  return v21;
}

+ (id)fromSQLStatement:(sqlite3_stmt *)statement withMap:(id)map
{
  mapCopy = map;
  v6 = [mapCopy objectForKeyedSubscript:@"profile_uuid"];
  v7 = sub_10000FC3C(statement, [v6 intValue]);

  v8 = [mapCopy objectForKeyedSubscript:@"profile_team_id"];
  v9 = sub_10000FC3C(statement, [v8 intValue]);

  v10 = [mapCopy objectForKeyedSubscript:@"profile_name"];
  v11 = sub_10000FC3C(statement, [v10 intValue]);

  v12 = [mapCopy objectForKeyedSubscript:@"profile_expires"];
  v13 = sub_10000FC7C(statement, [v12 intValue]);

  v14 = [mapCopy objectForKeyedSubscript:@"profile_is_for_all_devices"];
  v15 = sqlite3_column_int(statement, [v14 intValue]) != 0;

  v16 = [mapCopy objectForKeyedSubscript:@"profile_is_apple_internal"];
  v17 = sqlite3_column_int(statement, [v16 intValue]) != 0;

  v18 = [mapCopy objectForKeyedSubscript:@"profile_is_local"];
  v19 = sqlite3_column_int(statement, [v18 intValue]) != 0;

  v20 = [mapCopy objectForKeyedSubscript:@"profile_is_beta"];

  LOBYTE(statement) = sqlite3_column_int(statement, [v20 intValue]) != 0;
  BYTE1(v23) = statement;
  LOBYTE(v23) = v19;
  v21 = [[BoxedMISProfile alloc] initWithUUID:v7 withTeamID:v9 withName:v11 withExpiry:v13 isUniversal:v15 isAppleInternal:v17 isLocal:v23 isBeta:?];

  return v21;
}

@end