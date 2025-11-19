@interface SecBackupKeybagEntry
+ (id)fromDatabase:(id)a3 error:(id *)a4;
+ (id)fromDatabaseRow:(id)a3;
+ (id)state:(id)a3;
+ (id)tryFromDatabase:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (SecBackupKeybagEntry)initWithPublicKey:(id)a3 publickeyHash:(id)a4 user:(id)a5;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
@end

@implementation SecBackupKeybagEntry

- (id)sqlValues
{
  v11[0] = @"publickey";
  v3 = [(SecBackupKeybagEntry *)self publickey];
  v4 = [v3 base64EncodedStringWithOptions:0];
  v12[0] = v4;
  v11[1] = @"publickeyHash";
  v5 = [(SecBackupKeybagEntry *)self publickeyHash];
  v6 = [v5 base64EncodedStringWithOptions:0];
  v12[1] = v6;
  v11[2] = @"musr";
  v7 = [(SecBackupKeybagEntry *)self musr];
  v8 = [v7 base64EncodedStringWithOptions:0];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)whereClauseToFindSelf
{
  v5 = @"publickeyHash";
  v2 = [(SecBackupKeybagEntry *)self publickeyHash];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SecBackupKeybagEntry *)self publickeyHash];
    v7 = [v5 publickeyHash];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (SecBackupKeybagEntry)initWithPublicKey:(id)a3 publickeyHash:(id)a4 user:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SecBackupKeybagEntry;
  v12 = [(SecBackupKeybagEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_publickey, a3);
    objc_storeStrong(&v13->_publickeyHash, a4);
    objc_storeStrong(&v13->_musr, a5);
  }

  return v13;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"publickey"];
  v5 = [v4 asBase64DecodedData];

  v6 = [v3 objectForKeyedSubscript:@"publickeyHash"];
  v7 = [v6 asBase64DecodedData];

  v8 = [v3 objectForKeyedSubscript:@"musr"];

  v9 = [v8 asBase64DecodedData];

  v10 = 0;
  if (v5 && v7 && v9)
  {
    v10 = [[SecBackupKeybagEntry alloc] initWithPublicKey:v5 publickeyHash:v7 user:v9];
  }

  return v10;
}

+ (id)tryFromDatabase:(id)a3 error:(id *)a4
{
  v10 = @"publickeyHash";
  v11 = a3;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [a1 tryFromDatabaseWhere:v7 error:a4];

  return v8;
}

+ (id)fromDatabase:(id)a3 error:(id *)a4
{
  v10 = @"publickeyHash";
  v11 = a3;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [a1 fromDatabaseWhere:v7 error:a4];

  return v8;
}

+ (id)state:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [SecBackupKeybagEntry tryFromDatabase:v3 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CKKS: error fetching SecBackupKeybagEntry(%@): %@", buf, 0x16u);
    }
  }

  if (!v4)
  {
    v4 = [[SecBackupKeybagEntry alloc] initWithPublicKey:0 publickeyHash:v3 user:0];
  }

  return v4;
}

@end