@interface MaxLoadIndexTableSectionVariable
- (MaxLoadIndexTableSectionVariable)initWithDecisionTreeSection:(id)section;
- (unint64_t)getMaxLI:(unint64_t)i;
@end

@implementation MaxLoadIndexTableSectionVariable

- (MaxLoadIndexTableSectionVariable)initWithDecisionTreeSection:(id)section
{
  v13.receiver = self;
  v13.super_class = MaxLoadIndexTableSectionVariable;
  v4 = [(MaxLoadIndexTableSection *)&v13 init];
  if (v4)
  {
    if ([section count] == 256)
    {
      v6 = 0;
      *&v5 = 134217984;
      v12 = v5;
      v7 = v4;
      do
      {
        v8 = [objc_msgSend(section objectAtIndex:{v6, v12), "unsignedIntValue"}];
        v9 = v8;
        if (v8 >= 0x66)
        {
          v10 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = v12;
            v15 = v9;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "<Error> Bad DT maxLI %ld", buf, 0xCu);
          }

          LOBYTE(v9) = 101;
        }

        v7->_maxLoadIndexTableSection[0] = v9;
        ++v6;
        v7 = (v7 + 1);
      }

      while (v6 != 256);
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B82C();
    }
  }

  return v4;
}

- (unint64_t)getMaxLI:(unint64_t)i
{
  if (i > 0xFF)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_maxLoadIndexTableSection[i];
  }

  self->super._maxLI = v3;
  return v3;
}

@end