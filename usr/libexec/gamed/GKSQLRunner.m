@interface GKSQLRunner
+ (id)runnerWithConnection:(id)a3;
- (GKSQLRunner)initWithConnection:(id)a3;
- (int)runSQL:(id)a3;
- (int)runSQLFromFileAtPath:(id)a3;
@end

@implementation GKSQLRunner

+ (id)runnerWithConnection:(id)a3
{
  v3 = a3;
  v4 = [[GKSQLRunner alloc] initWithConnection:v3];

  return v4;
}

- (GKSQLRunner)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKSQLRunner;
  v5 = [(GKSQLRunner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKSQLRunner *)v5 setConnection:v4];
  }

  return v6;
}

- (int)runSQLFromFileAtPath:(id)a3
{
  v4 = [NSString stringWithContentsOfFile:a3 encoding:4 error:0];
  LODWORD(self) = [(GKSQLRunner *)self runSQL:v4];

  return self;
}

- (int)runSQL:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  connection = self->_connection;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011A1AC;
  v8[3] = &unk_100367420;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [(GKDatabaseConnection *)connection performSync:v8];
  LODWORD(connection) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return connection;
}

@end