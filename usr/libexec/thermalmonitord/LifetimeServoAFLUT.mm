@interface LifetimeServoAFLUT
- (LifetimeServoAFLUT)initWithAFTableColumns:(id)columns;
@end

@implementation LifetimeServoAFLUT

- (LifetimeServoAFLUT)initWithAFTableColumns:(id)columns
{
  v17.receiver = self;
  v17.super_class = LifetimeServoAFLUT;
  v4 = [(LifetimeServoAFLUT *)&v17 init];
  if (v4)
  {
    v5 = [columns count];
    v4->_columnCount = v5;
    if (v5 <= 26)
    {
      if (v5 >= 1)
      {
        v7 = 0;
        do
        {
          v8 = [columns objectAtIndex:v7];
          v4->_afLUTColumns[v7++] = -[LifetimeServoAFLUTColumn initWithLUTColumn:voltage:]([LifetimeServoAFLUTColumn alloc], "initWithLUTColumn:voltage:", [v8 objectForKey:@"afColumn"], objc_msgSend(objc_msgSend(v8, "objectForKey:", @"voltage"), "intValue"));
          columnCount = v4->_columnCount;
        }

        while (v7 < columnCount);
        if (columnCount >= 2)
        {
          v10 = 0;
          v11 = &v4->_afLUTColumns[1];
          do
          {
            voltage = [*(v11 - 1) voltage];
            if (voltage >= [*v11 voltage])
            {
              v13 = qword_1000AB718;
              if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
              {
                sub_1000533D8(&v15, v16, v13);
              }
            }

            ++v10;
            ++v11;
          }

          while (v10 < v4->_columnCount - 1);
        }
      }

      v4->_minVoltage = [(LifetimeServoAFLUTColumn *)v4->_afLUTColumns[0] voltage];
      v4->_maxVoltage = [(LifetimeServoAFLUTColumn *)v4->_afLUTColumns[v4->_columnCount - 1] voltage];
    }

    else
    {
      v6 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100053418(v6);
      }

      return 0;
    }
  }

  return v4;
}

@end