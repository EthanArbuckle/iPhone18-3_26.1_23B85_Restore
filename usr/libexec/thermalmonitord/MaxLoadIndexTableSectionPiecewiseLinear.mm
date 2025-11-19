@interface MaxLoadIndexTableSectionPiecewiseLinear
- (MaxLoadIndexTableSectionPiecewiseLinear)initWithDecisionTreeSectionControlEfforts:(id)a3 maxLIs:(id)a4 unconstrainedMaxLI:(unint64_t)a5;
- (unint64_t)getControlEffortForMaxLI:(unint64_t)a3;
- (unint64_t)getMaxLI:(unint64_t)a3;
@end

@implementation MaxLoadIndexTableSectionPiecewiseLinear

- (MaxLoadIndexTableSectionPiecewiseLinear)initWithDecisionTreeSectionControlEfforts:(id)a3 maxLIs:(id)a4 unconstrainedMaxLI:(unint64_t)a5
{
  v22.receiver = self;
  v22.super_class = MaxLoadIndexTableSectionPiecewiseLinear;
  v8 = [(MaxLoadIndexTableSection *)&v22 init];
  if (v8)
  {
    v9 = [a3 count];
    if (v9 == [a4 count])
    {
      if (v9)
      {
        if (v9 < 0xD)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v8->_unconstrainedMaxLI = a5;
          v8->_pointCount = v9;
          do
          {
            controlEfforts = v8->_controlEfforts;
            v8->_controlEfforts[v12] = [objc_msgSend(a3 objectAtIndex:{v12), "unsignedIntegerValue"}];
            v14 = [objc_msgSend(a4 objectAtIndex:{v12), "unsignedIntegerValue"}];
            v15 = v14;
            v8->_maxLIs[v12] = v14;
            v16 = v8->_controlEfforts[v12];
            if (v12)
            {
              if (v16 <= v10 || v14 > v11)
              {
                v18 = qword_1000AB718;
                if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "<Error> Piecewise DT table non-monotonic", buf, 2u);
                  v16 = controlEfforts[v12];
                  v15 = v8->_maxLIs[v12];
                }
              }
            }

            ++v12;
            pointCount = v8->_pointCount;
            v10 = v16;
            v11 = v15;
          }

          while (v12 < pointCount);
          if ((*controlEfforts || controlEfforts[pointCount - 1] != 255) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_10005B894();
          }
        }

        else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005B8C8();
        }
      }

      else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_10005B8FC();
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B860();
    }
  }

  return v8;
}

- (unint64_t)getMaxLI:(unint64_t)a3
{
  if (a3)
  {
    v4 = self->_pointCount - 1;
    v5 = self;
    while (v4)
    {
      v6 = v5->_controlEfforts[1];
      v5 = (v5 + 8);
      --v4;
      if (v6 >= a3)
      {
        result = (v5->_controlEfforts[11] * (v6 - a3) + (a3 - v5->super._releaseRate) * v5->_maxLIs[0]) / (v6 - v5->super._releaseRate);
        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005B930();
    }

    result = -1;
  }

  else
  {
    result = self->_unconstrainedMaxLI;
  }

LABEL_10:
  self->super._maxLI = result;
  return result;
}

- (unint64_t)getControlEffortForMaxLI:(unint64_t)a3
{
  if (self->_unconstrainedMaxLI <= a3)
  {
    return 0;
  }

  v4 = self->_pointCount - 1;
  v5 = self;
  while (v4)
  {
    v6 = v5->_maxLIs[1];
    v5 = (v5 + 8);
    --v4;
    if (a3 >= v6)
    {
      v7 = v5->_controlEfforts[11];
      if (v7 == v6)
      {
        if (a3 == v6)
        {
          v8 = v5->_controlEfforts[0];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = (v5->_controlEfforts[0] * (v7 - a3) + v5->super._releaseRate * (a3 - v6)) / (v7 - v6);
      }

      if (byte_1000AB2F8 == 1)
      {
        v13 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          releaseRate = v5->super._releaseRate;
          v15 = v5->_controlEfforts[0];
          v17 = 134219264;
          v18 = v15;
          v19 = 2048;
          v20 = releaseRate;
          v21 = 2048;
          v22 = v6;
          v23 = 2048;
          v24 = v7;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = v8;
          v10 = "<Notice> Seeding: CE+1 %lu CE %lu maxLI+1 %lu maxLI %lu maxLI %lu CE %lu";
          v11 = v13;
          v12 = 62;
          goto LABEL_17;
        }
      }

      return v8;
    }
  }

  v8 = *(&self->super._releaseRate + self->_pointCount);
  if (byte_1000AB2F8 == 1)
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = a3;
      v19 = 2048;
      v20 = v8;
      v10 = "<Notice> Seeding: Piecewise reverse DT maxLI:%lu controlEffort:%lu";
      v11 = v9;
      v12 = 22;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    }
  }

  return v8;
}

@end