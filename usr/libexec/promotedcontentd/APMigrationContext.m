@interface APMigrationContext
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)currentVersion;
- (APMigrationContext)init;
- (APMigrationContext)initWithStorage:(id)a3 currentVersion:(id *)a4;
- (BOOL)hasOSVersionChanged;
- (void)done;
@end

@implementation APMigrationContext

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)currentVersion
{
  v3 = *(&self->var2 + OBJC_IVAR___APMigrationContext_currentVersion);
  *&retstr->var0 = *(&self->var0 + OBJC_IVAR___APMigrationContext_currentVersion);
  retstr->var2 = v3;
  return self;
}

- (APMigrationContext)initWithStorage:(id)a3 currentVersion:(id *)a4
{
  var0 = a4->var0;
  var1 = a4->var1;
  var2 = a4->var2;
  v7 = a3;
  v8 = sub_1001E4C54(v7, var0, var1, var2);

  return v8;
}

- (BOOL)hasOSVersionChanged
{
  v2 = self + OBJC_IVAR___APMigrationContext_previousVersion;
  if (self->previousVersion[OBJC_IVAR___APMigrationContext_previousVersion + 16])
  {
    return 1;
  }

  return *v2 != *(&self->super.isa + OBJC_IVAR___APMigrationContext_currentVersion) || *(v2 + 1) != *&self->previousVersion[OBJC_IVAR___APMigrationContext_currentVersion] || *(v2 + 2) != *&self->previousVersion[OBJC_IVAR___APMigrationContext_currentVersion + 8];
}

- (void)done
{
  v2 = *(&self->super.isa + OBJC_IVAR___APMigrationContext_storage);
  v3 = self;
  sub_1001E37D4();
  v4 = sub_100398F28();

  v5 = sub_100398F28();
  [v2 setObject:v4 forKey:v5];
}

- (APMigrationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end