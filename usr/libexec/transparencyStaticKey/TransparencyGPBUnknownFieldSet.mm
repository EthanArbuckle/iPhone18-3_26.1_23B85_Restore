@interface TransparencyGPBUnknownFieldSet
- (BOOL)hasField:(int)field;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFieldFrom:(int)from input:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)description;
- (id)getField:(int)field;
- (id)sortedFields;
- (unint64_t)countOfFields;
- (unint64_t)hash;
- (unint64_t)serializedSize;
- (unint64_t)serializedSizeAsMessageSet;
- (void)addField:(id)field;
- (void)dealloc;
- (void)getTags:(int *)tags;
- (void)mergeFromCodedInputStream:(id)stream;
- (void)mergeFromData:(id)data;
- (void)mergeUnknownFields:(id)fields;
- (void)writeAsMessageSetTo:(id)to;
- (void)writeToCodedOutputStream:(id)stream;
@end

@implementation TransparencyGPBUnknownFieldSet

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TransparencyGPBUnknownFieldSet allocWithZone:?]];
  fields = self->fields_;
  if (fields)
  {
    CFDictionaryApplyFunction(fields, sub_10001527C, v4);
  }

  return v4;
}

- (void)dealloc
{
  fields = self->fields_;
  if (fields)
  {
    CFRelease(fields);
  }

  v4.receiver = self;
  v4.super_class = TransparencyGPBUnknownFieldSet;
  [(TransparencyGPBUnknownFieldSet *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  fields = self->fields_;
  v6 = *(equal + 1);
  result = (fields | v6) == 0;
  if (fields)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    return CFEqual(self->fields_, v6) != 0;
  }

  return result;
}

- (unint64_t)hash
{
  fields = self->fields_;
  if (fields)
  {
    return CFHash(fields);
  }

  else
  {
    return objc_opt_class();
  }
}

- (BOOL)hasField:(int)field
{
  fields = self->fields_;
  if (fields)
  {
    LOBYTE(fields) = CFDictionaryGetValue(fields, field) != 0;
  }

  return fields;
}

- (id)getField:(int)field
{
  result = self->fields_;
  if (result)
  {
    return CFDictionaryGetValue(result, field);
  }

  return result;
}

- (unint64_t)countOfFields
{
  result = self->fields_;
  if (result)
  {
    return CFDictionaryGetCount(result);
  }

  return result;
}

- (id)sortedFields
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v5 = &v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, 8 * Count);
    bzero(v5, 8 * Count);
    CFDictionaryGetKeysAndValues(self->fields_, v5, v5);
    v6 = &v15 - 2 * Count;
    bzero(v6, 16 * Count);
    if (Count)
    {
      v7 = 0;
      v8 = v6 + 1;
      do
      {
        v9 = *&v5[8 * v7];
        *(v8 - 1) = v9;
        *v8 = v9;
        ++v7;
        v8 += 2;
      }

      while (Count != v7);
      qsort_b(&v15 - 2 * Count, Count, 0x10uLL, &stru_1000955D0);
      v10 = v6 + 1;
      v11 = (&v15 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = Count;
      do
      {
        v13 = *v10;
        v10 += 2;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }

    else
    {
      qsort_b(v6, 0, 0x10uLL, &stru_1000955D0);
    }

    return [NSArray arrayWithObjects:v5 count:Count];
  }

  else
  {

    return +[NSArray array];
  }
}

- (void)writeToCodedOutputStream:(id)stream
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v7 = (&v14 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, 8 * Count);
    bzero(v7, 8 * Count);
    CFDictionaryGetKeysAndValues(self->fields_, v7, v7);
    if (Count < 2)
    {
      [*v7 writeToOutput:stream];
    }

    else
    {
      v8 = &v14 - 2 * Count;
      bzero(v8, 16 * Count);
      v9 = 0;
      v10 = v8 + 1;
      do
      {
        v11 = v7[v9];
        *(v10 - 1) = v11;
        *v10 = v11;
        ++v9;
        v10 += 2;
      }

      while (Count != v9);
      qsort_b(&v14 - 2 * Count, Count, 0x10uLL, &stru_1000955F0);
      v12 = (v8 + 1);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v13 writeToOutput:stream];
        --Count;
      }

      while (Count);
    }
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p>: TextFormat: {\n", objc_opt_class(), self];
  [(NSMutableString *)v3 appendString:sub_100013F10(self, @"  ")];
  [(NSMutableString *)v3 appendString:@"}"];
  return v3;
}

