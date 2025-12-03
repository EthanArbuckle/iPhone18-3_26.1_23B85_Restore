@interface TransparencyGPBFloatArray
+ (id)array;
+ (id)arrayWithCapacity:(unint64_t)capacity;
+ (id)arrayWithValueArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBFloatArray)init;
- (TransparencyGPBFloatArray)initWithCapacity:(unint64_t)capacity;
- (TransparencyGPBFloatArray)initWithValues:(const float *)values count:(unint64_t)count;
- (float)valueAtIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addValues:(const float *)values count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateValuesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)exchangeValueAtIndex:(unint64_t)index withValueAtIndex:(unint64_t)atIndex;
- (void)insertValue:(float)value atIndex:(unint64_t)index;
- (void)internalResizeToCapacity:(unint64_t)capacity;
- (void)removeAll;
- (void)removeValueAtIndex:(unint64_t)index;
- (void)replaceValueAtIndex:(unint64_t)index withValue:(float)value;
@end

@implementation TransparencyGPBFloatArray

+ (id)array
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)arrayWithValueArray:(id)array
{
  v3 = [[self alloc] initWithValueArray:array];

  return v3;
}

+ (id)arrayWithCapacity:(unint64_t)capacity
{
  v3 = [[self alloc] initWithCapacity:capacity];

  return v3;
}

- (TransparencyGPBFloatArray)init
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBFloatArray;
  return [(TransparencyGPBFloatArray *)&v3 init];
}

- (TransparencyGPBFloatArray)initWithValues:(const float *)values count:(unint64_t)count
{
  v6 = [(TransparencyGPBFloatArray *)self init];
  v7 = v6;
  if (v6 && values && count)
  {
    v8 = reallocf(v6->_values, 4 * count);
    v7->_values = v8;
    if (v8)
    {
      v7->_capacity = count;
      memcpy(v8, values, 4 * count);
      v7->_count = count;
    }

    else
    {

      [NSException raise:NSMallocException format:@"Failed to allocate %lu bytes", 4 * count];
    }
  }

  return v7;
}

- (TransparencyGPBFloatArray)initWithCapacity:(unint64_t)capacity
{
  v4 = [(TransparencyGPBFloatArray *)self initWithValues:0 count:0];
  v5 = v4;
  if (capacity && v4)
  {
    [(TransparencyGPBFloatArray *)v4 internalResizeToCapacity:capacity];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBFloatArray allocWithZone:zone];
  values = self->_values;
  count = self->_count;

  return [(TransparencyGPBFloatArray *)v4 initWithValues:values count:count];
}

- (void)dealloc
{
  free(self->_values);
  v3.receiver = self;
  v3.super_class = TransparencyGPBFloatArray;
  [(TransparencyGPBFloatArray *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (count = self->_count, count == *(equal + 3)) && memcmp(self->_values, *(equal + 2), 4 * count) == 0;
  return result;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p> { ", objc_opt_class(), self];
  count = self->_count;
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (i)
      {
        v6 = @", %f";
      }

      else
      {
        v6 = @"%f";
      }

      [(NSMutableString *)v3 appendFormat:v6, self->_values[i]];
    }
  }

  [(NSMutableString *)v3 appendFormat:@" }"];
  return v3;
}

- (void)enumerateValuesWithOptions:(unint64_t)options usingBlock:(id)block
{
  v11 = 0;
  count = self->_count;
  if ((options & 2) != 0)
  {
    if (count)
    {
      v10 = count - 1;
      do
      {
        if (v10 == -1)
        {
          break;
        }

        (*(block + 2))(block, v10, &v11, self->_values[v10]);
        --v10;
      }

      while (v11 != 1);
    }
  }

  else if (count)
  {
    v7 = 0;
    v8 = count - 1;
    do
    {
      (*(block + 2))(block, v7, &v11, self->_values[v7]);
      if (v11)
      {
        break;
      }
    }

    while (v8 != v7++);
  }
}

- (float)valueAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count];
  }

  return self->_values[index];
}

- (void)internalResizeToCapacity:(unint64_t)capacity
{
  v5 = 4 * capacity;
  v6 = reallocf(self->_values, 4 * capacity);
  self->_values = v6;
  if (!v6)
  {
    self->_count = 0;
    self->_capacity = 0;
    [NSException raise:NSMallocException format:@"Failed to allocate %lu bytes", v5];
  }

  self->_capacity = capacity;
}

- (void)addValues:(const float *)values count:(unint64_t)count
{
  if (values && count)
  {
    count = self->_count;
    v8 = count + count;
    if (count + count > self->_capacity)
    {
      [(TransparencyGPBFloatArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
    }

    self->_count = v8;
    memcpy(&self->_values[count], values, 4 * count);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_1000E2AFC(autocreator, self);
    }
  }
}

- (void)insertValue:(float)value atIndex:(unint64_t)index
{
  count = self->_count;
  v8 = count + 1;
  if (count + 1 <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count + 1];
    count = self->_count;
    v8 = count + 1;
  }

  if (v8 > self->_capacity)
  {
    [(TransparencyGPBFloatArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
  }

  self->_count = v8;
  if (count != index)
  {
    memmove(&self->_values[index + 1], &self->_values[index], 4 * (count - index));
  }

  self->_values[index] = value;
  autocreator = self->_autocreator;
  if (autocreator)
  {

    sub_1000E2AFC(autocreator, self);
  }
}

- (void)replaceValueAtIndex:(unint64_t)index withValue:(float)value
{
  count = self->_count;
  if (count <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count];
  }

  self->_values[index] = value;
}

- (void)removeValueAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count];
    count = self->_count;
  }

  v6 = count - 1;
  if (count - 1 != index)
  {
    memmove(&self->_values[index], &self->_values[index + 1], 4 * (count - 1 - index));
  }

  self->_count = v6;
  if (count + 31 < self->_capacity)
  {

    [(TransparencyGPBFloatArray *)self internalResizeToCapacity:(v6 & 0xFFFFFFFFFFFFFFF0) + 16];
  }
}

- (void)removeAll
{
  self->_count = 0;
  if (self->_capacity >= 0x21)
  {
    [(TransparencyGPBFloatArray *)self internalResizeToCapacity:16];
  }
}

- (void)exchangeValueAtIndex:(unint64_t)index withValueAtIndex:(unint64_t)atIndex
{
  count = self->_count;
  if (count <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count];
    count = self->_count;
  }

  if (count <= atIndex)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", atIndex, count];
  }

  values = self->_values;
  v9 = values[index];
  values[index] = values[atIndex];
  values[atIndex] = v9;
}

@end