@interface NDTResultsFIFO
- (BOOL)push:(id)a3;
- (NDTResultsFIFO)initWithFIFOLength:(int64_t)a3 name:(id)a4;
- (id)description;
- (id)pop;
- (void)conditionalPop:(id)a3;
- (void)finish;
- (void)terminate;
- (void)terminateIfNotFinished;
@end

@implementation NDTResultsFIFO

- (NDTResultsFIFO)initWithFIFOLength:(int64_t)a3 name:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = NDTResultsFIFO;
  v7 = [(NDTResultsFIFO *)&v15 init];
  if (v7)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:a3];
    fifo = v7->_fifo;
    v7->_fifo = v8;

    v7->_length = a3;
    v10 = objc_alloc_init(NSCondition);
    condition = v7->_condition;
    v7->_condition = v10;

    v7->_terminated = 0;
    if (v6)
    {
      v12 = [v6 copy];
      name = v7->_name;
      v7->_name = v12;
    }
  }

  return v7;
}

- (BOOL)push:(id)a3
{
  v4 = a3;
  v5 = [(NDTResultsFIFO *)self condition];
  [v5 lock];
  while (1)
  {

    v6 = [(NDTResultsFIFO *)self fifo];
    v7 = [v6 count];
    if (v7 < [(NDTResultsFIFO *)self length]|| [(NDTResultsFIFO *)self terminated])
    {
      break;
    }

    v8 = [(NDTResultsFIFO *)self finished];

    if (v8)
    {
      goto LABEL_7;
    }

    v5 = [(NDTResultsFIFO *)self condition];
    [v5 wait];
  }

LABEL_7:
  if ([(NDTResultsFIFO *)self terminated])
  {
    [(NDTResultsFIFO *)self setFifo:0];
  }

  else if (![(NDTResultsFIFO *)self finished])
  {
    v10 = [(NDTResultsFIFO *)self fifo];
    [v10 addObject:v4];

    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:
  v11 = [(NDTResultsFIFO *)self condition];
  [v11 broadcast];

  v12 = [(NDTResultsFIFO *)self condition];
  [v12 unlock];

  return v9;
}

- (void)finish
{
  v3 = [(NDTResultsFIFO *)self condition];
  [v3 lock];

  [(NDTResultsFIFO *)self setFinished:1];
  v4 = [(NDTResultsFIFO *)self condition];
  [v4 broadcast];

  v5 = [(NDTResultsFIFO *)self condition];
  [v5 unlock];
}

- (void)conditionalPop:(id)a3
{
  v14 = a3;
  v4 = [(NDTResultsFIFO *)self condition];
  [v4 lock];
  while (1)
  {

    v5 = [(NDTResultsFIFO *)self fifo];
    if ([v5 count] || -[NDTResultsFIFO terminated](self, "terminated"))
    {
      break;
    }

    v6 = [(NDTResultsFIFO *)self finished];

    if (v6)
    {
      goto LABEL_7;
    }

    v4 = [(NDTResultsFIFO *)self condition];
    [v4 wait];
  }

LABEL_7:
  if ([(NDTResultsFIFO *)self terminated])
  {
    [(NDTResultsFIFO *)self setFifo:0];
LABEL_13:
    v14[2](v14, 0);
    goto LABEL_14;
  }

  v7 = [(NDTResultsFIFO *)self fifo];
  v8 = [v7 count];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [(NDTResultsFIFO *)self fifo];
  v10 = [v9 objectAtIndex:0];

  if ((v14[2])(v14, v10))
  {
    v11 = [(NDTResultsFIFO *)self fifo];
    [v11 removeObjectAtIndex:0];
  }

LABEL_14:
  v12 = [(NDTResultsFIFO *)self condition];
  [v12 broadcast];

  v13 = [(NDTResultsFIFO *)self condition];
  [v13 unlock];
}

- (id)pop
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003D8D0;
  v9 = sub_10003D8E0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003D8E8;
  v4[3] = &unk_1000B5948;
  v4[4] = &v5;
  [(NDTResultsFIFO *)self conditionalPop:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)terminate
{
  v3 = [(NDTResultsFIFO *)self condition];
  [v3 lock];

  [(NDTResultsFIFO *)self setTerminated:1];
  [(NDTResultsFIFO *)self setFinished:1];
  v4 = [(NDTResultsFIFO *)self condition];
  [v4 broadcast];

  v5 = [(NDTResultsFIFO *)self condition];
  [v5 unlock];
}

- (void)terminateIfNotFinished
{
  v3 = [(NDTResultsFIFO *)self condition];
  [v3 lock];

  if (![(NDTResultsFIFO *)self finished])
  {
    [(NDTResultsFIFO *)self setTerminated:1];
    [(NDTResultsFIFO *)self setFinished:1];
  }

  v4 = [(NDTResultsFIFO *)self condition];
  [v4 broadcast];

  v5 = [(NDTResultsFIFO *)self condition];
  [v5 unlock];
}

- (id)description
{
  v3 = [(NDTResultsFIFO *)self condition];
  [v3 lock];

  v4 = [(NDTResultsFIFO *)self fifo];
  v5 = [v4 count];
  v6 = [(NDTResultsFIFO *)self length];
  if ([(NDTResultsFIFO *)self terminated])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(NDTResultsFIFO *)self finished])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NSString stringWithFormat:@"<NDTResultsFIFO:%p, capacity: %d/%d, terminated: %@, finished: %@>", self, v5, v6, v7, v8];

  v10 = [(NDTResultsFIFO *)self condition];
  [v10 unlock];

  return v9;
}

@end