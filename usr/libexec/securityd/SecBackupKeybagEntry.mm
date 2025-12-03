@interface SecBackupKeybagEntry
+ (id)fromDatabase:(id)database error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)state:(id)state;
+ (id)tryFromDatabase:(id)database error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (SecBackupKeybagEntry)initWithPublicKey:(id)key publickeyHash:(id)hash user:(id)user;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
@end

@implementation SecBackupKeybagEntry

- (id)sqlValues
{
  v11[0] = @"publickey";
  publickey = [(SecBackupKeybagEntry *)self publickey];
  v4 = [publickey base64EncodedStringWithOptions:0];
  v12[0] = v4;
  v11[1] = @"publickeyHash";
  publickeyHash = [(SecBackupKeybagEntry *)self publickeyHash];
  v6 = [publickeyHash base64EncodedStringWithOptions:0];
  v12[1] = v6;
  v11[2] = @"musr";
  musr = [(SecBackupKeybagEntry *)self musr];
  v8 = [musr base64EncodedStringWithOptions:0];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)whereClauseToFindSelf
{
  v5 = @"publickeyHash";
  publickeyHash = [(SecBackupKeybagEntry *)self publickeyHash];
  v6 = publickeyHash;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    publickeyHash = [(SecBackupKeybagEntry *)self publickeyHash];
    publickeyHash2 = [v5 publickeyHash];

    v8 = [publickeyHash isEqual:publickeyHash2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SecBackupKeybagEntry)initWithPublicKey:(id)key publickeyHash:(id)hash user:(id)user
{
  keyCopy = key;
  hashCopy = hash;
  userCopy = user;
  v15.receiver = self;
  v15.super_class = SecBackupKeybagEntry;
  v12 = [(SecBackupKeybagEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_publickey, key);
    objc_storeStrong(&v13->_publickeyHash, hash);
    objc_storeStrong(&v13->_musr, user);
  }

  return v13;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [rowCopy objectForKeyedSubscript:@"publickey"];
  asBase64DecodedData = [v4 asBase64DecodedData];

  v6 = [rowCopy objectForKeyedSubscript:@"publickeyHash"];
  asBase64DecodedData2 = [v6 asBase64DecodedData];

  v8 = [rowCopy objectForKeyedSubscript:@"musr"];

  asBase64DecodedData3 = [v8 asBase64DecodedData];

  v10 = 0;
  if (asBase64DecodedData && asBase64DecodedData2 && asBase64DecodedData3)
  {
    v10 = [[SecBackupKeybagEntry alloc] initWithPublicKey:asBase64DecodedData publickeyHash:asBase64DecodedData2 user:asBase64DecodedData3];
  }

  return v10;
}

+ (id)tryFromDatabase:(id)database error:(id *)error
{
  v10 = @"publickeyHash";
  databaseCopy = database;
  databaseCopy2 = database;
  v7 = [NSDictionary dictionaryWithObjects:&databaseCopy forKeys:&v10 count:1];

  v8 = [self tryFromDatabaseWhere:v7 error:error];

  return v8;
}

+ (id)fromDatabase:(id)database error:(id *)error
{
  v10 = @"publickeyHash";
  databaseCopy = database;
  databaseCopy2 = database;
  v7 = [NSDictionary dictionaryWithObjects:&databaseCopy forKeys:&v10 count:1];

  v8 = [self fromDatabaseWhere:v7 error:error];

  return v8;
}

+ (id)state:(id)state
{
  stateCopy = state;
  v8 = 0;
  v4 = [SecBackupKeybagEntry tryFromDatabase:stateCopy error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = stateCopy;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CKKS: error fetching SecBackupKeybagEntry(%@): %@", buf, 0x16u);
    }
  }

  if (!v4)
  {
    v4 = [[SecBackupKeybagEntry alloc] initWithPublicKey:0 publickeyHash:stateCopy user:0];
  }

  return v4;
}

@end