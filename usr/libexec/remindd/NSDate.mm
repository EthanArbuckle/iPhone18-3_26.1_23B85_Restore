@interface NSDate
- (BOOL)ic_isToday;
- (BOOL)ic_isYesterday;
- (NSString)ic_briefFormattedDate;
- (NSString)ic_localDateWithSeconds;
- (NSString)ic_shortFormattedDate;
- (id)jsonify;
@end

@implementation NSDate

- (BOOL)ic_isToday
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:28 fromDate:self];
  v5 = [v3 dateFromComponents:v4];
  v6 = +[NSDate date];
  v7 = [v3 components:28 fromDate:v6];

  v8 = [v3 dateFromComponents:v7];
  v9 = [v5 isEqualToDate:v8];

  return v9;
}

- (BOOL)ic_isYesterday
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:28 fromDate:self];
  v5 = [v3 dateFromComponents:v4];
  v6 = objc_alloc_init(NSDateComponents);
  [v6 setDay:-1];
  v7 = +[NSDate date];
  v8 = [v3 dateByAddingComponents:v6 toDate:v7 options:0];

  v9 = [v3 components:28 fromDate:v8];
  v10 = [v3 dateFromComponents:v9];

  LOBYTE(v8) = [v5 isEqualToDate:v10];
  return v8;
}

- (NSString)ic_localDateWithSeconds
{
  if (qword_1009529C8 != -1)
  {
    sub_1007677E8();
  }

  v3 = qword_1009529C0;

  return [v3 stringFromDate:self];
}

- (NSString)ic_shortFormattedDate
{
  if ([(NSDate *)self ic_isToday]|| [(NSDate *)self ic_isYesterday])
  {
    if (qword_1009529D8 != -1)
    {
      sub_100767810();
    }

    v3 = &qword_1009529D0;
  }

  else
  {
    if (qword_1009529E8 != -1)
    {
      sub_1007677FC();
    }

    v3 = &qword_1009529E0;
  }

  v4 = [*v3 stringFromDate:self];

  return v4;
}

- (NSString)ic_briefFormattedDate
{
  v2 = self;
  v3 = +[NSDate distantFuture];
  v4 = [(NSDate *)v2 isEqual:v3];

  if (v4)
  {
    v5 = +[NSDate date];

    v2 = v5;
  }

  if ([(NSDate *)v2 ic_isToday])
  {
    if (qword_1009529F8 != -1)
    {
      sub_10076784C();
    }

    v6 = [qword_1009529F0 stringFromDate:v2];
  }

  else
  {
    v7 = +[NSCalendar currentCalendar];
    v8 = +[NSDate date];
    v9 = [v7 components:28 fromDate:v8];

    v10 = [v7 dateFromComponents:v9];
    v11 = [v7 dateByAddingUnit:16 value:-1 toDate:v10 options:0];
    v12 = [v7 dateByAddingUnit:0x2000 value:-1 toDate:v10 options:0];
    if ([(NSDate *)v2 compare:v11]== 1 || [(NSDate *)v2 compare:v12]!= 1)
    {
      if (qword_100952A18 != -1)
      {
        sub_100767838();
      }

      v13 = &qword_100952A10;
    }

    else
    {
      if (qword_100952A08 != -1)
      {
        sub_100767824();
      }

      v13 = &qword_100952A00;
    }

    v6 = [*v13 stringFromDate:v2];
  }

  return v6;
}

- (id)jsonify
{
  v2 = qword_1009361A8;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  result = [qword_100974E88 stringFromDate:v3];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end