@interface CLTileSyncSyChange
- (void)dealloc;
- (void)setChangeType:(int64_t)type;
@end

@implementation CLTileSyncSyChange

- (void)setChangeType:(int64_t)type
{
  if (type != 1)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101886EF8();
    }

    v4 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134349056;
      typeCopy = type;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@GtsSync, Unexpected change type, %{public}ld, set, #CloneMe", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101886F0C();
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLTileSyncSyChange;
  [(CLTileSyncSyChange *)&v3 dealloc];
}

@end