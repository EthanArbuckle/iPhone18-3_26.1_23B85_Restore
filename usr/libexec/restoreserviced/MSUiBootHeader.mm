@interface MSUiBootHeader
- (MSUiBootHeader)initWithIOServiceWriter:(id)a3;
- (int64_t)compareTo:(id)a3;
- (void)bumpGeneration;
- (void)dealloc;
@end

@implementation MSUiBootHeader

- (MSUiBootHeader)initWithIOServiceWriter:(id)a3
{
  v6.receiver = self;
  v6.super_class = MSUiBootHeader;
  v4 = [(MSUiBootHeader *)&v6 init];
  if (v4)
  {
    v4->_serviceWriter = a3;
  }

  return v4;
}

- (void)bumpGeneration
{
  if ([(MSUiBootHeader *)self headerGeneration]== -1)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(MSUiBootHeader *)self headerGeneration]+ 1;
  }

  [(MSUiBootHeader *)self setHeaderGeneration:v3];
}

- (int64_t)compareTo:(id)a3
{
  v5 = [(MSUiBootHeader *)self headerGeneration];
  if (v5 < [a3 headerGeneration])
  {
    return -1;
  }

  v7 = [(MSUiBootHeader *)self headerGeneration];
  if (v7 > [a3 headerGeneration])
  {
    return 1;
  }

  iBU_LOG_real(@"Found two headers with the same generation count.", "[MSUiBootHeader compareTo:]", v8, v9, v10, v11, v12, v13, v14);
  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUiBootHeader;
  [(MSUiBootHeader *)&v3 dealloc];
}

@end