@interface LaunchWarningOperations
- (BOOL)setUserOverride:(BOOL)a3 forID:(unint64_t)a4 error:(id *)a5;
- (BOOL)syncLaunchWarningsAndReturnError:(id *)a3;
- (id)lookupLaunchWarningData:(id)a3 cdhashType:(unsigned int)a4 error:(id *)a5;
@end

@implementation LaunchWarningOperations

- (BOOL)setUserOverride:(BOOL)a3 forID:(unint64_t)a4 error:(id *)a5
{
  v7 = self;
  sub_10002A064(a3, a4);

  return 1;
}

- (id)lookupLaunchWarningData:(id)a3 cdhashType:(unsigned int)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  v9 = sub_1000430B4();
  v11 = v10;

  v12 = sub_10002A5E4(v9, v11, a4);
  v14 = v13;

  sub_10001316C(v9, v11);
  v15.super.isa = sub_100043094().super.isa;
  sub_10001316C(v12, v14);

  return v15.super.isa;
}

- (BOOL)syncLaunchWarningsAndReturnError:(id *)a3
{
  v3 = self;
  sub_10002B1CC();

  return 1;
}

@end