@interface MSDLegacyMigrationHelper
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getLastMigrationVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSkyEquivalentVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSydneyEquivalentVersion;
- (BOOL)getDoMigrationForTargetRelease:(id *)release;
- (BOOL)isVersion:(id *)version lowerThan:(id *)than;
- (MSDLegacyMigrationHelper)init;
- (void)saveOSVerionAfterMigration;
- (void)setCurrentOSVersion:(id *)version;
- (void)setLastMigrationVersion:(id *)version;
- (void)setSkyEquivalentVersion:(id *)version;
- (void)setSydneyEquivalentVersion:(id *)version;
@end

@implementation MSDLegacyMigrationHelper

- (MSDLegacyMigrationHelper)init
{
  v19.receiver = self;
  v19.super_class = MSDLegacyMigrationHelper;
  v2 = [(MSDLegacyMigrationHelper *)&v19 init];
  v3 = v2;
  if (v2)
  {
    [(MSDLegacyMigrationHelper *)v2 getSkyEquivalentVersion];
    v15 = v17;
    v16 = v18;
    [(MSDLegacyMigrationHelper *)v3 setSkyEquivalentVersion:&v15];
    [(MSDLegacyMigrationHelper *)v3 getSydneyEquivalentVersion];
    v15 = v13;
    v16 = v14;
    [(MSDLegacyMigrationHelper *)v3 setSydneyEquivalentVersion:&v15];
    [(MSDLegacyMigrationHelper *)v3 getLastMigrationVersion];
    v15 = v11;
    v16 = v12;
    [(MSDLegacyMigrationHelper *)v3 setLastMigrationVersion:&v15];
    v4 = +[NSProcessInfo processInfo];
    v5 = v4;
    if (v4)
    {
      [v4 operatingSystemVersion];
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    v15 = v9;
    v16 = v10;
    [(MSDLegacyMigrationHelper *)v3 setCurrentOSVersion:&v15];

    [(MSDLegacyMigrationHelper *)v3 skyEquivalentVersion];
    [(MSDLegacyMigrationHelper *)v3 setDoPreSkyMigration:[(MSDLegacyMigrationHelper *)v3 getDoMigrationForTargetRelease:&v15]];
    [(MSDLegacyMigrationHelper *)v3 sydneyEquivalentVersion];
    [(MSDLegacyMigrationHelper *)v3 setDoPreSydneyMigration:[(MSDLegacyMigrationHelper *)v3 getDoMigrationForTargetRelease:&v15]];
    [(MSDLegacyMigrationHelper *)v3 currentOSVersion];
    v6 = [(MSDLegacyMigrationHelper *)v3 stringFromNSOperatingSystemVersion:&v15];
    [(MSDLegacyMigrationHelper *)v3 setOsVersionStr:v6];

    v7 = v3;
  }

  return v3;
}

- (void)saveOSVerionAfterMigration
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    osVersionStr = [(MSDLegacyMigrationHelper *)self osVersionStr];
    v7 = 138543362;
    v8 = osVersionStr;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving last migration OS version: %{public}@", &v7, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  osVersionStr2 = [(MSDLegacyMigrationHelper *)self osVersionStr];
  [v5 setObject:osVersionStr2 forKey:@"LastMigrationVersion"];
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSkyEquivalentVersion
{
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 15;
  return self;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSydneyEquivalentVersion
{
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 16;
  return self;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getLastMigrationVersion
{
  retstr->var1 = -1;
  retstr->var2 = -1;
  retstr->var0 = -1;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"LastMigrationVersion"];

  if (v5)
  {
    v6 = [v5 componentsSeparatedByString:@"."];
    v7 = v6;
    if (v6 && [v6 count]== 3)
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      retstr->var0 = [v8 integerValue];

      v9 = [v7 objectAtIndexedSubscript:1];
      retstr->var1 = [v9 integerValue];

      v10 = [v7 objectAtIndexedSubscript:2];
      retstr->var2 = [v10 integerValue];
    }

    else
    {
      sub_1000E53C8(v5);
    }
  }

  else
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5470(v7);
    }
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Last migration OS version: %{public}@", &v13, 0xCu);
  }

  return result;
}

- (BOOL)getDoMigrationForTargetRelease:(id *)release
{
  buf = *release;
  v5 = [(MSDLegacyMigrationHelper *)self stringFromNSOperatingSystemVersion:&buf];
  [(MSDLegacyMigrationHelper *)self lastMigrationVersion];
  if (v11 == -1)
  {
    v6 = 1;
  }

  else
  {
    [(MSDLegacyMigrationHelper *)self lastMigrationVersion];
    v9 = *&release->var0;
    var2 = release->var2;
    v6 = [(MSDLegacyMigrationHelper *)self isVersion:&buf lowerThan:&v9];
  }

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.var0) = 138543618;
    *(&buf.var0 + 4) = v5;
    WORD2(buf.var1) = 1026;
    *(&buf.var1 + 6) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Need legacy migration for target OS release (%{public}@): %{public, BOOL}d", &buf, 0x12u);
  }

  return v6;
}

- (BOOL)isVersion:(id *)version lowerThan:(id *)than
{
  v4 = version->var0 < than->var0;
  if (version->var0 == than->var0)
  {
    var1 = version->var1;
    v6 = than->var1;
    v4 = var1 < v6;
    if (var1 == v6)
    {
      return version->var2 < than->var2;
    }
  }

  return v4;
}

- (void)setSkyEquivalentVersion:(id *)version
{
  v3 = *&version->var0;
  self->_skyEquivalentVersion.patchVersion = version->var2;
  *&self->_skyEquivalentVersion.majorVersion = v3;
}

- (void)setSydneyEquivalentVersion:(id *)version
{
  v3 = *&version->var0;
  self->_sydneyEquivalentVersion.patchVersion = version->var2;
  *&self->_sydneyEquivalentVersion.majorVersion = v3;
}

- (void)setLastMigrationVersion:(id *)version
{
  v3 = *&version->var0;
  self->_lastMigrationVersion.patchVersion = version->var2;
  *&self->_lastMigrationVersion.majorVersion = v3;
}

- (void)setCurrentOSVersion:(id *)version
{
  v3 = *&version->var0;
  self->_currentOSVersion.patchVersion = version->var2;
  *&self->_currentOSVersion.majorVersion = v3;
}

@end