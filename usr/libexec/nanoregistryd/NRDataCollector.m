@interface NRDataCollector
+ (id)createSharedInstance;
- (id)incrementCounterForKey:(id)a3;
- (void)reset;
@end

@implementation NRDataCollector

+ (id)createSharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F898;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B3970 != -1)
  {
    dispatch_once(&qword_1001B3970, block);
  }

  v2 = qword_1001B3968;

  return v2;
}

- (id)incrementCounterForKey:(id)a3
{
  data = self->_data;
  v5 = a3;
  v6 = [(NSMutableDictionary *)data objectForKey:v5];
  if (!v6)
  {
    v6 = [[NSNumber alloc] initWithInt:0];
  }

  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v6 intValue] + 1);

  [(NSMutableDictionary *)self->_data setObject:v7 forKey:v5];

  return v7;
}

- (void)reset
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [qword_1001B3968 setData:v2];
}

@end