@interface LaunchWarningOperations
- (BOOL)setUserOverride:(BOOL)override forID:(unint64_t)d error:(id *)error;
- (BOOL)syncLaunchWarningsAndReturnError:(id *)error;
- (id)lookupLaunchWarningData:(id)data cdhashType:(unsigned int)type error:(id *)error;
@end

@implementation LaunchWarningOperations

- (BOOL)setUserOverride:(BOOL)override forID:(unint64_t)d error:(id *)error
{
  selfCopy = self;
  sub_10002A064(override, d);

  return 1;
}

- (id)lookupLaunchWarningData:(id)data cdhashType:(unsigned int)type error:(id *)error
{
  dataCopy = data;
  selfCopy = self;
  v9 = sub_1000430B4();
  v11 = v10;

  v12 = sub_10002A5E4(v9, v11, type);
  v14 = v13;

  sub_10001316C(v9, v11);
  v15.super.isa = sub_100043094().super.isa;
  sub_10001316C(v12, v14);

  return v15.super.isa;
}

- (BOOL)syncLaunchWarningsAndReturnError:(id *)error
{
  selfCopy = self;
  sub_10002B1CC();

  return 1;
}

@end