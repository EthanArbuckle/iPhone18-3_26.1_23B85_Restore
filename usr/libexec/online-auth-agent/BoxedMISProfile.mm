@interface BoxedMISProfile
+ (id)fromSQLStatement:(sqlite3_stmt *)a3 withMap:(id)a4;
- (BoxedMISProfile)initWithUUID:(id)a3 withTeamID:(id)a4 withName:(id)a5 withExpiry:(id)a6 isUniversal:(unsigned __int8)a7 isAppleInternal:(unsigned __int8)a8 isLocal:(unsigned __int8)a9 isBeta:(unsigned __int8)a10;
@end

@implementation BoxedMISProfile

- (BoxedMISProfile)initWithUUID:(id)a3 withTeamID:(id)a4 withName:(id)a5 withExpiry:(id)a6 isUniversal:(unsigned __int8)a7 isAppleInternal:(unsigned __int8)a8 isLocal:(unsigned __int8)a9 isBeta:(unsigned __int8)a10
{
  v17 = a3;
  v18 = a4;
  v24 = a5;
  v19 = a6;
  v25.receiver = self;
  v25.super_class = BoxedMISProfile;
  v20 = [(BoxedMISProfile *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->UUID, a3);
    objc_storeStrong(&v21->TeamID, a4);
    objc_storeStrong(&v21->Name, a5);
    objc_storeStrong(&v21->Expires, a6);
    v21->ProvisionsAllDevices = a7;
    v21->AppleInternal = a8;
    v21->Local = a9;
    v21->Beta = a10;
    v22 = v21;
  }

  return v21;
}

+ (id)fromSQLStatement:(sqlite3_stmt *)a3 withMap:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKeyedSubscript:@"profile_uuid"];
  v7 = sub_100002F74(a3, [v6 intValue]);

  v8 = [v5 objectForKeyedSubscript:@"profile_team_id"];
  v9 = sub_100002F74(a3, [v8 intValue]);

  v10 = [v5 objectForKeyedSubscript:@"profile_name"];
  v11 = sub_100002F74(a3, [v10 intValue]);

  v12 = [v5 objectForKeyedSubscript:@"profile_expires"];
  v13 = sub_100002FB4(a3, [v12 intValue]);

  v14 = [v5 objectForKeyedSubscript:@"profile_is_for_all_devices"];
  v15 = sqlite3_column_int(a3, [v14 intValue]) != 0;

  v16 = [v5 objectForKeyedSubscript:@"profile_is_apple_internal"];
  v17 = sqlite3_column_int(a3, [v16 intValue]) != 0;

  v18 = [v5 objectForKeyedSubscript:@"profile_is_local"];
  v19 = sqlite3_column_int(a3, [v18 intValue]) != 0;

  v20 = [v5 objectForKeyedSubscript:@"profile_is_beta"];

  LOBYTE(a3) = sqlite3_column_int(a3, [v20 intValue]) != 0;
  BYTE1(v23) = a3;
  LOBYTE(v23) = v19;
  v21 = [[BoxedMISProfile alloc] initWithUUID:v7 withTeamID:v9 withName:v11 withExpiry:v13 isUniversal:v15 isAppleInternal:v17 isLocal:v23 isBeta:?];

  return v21;
}

@end