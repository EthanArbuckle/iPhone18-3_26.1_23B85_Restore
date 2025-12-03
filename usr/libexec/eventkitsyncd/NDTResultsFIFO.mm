@interface NDTResultsFIFO
- (BOOL)push:(id)push;
- (NDTResultsFIFO)initWithFIFOLength:(int64_t)length name:(id)name;
- (id)description;
- (id)pop;
- (void)conditionalPop:(id)pop;
- (void)finish;
- (void)terminate;
- (void)terminateIfNotFinished;
@end

@implementation NDTResultsFIFO

- (NDTResultsFIFO)initWithFIFOLength:(int64_t)length name:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = NDTResultsFIFO;
  v7 = [(NDTResultsFIFO *)&v15 init];
  if (v7)
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:length];
    fifo = v7->_fifo;
    v7->_fifo = v8;

    v7->_length = length;
    v10 = objc_alloc_init(NSCondition);
    condition = v7->_condition;
    v7->_condition = v10;

    v7->_terminated = 0;
    if (nameCopy)
    {
      v12 = [nameCopy copy];
      name = v7->_name;
      v7->_name = v12;
    }
  }

  return v7;
}

- (BOOL)push:(id)push
{
  pushCopy = push;
  condition = [(NDTResultsFIFO *)self condition];
  [condition lock];
  while (1)
  {

    fifo = [(NDTResultsFIFO *)self fifo];
    v7 = [fifo count];
    if (v7 < [(NDTResultsFIFO *)self length]|| [(NDTResultsFIFO *)self terminated])
    {
      break;
    }

    finished = [(NDTResultsFIFO *)self finished];

    if (finished)
    {
      goto LABEL_7;
    }

    condition = [(NDTResultsFIFO *)self condition];
    [condition wait];
  }

LABEL_7:
  if ([(NDTResultsFIFO *)self terminated])
  {
    [(NDTResultsFIFO *)self setFifo:0];
  }

  else if (![(NDTResultsFIFO *)self finished])
  {
    fifo2 = [(NDTResultsFIFO *)self fifo];
    [fifo2 addObject:pushCopy];

    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:
  condition2 = [(NDTResultsFIFO *)self condition];
  [condition2 broadcast];

  condition3 = [(NDTResultsFIFO *)self condition];
  [condition3 unlock];

  return v9;
}

- (void)finish
{
  condition = [(NDTResultsFIFO *)self condition];
  [condition lock];

  [(NDTResultsFIFO *)self setFinished:1];
  condition2 = [(NDTResultsFIFO *)self condition];
  [condition2 broadcast];

  condition3 = [(NDTResultsFIFO *)self condition];
  [condition3 unlock];
}

- (void)conditionalPop:(id)pop
{
  popCopy = pop;
  condition = [(NDTResultsFIFO *)self condition];
  [condition lock];
  while (1)
  {

    fifo = [(NDTResultsFIFO *)self fifo];
    if ([fifo count] || -[NDTResultsFIFO terminated](self, "terminated"))
    {
      break;
    }

    finished = [(NDTResultsFIFO *)self finished];

    if (finished)
    {
      goto LABEL_7;
    }

    condition = [(NDTResultsFIFO *)self condition];
    [condition wait];
  }

LABEL_7:
  if ([(NDTResultsFIFO *)self terminated])
  {
    [(NDTResultsFIFO *)self setFifo:0];
LABEL_13:
    popCopy[2](popCopy, 0);
    goto LABEL_14;
  }

  fifo2 = [(NDTResultsFIFO *)self fifo];
  v8 = [fifo2 count];

  if (!v8)
  {
    goto LABEL_13;
  }

  fifo3 = [(NDTResultsFIFO *)self fifo];
  v10 = [fifo3 objectAtIndex:0];

  if ((popCopy[2])(popCopy, v10))
  {
    fifo4 = [(NDTResultsFIFO *)self fifo];
    [fifo4 removeObjectAtIndex:0];
  }

LABEL_14:
  condition2 = [(NDTResultsFIFO *)self condition];
  [condition2 broadcast];

  condition3 = [(NDTResultsFIFO *)self condition];
  [condition3 unlock];
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
  condition = [(NDTResultsFIFO *)self condition];
  [condition lock];

  [(NDTResultsFIFO *)self setTerminated:1];
  [(NDTResultsFIFO *)self setFinished:1];
  condition2 = [(NDTResultsFIFO *)self condition];
  [condition2 broadcast];

  condition3 = [(NDTResultsFIFO *)self condition];
  [condition3 unlock];
}

- (void)terminateIfNotFinished
{
  condition = [(NDTResultsFIFO *)self condition];
  [condition lock];

  if (![(NDTResultsFIFO *)self finished])
  {
    [(NDTResultsFIFO *)self setTerminated:1];
    [(NDTResultsFIFO *)self setFinished:1];
  }

  condition2 = [(NDTResultsFIFO *)self condition];
  [condition2 broadcast];

  condition3 = [(NDTResultsFIFO *)self condition];
  [condition3 unlock];
}

- (id)description
{
  condition = [(NDTResultsFIFO *)self condition];
  [condition lock];

  fifo = [(NDTResultsFIFO *)self fifo];
  v5 = [fifo count];
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

  condition2 = [(NDTResultsFIFO *)self condition];
  [condition2 unlock];

  return v9;
}

@end