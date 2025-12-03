@interface HTFixedSizeQueue
- (HTFixedSizeQueue)initWithSize:(unint64_t)size;
- (id)getDescription:(unint64_t)description;
- (void)addObjectsFromArray:(id)array;
@end

@implementation HTFixedSizeQueue

- (HTFixedSizeQueue)initWithSize:(unint64_t)size
{
  v13.receiver = self;
  v13.super_class = HTFixedSizeQueue;
  v4 = [(HTFixedSizeQueue *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    v7 = *(v4 + 3);
    *(v4 + 2) = size;
    *(v4 + 3) = 0;

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v9 = *(v4 + 4);
    *(v4 + 4) = v8;

    dispatch_source_set_event_handler_f(*(v4 + 4), sub_10002138C);
    dispatch_activate(*(v4 + 4));
    v10 = objc_opt_new();
    v11 = *(v4 + 5);
    *(v4 + 5) = v10;

    [*(v4 + 5) setDateFormat:@"yyyy-MM-dd-HH:mm:ss.SSS"];
  }

  return v4;
}

- (void)addObjectsFromArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v10 = arrayCopy;
    if ([arrayCopy count])
    {
      [(NSMutableArray *)self->allRecordsMutable addObjectsFromArray:v10];
      if ([(NSMutableArray *)self->allRecordsMutable count]> self->_maxSize)
      {
        v5 = +[NSMutableIndexSet indexSet];
        v6 = [(NSMutableArray *)self->allRecordsMutable count];
        maxSize = self->_maxSize;
        v8 = &v6[-maxSize];
        if (v6 != maxSize)
        {
          v9 = 0;
          do
          {
            [v5 addIndex:v9++];
          }

          while (v8 != v9);
        }

        [(NSMutableArray *)self->allRecordsMutable removeObjectsAtIndexes:v5];
      }
    }
  }

  _objc_release_x1();
}

- (id)getDescription:(unint64_t)description
{
  v3 = [(NSMutableArray *)self->allRecordsMutable objectAtIndex:description];
  v9[0] = @"processName";
  processName = [v3 processName];
  v10[0] = processName;
  v9[1] = @"processID";
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 pid]);
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v6 description];

  return v7;
}

@end