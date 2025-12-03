@interface TransparencyGPBEnumArray
+ (id)array;
+ (id)arrayWithValidationFunction:(void *)function;
+ (id)arrayWithValidationFunction:(void *)function capacity:(unint64_t)capacity;
+ (id)arrayWithValueArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (TransparencyGPBEnumArray)initWithValidationFunction:(void *)function;
- (TransparencyGPBEnumArray)initWithValidationFunction:(void *)function capacity:(unint64_t)capacity;
- (TransparencyGPBEnumArray)initWithValidationFunction:(void *)function rawValues:(const int *)values count:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)rawValueAtIndex:(unint64_t)index;
- (int)valueAtIndex:(unint64_t)index;
- (void)addRawValues:(const int *)values count:(unint64_t)count;
- (void)addValues:(const int *)values count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateRawValuesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumerateValuesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)exchangeValueAtIndex:(unint64_t)index withValueAtIndex:(unint64_t)atIndex;
- (void)insertRawValue:(int)value atIndex:(unint64_t)index;
- (void)internalResizeToCapacity:(unint64_t)capacity;
- (void)removeAll;
- (void)removeValueAtIndex:(unint64_t)index;
- (void)replaceValueAtIndex:(unint64_t)index withRawValue:(int)value;
@end

@implementation TransparencyGPBEnumArray

+ (id)array
{
  v2 = [[self alloc] initWithValidationFunction:0];

  return v2;
}

+ (id)arrayWithValidationFunction:(void *)function
{
  v3 = [[self alloc] initWithValidationFunction:function];

  return v3;
}

+ (id)arrayWithValueArray:(id)array
{
  v3 = [[self alloc] initWithValueArray:array];

  return v3;
}

+ (id)arrayWithValidationFunction:(void *)function capacity:(unint64_t)capacity
{
  v4 = [[self alloc] initWithValidationFunction:function capacity:capacity];

  return v4;
}

- (TransparencyGPBEnumArray)initWithValidationFunction:(void *)function
{
  v6.receiver = self;
  v6.super_class = TransparencyGPBEnumArray;
  result = [(TransparencyGPBEnumArray *)&v6 init];
  if (result)
  {
    if (function)
    {
      functionCopy = function;
    }

    else
    {
      functionCopy = sub_10016C14C;
    }

    result->_validationFunc = functionCopy;
  }

  return result;
}

- (TransparencyGPBEnumArray)initWithValidationFunction:(void *)function rawValues:(const int *)values count:(unint64_t)count
{
  v7 = [(TransparencyGPBEnumArray *)self initWithValidationFunction:function];
  v8 = v7;
  if (v7 && values && count)
  {
    v9 = reallocf(v7->_values, 4 * count);
    v8->_values = v9;
    if (v9)
    {
      v8->_capacity = count;
      memcpy(v9, values, 4 * count);
      v8->_count = count;
    }

    else
    {

      [NSException raise:NSMallocException format:@"Failed to allocate %lu bytes", 4 * count];
    }
  }

  return v8;
}

- (TransparencyGPBEnumArray)initWithValidationFunction:(void *)function capacity:(unint64_t)capacity
{
  v5 = [(TransparencyGPBEnumArray *)self initWithValidationFunction:function];
  v6 = v5;
  if (capacity && v5)
  {
    [(TransparencyGPBEnumArray *)v5 internalResizeToCapacity:capacity];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TransparencyGPBEnumArray allocWithZone:zone];
  validationFunc = self->_validationFunc;
  values = self->_values;
  count = self->_count;

  return [(TransparencyGPBEnumArray *)v4 initWithValidationFunction:validationFunc rawValues:values count:count];
}

- (void)dealloc
{
  free(self->_values);
  v3.receiver = self;
  v3.super_class = TransparencyGPBEnumArray;
  [(TransparencyGPBEnumArray *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (count = self->_count, count == *(equal + 4)) && memcmp(self->_values, *(equal + 3), 4 * count) == 0;
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
        v6 = @", %d";
      }

      else
      {
        v6 = @"%d";
      }

      [(NSMutableString *)v3 appendFormat:v6, self->_values[i]];
    }
  }

  [(NSMutableString *)v3 appendFormat:@" }"];
  return v3;
}

