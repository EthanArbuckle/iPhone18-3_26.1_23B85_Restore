@interface SPMembership
+ (BOOL)isLocalAccountUUID:(id)a3;
+ (id)currentMachineUserUUID;
@end

@implementation SPMembership

+ (BOOL)isLocalAccountUUID:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPMembership isLocalAccountUUID: %@", buf, 0xCu);
  }

  memset(uu, 0, sizeof(uu));
  uuid_parse([v3 UTF8String], uu);
  if (mbr_check_membership_by_id())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10132D98C();
    }

    v4 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v7 = v3;
      v8 = 1024;
      v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SPMembership isLocalAccountUUID: %@, LocalGroup: staff(20), result: %i", buf, 0x12u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)currentMachineUserUUID
{
  v2 = getuid();
  memset(uu, 0, sizeof(uu));
  if (mbr_uid_to_uuid(v2, uu))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10132D9D4();
    }

    exit(1);
  }

  memset(v5, 0, sizeof(v5));
  uuid_unparse_upper(uu, v5);
  v3 = [NSString stringWithCString:v5 encoding:1];

  return v3;
}

@end