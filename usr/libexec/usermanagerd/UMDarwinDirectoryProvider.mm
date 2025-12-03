@interface UMDarwinDirectoryProvider
- (BOOL)updateLocalUsersAndGroupsWithError:(id *)error updater:(id)updater;
- (void)initializeLocalUsersAndGroups:(id)groups;
@end

@implementation UMDarwinDirectoryProvider

- (void)initializeLocalUsersAndGroups:(id)groups
{
  groupsCopy = groups;
  v3 = groupsCopy;
  DDIInitializeLocalUsersAndGroups();
}

- (BOOL)updateLocalUsersAndGroupsWithError:(id *)error updater:(id)updater
{
  updaterCopy = updater;
  if (error)
  {
    *error = 0;
  }

  v6 = updaterCopy;
  v7 = DDIUpdateLocalUsersAndGroups();
  v8 = 0;
  if ((v7 & 1) == 0)
  {
    if (qword_1000EB4F8 != -1)
    {
      sub_100098B44();
    }

    v9 = qword_1000EB4F0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    if (error)
    {
      v14 = v8;
      *error = v8;
    }
  }

  return v7;
}

@end