- (void)enumerateRawValuesWithOptions:(unint64_t)options usingBlock:(id)block
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

        (*(block + 2))(block, self->_values[v10], v10, &v11);
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
      (*(block + 2))(block, self->_values[v7], v7, &v11);
      if (v11)
      {
        break;
      }
    }

    while (v8 != v7++);
  }
}

- (int)valueAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count];
  }

  v6 = self->_values[index];
  if ((self->_validationFunc)(v6))
  {
    return v6;
  }

  else
  {
    return -72499473;
  }
}

- (int)rawValueAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    [NSException raise:NSRangeException format:@"Index (%lu) beyond bounds (%lu)", index, count];
  }

  return self->_values[index];
}

- (void)enumerateValuesWithOptions:(unint64_t)options usingBlock:(id)block
{
  v20 = 0;
  validationFunc = self->_validationFunc;
  if ((options & 2) != 0)
  {
    count = self->_count;
    if (count)
    {
      v15 = count - 1;
      if ((count - 1) >= 0)
      {
        values = self->_values;
        v17 = &values[count - 2];
        do
        {
          v18 = *(v17 + 4);
          if (validationFunc(v18, a2))
          {
            v19 = v18;
          }

          else
          {
            v19 = 4222467823;
          }

          (*(block + 2))(block, v19, v15, &v20);
          if (v20)
          {
            break;
          }

          --v15;
          v13 = v17 >= values;
          v17 -= 4;
        }

        while (v13);
      }
    }
  }

  else
  {
    v6 = self->_count;
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = self->_values;
      v9 = &v8[v6];
      v10 = v8 + 1;
      do
      {
        v11 = *(v10 - 1);
        if (validationFunc(v11, a2))
        {
          v12 = v11;
        }

        else
        {
          v12 = 4222467823;
        }

        (*(block + 2))(block, v12, v7, &v20);
        if (v20)
        {
          break;
        }

        ++v7;
        v13 = v10++ >= v9;
      }

      while (!v13);
    }
  }
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

- (void)addRawValues:(const int *)values count:(unint64_t)count
{
  if (values && count)
  {
    count = self->_count;
    v8 = count + count;
    if (count + count > self->_capacity)
    {
      [(TransparencyGPBEnumArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
    }

    self->_count = v8;
    memcpy(&self->_values[count], values, 4 * count);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_100192C7C(autocreator, self);
    }
  }
}

- (void)insertRawValue:(int)value atIndex:(unint64_t)index
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
    [(TransparencyGPBEnumArray *)self internalResizeToCapacity:(v8 & 0xFFFFFFFFFFFFFFF0) + 16];
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

    sub_100192C7C(autocreator, self);
  }
}

- (void)replaceValueAtIndex:(unint64_t)index withRawValue:(int)value
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

    [(TransparencyGPBEnumArray *)self internalResizeToCapacity:(v6 & 0xFFFFFFFFFFFFFFF0) + 16];
  }
}

- (void)removeAll
{
  self->_count = 0;
  if (self->_capacity >= 0x21)
  {
    [(TransparencyGPBEnumArray *)self internalResizeToCapacity:16];
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

- (void)addValues:(const int *)values count:(unint64_t)count
{
  if (values && count)
  {
    v7 = 0;
    validationFunc = self->_validationFunc;
    do
    {
      if ((validationFunc(values[v7], a2) & 1) == 0)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@: Attempt to set an unknown enum value (%d)", objc_opt_class(), values[v7]];
      }

      ++v7;
    }

    while (count != v7);
    count = self->_count;
    v10 = count + count;
    if (count + count > self->_capacity)
    {
      [(TransparencyGPBEnumArray *)self internalResizeToCapacity:(v10 & 0xFFFFFFFFFFFFFFF0) + 16];
    }

    self->_count = v10;
    memcpy(&self->_values[count], values, 4 * count);
    autocreator = self->_autocreator;
    if (autocreator)
    {

      sub_100192C7C(autocreator, self);
    }
  }
}

@end