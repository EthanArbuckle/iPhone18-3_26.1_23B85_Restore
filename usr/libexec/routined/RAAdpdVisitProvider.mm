@interface RAAdpdVisitProvider
+ (id)defaultProvider;
- (RAAdpdVisitProvider)init;
@end

@implementation RAAdpdVisitProvider

+ (id)defaultProvider
{
  if (qword_1000084A0 != -1)
  {
    dispatch_once(&qword_1000084A0, &stru_100004180);
  }

  v3 = qword_100008498;

  return v3;
}

- (RAAdpdVisitProvider)init
{
  v17.receiver = self;
  v17.super_class = RAAdpdVisitProvider;
  v2 = [(RAAdpdVisitProvider *)&v17 init];
  if (v2)
  {
    v3 = +[RTRoutineManager defaultManager];
    routineManager = v2->_routineManager;
    v2->_routineManager = v3;

    v5 = v2->_routineManager;
    v6 = +[NSDate distantPast];
    v7 = +[NSDate distantFuture];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001778;
    v15[3] = &unk_1000041A8;
    v8 = v2;
    v16 = v8;
    [(RTRoutineManager *)v5 fetchProximityHistoryFromStartDate:v6 endDate:v7 completionHandler:v15];

    v9 = v2->_routineManager;
    v10 = +[NSDate distantPast];
    v11 = +[NSDate distantFuture];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000017C8;
    v13[3] = &unk_1000041A8;
    v14 = v8;
    [(RTRoutineManager *)v9 fetchPeopleDensityHistoryFromStartDate:v10 endDate:v11 completionHandler:v13];
  }

  return v2;
}

@end