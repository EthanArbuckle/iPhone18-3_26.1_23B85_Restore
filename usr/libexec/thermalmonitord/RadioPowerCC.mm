@interface RadioPowerCC
- (unint64_t)convertDetailStringToValue:(__CFString *)value;
- (void)defaultAction;
@end

@implementation RadioPowerCC

- (unint64_t)convertDetailStringToValue:(__CFString *)value
{
  Length = CFStringGetLength(value);
  if (Length == 4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(value, v5);
      if (v5 == 3)
      {
        v6 += CharacterAtIndex;
      }

      else
      {
        v6 = (v6 + CharacterAtIndex) << 8;
      }

      ++v5;
    }

    while (v5 != 4);
  }

  else
  {
    v8 = Length;
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057448(value, v8, v9);
    }

    return 0;
  }

  return v6;
}

- (void)defaultAction
{
  if ([(ComponentControl *)self isCPMSControlEnabled])
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000574D0(self);
    }

    [(RadioCC *)self setCPMSMitigationState:1];
  }
}

@end