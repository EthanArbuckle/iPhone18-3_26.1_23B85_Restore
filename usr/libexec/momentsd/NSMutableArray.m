@interface NSMutableArray
- (id)dequeue;
- (void)shuffle;
- (void)shuffleWithSeed:(int)a3;
@end

@implementation NSMutableArray

- (void)shuffle
{
  v3 = [(NSMutableArray *)self count];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = v3;
    v6 = 0;
    v7 = 0;
    do
    {
      [(NSMutableArray *)self exchangeObjectAtIndex:v6 withObjectAtIndex:arc4random_uniform(v5--) + v7];
      v6 = ++v7;
    }

    while (v4 >= v7);
  }
}

- (void)shuffleWithSeed:(int)a3
{
  v5 = [(NSMutableArray *)self count];
  if (v5 >= 2)
  {
    srand(a3);
    v6 = (v5 - 1);
    do
    {
      [(NSMutableArray *)self exchangeObjectAtIndex:v6-- withObjectAtIndex:rand() % v5--];
    }

    while (v6);
  }
}

- (id)dequeue
{
  if ([(NSMutableArray *)self count])
  {
    v3 = [(NSMutableArray *)self objectAtIndex:0];
    if (v3)
    {
      [(NSMutableArray *)self removeObjectAtIndex:0];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end