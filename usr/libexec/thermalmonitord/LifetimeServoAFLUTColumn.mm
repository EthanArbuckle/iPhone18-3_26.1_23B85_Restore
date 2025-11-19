@interface LifetimeServoAFLUTColumn
- (LifetimeServoAFLUTColumn)initWithLUTColumn:(id)a3 voltage:(int)a4;
- (float)accelerationFactor:(int)a3;
@end

@implementation LifetimeServoAFLUTColumn

- (LifetimeServoAFLUTColumn)initWithLUTColumn:(id)a3 voltage:(int)a4
{
  v20.receiver = self;
  v20.super_class = LifetimeServoAFLUTColumn;
  v6 = [(LifetimeServoAFLUTColumn *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  v6->_voltage = a4;
  rowCount = [a3 count];
  v7->_rowCount = rowCount;
  if (rowCount < 13)
  {
    goto LABEL_5;
  }

  v9 = qword_1000AB718;
  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "<Error> LifetimeServoAFLUTColumn cannot hold all data elements", v19, 2u);
    rowCount = v7->_rowCount;
LABEL_5:
    if (rowCount < 1)
    {
      return v7;
    }
  }

  v10 = 0;
  accelerationFactors = v7->_accelerationFactors;
  do
  {
    v12 = [a3 objectAtIndex:v10];
    *(accelerationFactors - 12) = [objc_msgSend(v12 objectForKey:{@"temp", "intValue"}];
    [objc_msgSend(v12 objectForKey:{@"af", "floatValue"}];
    *accelerationFactors++ = v13;
    ++v10;
    v14 = v7->_rowCount;
  }

  while (v10 < v14);
  if (v14 >= 2)
  {
    v15 = 0;
    v16 = &v7->_accelerationFactors[1];
    do
    {
      if (*(v16 - 13) >= *(v16 - 12) || *(v16 - 1) > *v16)
      {
        v17 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          *v19 = 0;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "<Error> LifetimeServoAFLUTColumn data improperly sorted", v19, 2u);
          LODWORD(v14) = v7->_rowCount;
        }
      }

      ++v15;
      ++v16;
    }

    while (v15 < v14 - 1);
  }

  return v7;
}

- (float)accelerationFactor:(int)a3
{
  temperatures = self->_temperatures;
  v3 = self->_temperatures[0];
  rowCount = self->_rowCount;
  if (v3 <= a3)
  {
    v3 = temperatures[rowCount - 1];
    if (v3 >= a3)
    {
      v3 = a3;
    }
  }

  if (rowCount < 2)
  {
    LODWORD(v7) = 1;
  }

  else
  {
    v6 = &self->_temperatures[1];
    v7 = 1;
    while (1)
    {
      v8 = *v6++;
      if (v3 <= v8)
      {
        break;
      }

      if (rowCount == ++v7)
      {
        LODWORD(v7) = self->_rowCount;
        break;
      }
    }
  }

  v9 = v7 - 1;
  v10 = temperatures[v9];
  v11 = temperatures[v7];
  result = 0.0;
  if (v11 != v10)
  {
    return ((self->_accelerationFactors[v9] * (v11 - v3)) + (self->_accelerationFactors[v7] * (v3 - v10))) / (v11 - v10);
  }

  return result;
}

@end