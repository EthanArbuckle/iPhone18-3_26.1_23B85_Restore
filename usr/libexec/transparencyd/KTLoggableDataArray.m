@interface KTLoggableDataArray
- (BOOL)isEqual:(id)a3;
- (BOOL)isInputsEqual:(id)a3;
- (KTLoggableDataArray)initWithCoder:(id)a3;
- (KTLoggableDataArray)initWithLoggableDatas:(id)a3;
- (id)description;
- (id)updatableLoggableData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTLoggableDataArray

- (KTLoggableDataArray)initWithLoggableDatas:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = KTLoggableDataArray;
  v5 = [(KTLoggableDataArray *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(KTLoggableDataArray *)v5 setLoggableDatas:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTLoggableDataArray *)self loggableDatas];
  [v4 encodeObject:v5 forKey:@"loggableDatas"];
}

- (KTLoggableDataArray)initWithCoder:(id)a3
{
  v4 = a3;
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v22 count:2];
  v6 = [NSSet setWithArray:v5];

  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"loggableDatas"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = [KTLoggableDataArray alloc];
    v15 = [(KTLoggableDataArray *)v14 initWithLoggableDatas:v8, v17];
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(KTLoggableDataArray *)v4 loggableDatas];
      v6 = [(KTLoggableDataArray *)self loggableDatas];
      v7 = [v5 isEqualToArray:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isInputsEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [(KTLoggableDataArray *)self loggableDatas];
  v6 = [v5 count];
  v7 = [(KTLoggableDataArray *)v4 loggableDatas];
  v8 = [v7 count];

  if (v6 != v8)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_11;
  }

  v9 = [(KTLoggableDataArray *)self loggableDatas];
  v10 = [v9 count];

  if (!v10)
  {
LABEL_10:
    v16 = 1;
    goto LABEL_11;
  }

  v11 = 0;
  do
  {
    v12 = [(KTLoggableDataArray *)self loggableDatas];
    v13 = [v12 objectAtIndexedSubscript:v11];

    v14 = [(KTLoggableDataArray *)v4 loggableDatas];
    v15 = [v14 objectAtIndexedSubscript:v11];

    v16 = [v13 isInputsEqual:v15];
    if ((v16 & 1) == 0)
    {
      break;
    }

    ++v11;
    v17 = [(KTLoggableDataArray *)self loggableDatas];
    v18 = [v17 count];
  }

  while (v11 < v18);
LABEL_11:

  return v16;
}

- (id)description
{
  v2 = [(KTLoggableDataArray *)self loggableDatas];
  v3 = [v2 description];

  return v3;
}

- (id)updatableLoggableData
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(KTLoggableDataArray *)self loggableDatas];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) copy];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end