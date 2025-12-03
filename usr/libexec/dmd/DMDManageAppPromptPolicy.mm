@interface DMDManageAppPromptPolicy
+ (double)promptWindowInterval;
+ (int64_t)promptsAllowedBeforeAutomaticDenial;
- (BOOL)isPromptAllowedRightNow;
- (DMDManageAppPromptPolicy)init;
- (id)_now;
- (id)_timestampDataForWritingToFile;
- (id)_timestampDictionaryForWritingToFile;
- (void)_removePromptTimestampsOutsideIntervalEnding:(id)ending;
- (void)readTimestampsFromFile;
- (void)recordNewPrompt;
- (void)writeTimestampsToFile;
@end

@implementation DMDManageAppPromptPolicy

+ (int64_t)promptsAllowedBeforeAutomaticDenial
{
  if (!+[DMDFeatureFlags isAppleInternal])
  {
    return 3;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"DMDMaxManagementDenialsBeforeAutomaticRefusal"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"DMDMaxManagementDenialsBeforeAutomaticRefusal"];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (double)promptWindowInterval
{
  if (!+[DMDFeatureFlags isAppleInternal])
  {
    return 86400.0;
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"DMDManagementPromptWindowMinutes"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"DMDManagementPromptWindowMinutes"] * 60.0;
  }

  else
  {
    v4 = 86400.0;
  }

  return v4;
}

- (DMDManageAppPromptPolicy)init
{
  v8.receiver = self;
  v8.super_class = DMDManageAppPromptPolicy;
  v2 = [(DMDManageAppPromptPolicy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    promptTimestamps = v2->_promptTimestamps;
    v2->_promptTimestamps = &__NSArray0__struct;

    v3->_promptsAllowed = +[DMDManageAppPromptPolicy promptsAllowedBeforeAutomaticDenial];
    +[DMDManageAppPromptPolicy promptWindowInterval];
    v3->_promptResetTimeInterval = v5;
    overrideDate = v3->_overrideDate;
    v3->_overrideDate = 0;
  }

  return v3;
}

- (BOOL)isPromptAllowedRightNow
{
  selfCopy = self;
  _now = [(DMDManageAppPromptPolicy *)self _now];
  [(DMDManageAppPromptPolicy *)selfCopy _removePromptTimestampsOutsideIntervalEnding:_now];
  promptTimestamps = [(DMDManageAppPromptPolicy *)selfCopy promptTimestamps];
  v5 = [promptTimestamps count];
  LOBYTE(selfCopy) = v5 < [(DMDManageAppPromptPolicy *)selfCopy promptsAllowed];

  return selfCopy;
}

- (void)recordNewPrompt
{
  _now = [(DMDManageAppPromptPolicy *)self _now];
  promptTimestamps = [(DMDManageAppPromptPolicy *)self promptTimestamps];
  v4 = [promptTimestamps arrayByAddingObject:_now];
  [(DMDManageAppPromptPolicy *)self setPromptTimestamps:v4];

  [(DMDManageAppPromptPolicy *)self _removePromptTimestampsOutsideIntervalEnding:_now];
}

- (id)_now
{
  overrideDate = [(DMDManageAppPromptPolicy *)self overrideDate];
  v3 = overrideDate;
  if (overrideDate)
  {
    v4 = overrideDate;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v5 = v4;

  return v5;
}

- (void)_removePromptTimestampsOutsideIntervalEnding:(id)ending
{
  endingCopy = ending;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  promptTimestamps = [(DMDManageAppPromptPolicy *)self promptTimestamps];
  v7 = [promptTimestamps countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(promptTimestamps);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [endingCopy timeIntervalSinceDate:v11];
        if (v12 >= 0.0)
        {
          v13 = v12;
          [(DMDManageAppPromptPolicy *)self promptResetTimeInterval];
          if (v13 <= v14)
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [promptTimestamps countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  [(DMDManageAppPromptPolicy *)self setPromptTimestamps:v15];
}

- (void)readTimestampsFromFile
{
  v3 = +[DMDPaths managementPromptPolicyPath];
  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];

  if (!v4 || ([objc_opt_class() timestampsKey], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", v5), v7 = objc_claimAutoreleasedReturnValue(), v5, (v6 = v7) == 0))
  {
    v6 = &__NSArray0__struct;
  }

  v8 = v6;
  [(DMDManageAppPromptPolicy *)self setPromptTimestamps:v6];
}

- (void)writeTimestampsToFile
{
  _timestampDataForWritingToFile = [(DMDManageAppPromptPolicy *)self _timestampDataForWritingToFile];
  if (_timestampDataForWritingToFile)
  {
    v3 = +[DMDPaths managementPromptPolicyPath];
    v7 = 0;
    v4 = [_timestampDataForWritingToFile writeToFile:v3 options:1 error:&v7];
    v5 = v7;

    if ((v4 & 1) == 0)
    {
      v6 = DMFAppLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100084940(v5, v6);
      }
    }
  }
}

- (id)_timestampDataForWritingToFile
{
  _timestampDictionaryForWritingToFile = [(DMDManageAppPromptPolicy *)self _timestampDictionaryForWritingToFile];
  v7 = 0;
  v3 = [NSPropertyListSerialization dataWithPropertyList:_timestampDictionaryForWritingToFile format:200 options:0 error:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = DMFAppLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000849B8(v4, v5);
    }
  }

  return v3;
}

- (id)_timestampDictionaryForWritingToFile
{
  v3 = objc_opt_new();
  promptTimestamps = [(DMDManageAppPromptPolicy *)self promptTimestamps];
  timestampsKey = [objc_opt_class() timestampsKey];
  [v3 setObject:promptTimestamps forKeyedSubscript:timestampsKey];

  v6 = [v3 copy];

  return v6;
}

@end