- (unint64_t)serializedSize
{
  context = 0;
  result = self->fields_;
  if (result)
  {
    CFDictionaryApplyFunction(result, sub_100015800, &context);
    return context;
  }

  return result;
}

- (void)writeAsMessageSetTo:(id)to
{
  fields = self->fields_;
  if (fields)
  {
    CFDictionaryApplyFunction(fields, sub_100015854, to);
  }
}

- (unint64_t)serializedSizeAsMessageSet
{
  context = 0;
  result = self->fields_;
  if (result)
  {
    CFDictionaryApplyFunction(result, sub_1000158A0, &context);
    return context;
  }

  return result;
}

- (id)data
{
  v3 = [NSMutableData dataWithLength:[(TransparencyGPBUnknownFieldSet *)self serializedSize]];
  v4 = [[TransparencyGPBCodedOutputStream alloc] initWithData:v3];
  [(TransparencyGPBUnknownFieldSet *)self writeToCodedOutputStream:v4];

  return v3;
}

- (void)addField:(id)field
{
  number = [field number];
  if (!number)
  {
    [NSException raise:NSInvalidArgumentException format:@"Zero is not a valid field number."];
  }

  fields = self->fields_;
  if (!fields)
  {
    fields = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    self->fields_ = fields;
  }

  CFDictionarySetValue(fields, number, field);
}

- (void)mergeUnknownFields:(id)fields
{
  if (fields)
  {
    v4 = *(fields + 1);
    if (v4)
    {
      CFDictionaryApplyFunction(v4, sub_100015AB8, self);
    }
  }
}

- (void)mergeFromData:(id)data
{
  v4 = [[TransparencyGPBCodedInputStream alloc] initWithData:data];
  [(TransparencyGPBUnknownFieldSet *)self mergeFromCodedInputStream:v4];
  [(TransparencyGPBCodedInputStream *)v4 checkLastTagWas:0];
}

- (BOOL)mergeFieldFrom:(int)from input:(id)input
{
  fromCopy = from;
  v7 = sub_100025194(from);
  v8 = sub_10002518C(fromCopy);
  v9 = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 1;
        [-[TransparencyGPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:v7 create:{1), "addFixed64:", sub_100038D38(input + 1)}];
      }
    }

    else
    {
      v9 = 1;
      [-[TransparencyGPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:v7 create:{1), "addVarint:", sub_100038C94(input + 8)}];
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v10 = sub_1000390CC(input + 1);
        v9 = 1;
        [-[TransparencyGPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:v7 create:{1), "addLengthDelimited:", v10}];

        break;
      case 3:
        v11 = objc_alloc_init(TransparencyGPBUnknownFieldSet);
        [input readUnknownGroup:v7 message:v11];
        v9 = 1;
        [-[TransparencyGPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:v7 create:{1), "addGroup:", v11}];

        break;
      case 5:
        v9 = 1;
        [-[TransparencyGPBUnknownFieldSet mutableFieldForNumber:create:](self mutableFieldForNumber:v7 create:{1), "addFixed32:", sub_100038D74(input + 1)}];
        break;
    }
  }

  return v9;
}

- (void)mergeFromCodedInputStream:(id)stream
{
  do
  {
    v5 = sub_100038E18(stream + 8);
  }

  while (v5 && [(TransparencyGPBUnknownFieldSet *)self mergeFieldFrom:v5 input:stream]);
}

- (void)getTags:(int *)tags
{
  fields = self->fields_;
  if (fields)
  {
    Count = CFDictionaryGetCount(fields);
    v7 = (&v9 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v7, 8 * Count);
    CFDictionaryGetKeysAndValues(self->fields_, v7, 0);
    for (; Count; --Count)
    {
      v8 = *v7++;
      *tags++ = v8;
    }
  }
}

@end