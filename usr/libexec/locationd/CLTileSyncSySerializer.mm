@interface CLTileSyncSySerializer
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
@end

@implementation CLTileSyncSySerializer

- (id)dataFromChange:(id)change
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [objc_alloc(off_1025D57A8()) initWithProperties:{objc_msgSend(change, "properties")}];
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67240192;
    v8[1] = isKindOfClass & 1;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "@GtsSync, CsSerial, dataFromChange, isKind, %{public}d\n", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101886FFC((isKindOfClass & 1));
    if (isKindOfClass)
    {
      return [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    }
  }

  else if (isKindOfClass)
  {
    return [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  }

  return 0;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  if (qword_1025D4630 != -1)
  {
    sub_101886EF8();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    typeCopy = type;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@GtsWarn, GizmoSync, changeFromData, %ld, #CloneMe", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018870E8();
  }

  return 0;
}

@end