@interface StateStats
- (StateStats)initWithCoder:(id)a3;
- (StateStats)initWithNumActions:(int)a3;
- (double)getIndex:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)update:(int)a3 reward:(double)a4;
@end

@implementation StateStats

- (StateStats)initWithNumActions:(int)a3
{
  v7.receiver = self;
  v7.super_class = StateStats;
  v4 = [(StateStats *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(StateStats *)v4 setTotalCount:0];
    [(StateStats *)v5 setActions:+[NSMutableArray array]];
    if (a3 >= 1)
    {
      do
      {
        [(NSMutableArray *)[(StateStats *)v5 actions] addObject:objc_alloc_init(ActionStats)];
        --a3;
      }

      while (a3);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    [(StateStats *)v5 setLastSeen:?];
  }

  return v5;
}

- (void)update:(int)a3 reward:(double)a4
{
  [(StateStats *)self setTotalCount:[(StateStats *)self totalCount]+ 1];
  v7 = [(NSMutableArray *)[(StateStats *)self actions] objectAtIndexedSubscript:a3];
  [v7 setCount:{objc_msgSend(v7, "count") + 1}];
  v8 = [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
  [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
  v10 = 1.0 / v8;
  if (1.0 / v8 < 0.0)
  {
    v10 = 0.0;
  }

  [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
  +[NSDate timeIntervalSinceReferenceDate];
  [(StateStats *)self setLastSeen:?];
  if ([(NSMutableArray *)[(StateStats *)self actions] count])
  {
    v11 = 0;
    do
    {
      [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
      ++v11;
    }

    while ([(NSMutableArray *)[(StateStats *)self actions] count]> v11);
  }
}

- (double)getIndex:(int)a3
{
  if (([-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")] & 1) == 0)
  {
    v5 = [(StateStats *)self totalCount];
    v6 = [(NSMutableArray *)[(StateStats *)self actions] count];
    if ([(NSMutableArray *)[(StateStats *)self actions] count])
    {
      v7 = v5;
      if (v5 < v6)
      {
        v7 = v6;
      }

      v27 = log(v7);
      v8 = 0;
      v9 = 1.0;
      do
      {
        v10 = [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
        [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        v13 = v11 + v9;
        if (v10)
        {
          v14 = v13;
        }

        else
        {
          v14 = v9;
        }

        v15 = 0.0;
        if (v14 != v9)
        {
          v16 = v9 - v14;
          v17 = 1.0;
          v18 = (v14 + 1.0) * 0.5;
          v19 = 30;
          v20 = v14;
          v21 = v27;
          do
          {
            v22 = 1.0 - v18;
            if (v14 == 0.0)
            {
              v23 = log(1.0 / v22);
            }

            else
            {
              v24 = log(v14 / v18);
              v23 = v16 * log(v16 / v22) + v14 * v24;
              v21 = v27;
            }

            v9 = 1.0;
            if (v12 * v23 > v21)
            {
              v17 = v18;
            }

            else
            {
              v20 = v18;
            }

            v18 = (v20 + v17) * 0.5;
            --v19;
          }

          while (v19);
          v15 = v18 + -1.0;
        }

        [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
        [-[NSMutableArray objectAtIndexedSubscript:](-[StateStats actions](self "actions")];
      }

      while ([(NSMutableArray *)[(StateStats *)self actions] count]> v8);
    }
  }

  v25 = [(NSMutableArray *)[(StateStats *)self actions] objectAtIndexedSubscript:a3];

  [v25 index];
  return result;
}

- (StateStats)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = StateStats;
  v4 = [(StateStats *)&v7 init];
  if (v4)
  {
    -[StateStats setTotalCount:](v4, "setTotalCount:", [a3 decodeIntForKey:@"totalCount"]);
    v5 = objc_opt_class();
    -[StateStats setActions:](v4, "setActions:", [a3 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v5, objc_opt_class(), 0), @"actions"}]);
    [a3 decodeDoubleForKey:@"lastSeen"];
    [(StateStats *)v4 setLastSeen:?];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:-[StateStats totalCount](self forKey:{"totalCount"), @"totalCount"}];
  [a3 encodeObject:-[StateStats actions](self forKey:{"actions"), @"actions"}];
  [(StateStats *)self lastSeen];

  [a3 encodeDouble:@"lastSeen" forKey:?];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StateStats;
  [(StateStats *)&v3 dealloc];
}

@end