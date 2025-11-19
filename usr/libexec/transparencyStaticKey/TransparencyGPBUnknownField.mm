@interface TransparencyGPBUnknownField
- (BOOL)isEqual:(id)a3;
- (TransparencyGPBUnknownField)initWithNumber:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (unint64_t)serializedSize;
- (unint64_t)serializedSizeAsMessageSetExtension;
- (void)addFixed32:(unsigned int)a3;
- (void)addFixed64:(unint64_t)a3;
- (void)addGroup:(id)a3;
- (void)addLengthDelimited:(id)a3;
- (void)addVarint:(unint64_t)a3;
- (void)dealloc;
- (void)mergeFromField:(id)a3;
- (void)writeAsMessageSetExtensionToOutput:(id)a3;
- (void)writeToOutput:(id)a3;
@end

@implementation TransparencyGPBUnknownField

- (TransparencyGPBUnknownField)initWithNumber:(int)a3
{
  v5.receiver = self;
  v5.super_class = TransparencyGPBUnknownField;
  result = [(TransparencyGPBUnknownField *)&v5 init];
  if (result)
  {
    result->number_ = a3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TransparencyGPBUnknownField;
  [(TransparencyGPBUnknownField *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[TransparencyGPBUnknownField allocWithZone:](TransparencyGPBUnknownField initWithNumber:"initWithNumber:", self->number_];
  v5->mutableFixed32List_ = [(TransparencyGPBUInt32Array *)self->mutableFixed32List_ copyWithZone:a3];
  v5->mutableFixed64List_ = [(TransparencyGPBUInt64Array *)self->mutableFixed64List_ copyWithZone:a3];
  v5->mutableLengthDelimitedList_ = [(NSMutableArray *)self->mutableLengthDelimitedList_ mutableCopyWithZone:a3];
  v5->mutableVarintList_ = [(TransparencyGPBUInt64Array *)self->mutableVarintList_ copyWithZone:a3];
  if ([(NSMutableArray *)self->mutableGroupList_ count])
  {
    v5->mutableGroupList_ = [[NSMutableArray allocWithZone:?], "initWithCapacity:", [(NSMutableArray *)self->mutableGroupList_ count]];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    mutableGroupList = self->mutableGroupList_;
    v7 = [(NSMutableArray *)mutableGroupList countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(mutableGroupList);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:a3];
          [(NSMutableArray *)v5->mutableGroupList_ addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)mutableGroupList countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->number_ != *(a3 + 2))
  {
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((!-[TransparencyGPBUInt64Array count](self->mutableVarintList_, "count") && ![*(a3 + 2) count] || (v5 = -[TransparencyGPBUInt64Array isEqual:](self->mutableVarintList_, "isEqual:", *(a3 + 2))) != 0) && (!-[TransparencyGPBUInt32Array count](self->mutableFixed32List_, "count") && !objc_msgSend(*(a3 + 3), "count") || (v5 = -[TransparencyGPBUInt32Array isEqual:](self->mutableFixed32List_, "isEqual:", *(a3 + 3))) != 0) && (!-[TransparencyGPBUInt64Array count](self->mutableFixed64List_, "count") && !objc_msgSend(*(a3 + 4), "count") || (v5 = -[TransparencyGPBUInt64Array isEqual:](self->mutableFixed64List_, "isEqual:", *(a3 + 4))) != 0) && (!-[NSMutableArray count](self->mutableLengthDelimitedList_, "count") && !objc_msgSend(*(a3 + 5), "count") || (v5 = -[NSMutableArray isEqual:](self->mutableLengthDelimitedList_, "isEqual:", *(a3 + 5))) != 0))
  {
    if (-[NSMutableArray count](self->mutableGroupList_, "count") || [*(a3 + 6) count])
    {
      mutableGroupList = self->mutableGroupList_;
      v7 = *(a3 + 6);

      LOBYTE(v5) = [(NSMutableArray *)mutableGroupList isEqual:v7];
      return v5;
    }

LABEL_22:
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TransparencyGPBUInt64Array *)self->mutableVarintList_ hash];
  v4 = [(TransparencyGPBUInt32Array *)self->mutableFixed32List_ hash]+ 32 * v3 - v3;
  v5 = [(TransparencyGPBUInt64Array *)self->mutableFixed64List_ hash]- v4 + 32 * v4;
  v6 = [(NSMutableArray *)self->mutableLengthDelimitedList_ hash]+ 32 * v5 - v5;
  return [(NSMutableArray *)self->mutableGroupList_ hash]+ 32 * v6 - v6 + 28629151;
}

- (void)writeToOutput:(id)a3
{
  if ([(TransparencyGPBUInt64Array *)self->mutableVarintList_ count])
  {
    [a3 writeUInt64Array:self->number_ values:self->mutableVarintList_ tag:0];
  }

  if ([(TransparencyGPBUInt32Array *)self->mutableFixed32List_ count])
  {
    [a3 writeFixed32Array:self->number_ values:self->mutableFixed32List_ tag:0];
  }

  if ([(TransparencyGPBUInt64Array *)self->mutableFixed64List_ count])
  {
    [a3 writeFixed64Array:self->number_ values:self->mutableFixed64List_ tag:0];
  }

  if ([(NSMutableArray *)self->mutableLengthDelimitedList_ count])
  {
    [a3 writeBytesArray:self->number_ values:self->mutableLengthDelimitedList_];
  }

  if ([(NSMutableArray *)self->mutableGroupList_ count])
  {
    number = self->number_;
    mutableGroupList = self->mutableGroupList_;

    [a3 writeUnknownGroupArray:number values:mutableGroupList];
  }
}

- (unint64_t)serializedSize
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  number = self->number_;
  mutableVarintList = self->mutableVarintList_;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100034FC4;
  v31[3] = &unk_100096200;
  v31[4] = &v33;
  v32 = number;
  [(TransparencyGPBUInt64Array *)mutableVarintList enumerateValuesWithBlock:v31];
  mutableFixed32List = self->mutableFixed32List_;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100035000;
  v29[3] = &unk_100096228;
  v29[4] = &v33;
  v30 = number;
  [(TransparencyGPBUInt32Array *)mutableFixed32List enumerateValuesWithBlock:v29];
  mutableFixed64List = self->mutableFixed64List_;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10003503C;
  v27[3] = &unk_100096200;
  v27[4] = &v33;
  v28 = number;
  [(TransparencyGPBUInt64Array *)mutableFixed64List enumerateValuesWithBlock:v27];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  mutableLengthDelimitedList = self->mutableLengthDelimitedList_;
  v8 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v23 objects:v38 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(mutableLengthDelimitedList);
        }

        v11 = sub_10001B424(number, *(*(&v23 + 1) + 8 * i));
        v34[3] += v11;
      }

      v8 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v23 objects:v38 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  mutableGroupList = self->mutableGroupList_;
  v13 = [(NSMutableArray *)mutableGroupList countByEnumeratingWithState:&v19 objects:v37 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(mutableGroupList);
        }

        v16 = sub_10001B318(number, *(*(&v19 + 1) + 8 * j));
        v34[3] += v16;
      }

      v13 = [(NSMutableArray *)mutableGroupList countByEnumeratingWithState:&v19 objects:v37 count:16];
    }

    while (v13);
  }

  v17 = v34[3];
  _Block_object_dispose(&v33, 8);
  return v17;
}

- (void)writeAsMessageSetExtensionToOutput:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mutableLengthDelimitedList = self->mutableLengthDelimitedList_;
  v6 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mutableLengthDelimitedList);
        }

        [a3 writeRawMessageSetExtension:self->number_ value:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unint64_t)serializedSizeAsMessageSetExtension
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mutableLengthDelimitedList = self->mutableLengthDelimitedList_;
  v4 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v11;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(mutableLengthDelimitedList);
      }

      v6 += sub_10001B6F0(self->number_, *(*(&v10 + 1) + 8 * i));
    }

    v5 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);
  return v6;
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p>: Field: %d {\n", objc_opt_class(), self, self->number_];
  mutableVarintList = self->mutableVarintList_;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100035544;
  v28[3] = &unk_1000957E0;
  v28[4] = v3;
  [(TransparencyGPBUInt64Array *)mutableVarintList enumerateValuesWithBlock:v28];
  mutableFixed32List = self->mutableFixed32List_;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100035574;
  v27[3] = &unk_100095948;
  v27[4] = v3;
  [(TransparencyGPBUInt32Array *)mutableFixed32List enumerateValuesWithBlock:v27];
  mutableFixed64List = self->mutableFixed64List_;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000355A4;
  v26[3] = &unk_1000957E0;
  v26[4] = v3;
  [(TransparencyGPBUInt64Array *)mutableFixed64List enumerateValuesWithBlock:v26];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  mutableLengthDelimitedList = self->mutableLengthDelimitedList_;
  v8 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(mutableLengthDelimitedList);
        }

        [(NSMutableString *)v3 appendFormat:@"\t%@\n", *(*(&v22 + 1) + 8 * i)];
      }

      v9 = [(NSMutableArray *)mutableLengthDelimitedList countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  mutableGroupList = self->mutableGroupList_;
  v13 = [(NSMutableArray *)mutableGroupList countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(mutableGroupList);
        }

        [(NSMutableString *)v3 appendFormat:@"\t%@\n", *(*(&v18 + 1) + 8 * j)];
      }

      v14 = [(NSMutableArray *)mutableGroupList countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v14);
  }

  [(NSMutableString *)v3 appendString:@"}"];
  return v3;
}

- (void)mergeFromField:(id)a3
{
  v5 = [a3 varintList];
  if ([v5 count])
  {
    mutableVarintList = self->mutableVarintList_;
    if (mutableVarintList)
    {
      [(TransparencyGPBUInt64Array *)mutableVarintList addValuesFromArray:v5];
    }

    else
    {
      self->mutableVarintList_ = [v5 copy];
    }
  }

  v7 = [a3 fixed32List];
  if ([v7 count])
  {
    mutableFixed32List = self->mutableFixed32List_;
    if (mutableFixed32List)
    {
      [(TransparencyGPBUInt32Array *)mutableFixed32List addValuesFromArray:v7];
    }

    else
    {
      self->mutableFixed32List_ = [v7 copy];
    }
  }

  v9 = [a3 fixed64List];
  if ([v9 count])
  {
    mutableFixed64List = self->mutableFixed64List_;
    if (mutableFixed64List)
    {
      [(TransparencyGPBUInt64Array *)mutableFixed64List addValuesFromArray:v9];
    }

    else
    {
      self->mutableFixed64List_ = [v9 copy];
    }
  }

  v11 = [a3 lengthDelimitedList];
  if ([v11 count])
  {
    mutableLengthDelimitedList = self->mutableLengthDelimitedList_;
    if (mutableLengthDelimitedList)
    {
      [(NSMutableArray *)mutableLengthDelimitedList addObjectsFromArray:v11];
    }

    else
    {
      self->mutableLengthDelimitedList_ = [v11 mutableCopy];
    }
  }

  v13 = [a3 groupList];
  if ([v13 count])
  {
    if (!self->mutableGroupList_)
    {
      self->mutableGroupList_ = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v19 + 1) + 8 * v17) copy];
          [(NSMutableArray *)self->mutableGroupList_ addObject:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }
}

- (void)addVarint:(unint64_t)a3
{
  v5 = a3;
  mutableVarintList = self->mutableVarintList_;
  if (mutableVarintList)
  {

    [(TransparencyGPBUInt64Array *)mutableVarintList addValue:?];
  }

  else
  {
    self->mutableVarintList_ = [[TransparencyGPBUInt64Array alloc] initWithValues:&v5 count:1];
  }
}

- (void)addFixed32:(unsigned int)a3
{
  v5 = a3;
  mutableFixed32List = self->mutableFixed32List_;
  if (mutableFixed32List)
  {

    [(TransparencyGPBUInt32Array *)mutableFixed32List addValue:?];
  }

  else
  {
    self->mutableFixed32List_ = [[TransparencyGPBUInt32Array alloc] initWithValues:&v5 count:1];
  }
}

- (void)addFixed64:(unint64_t)a3
{
  v5 = a3;
  mutableFixed64List = self->mutableFixed64List_;
  if (mutableFixed64List)
  {

    [(TransparencyGPBUInt64Array *)mutableFixed64List addValue:?];
  }

  else
  {
    self->mutableFixed64List_ = [[TransparencyGPBUInt64Array alloc] initWithValues:&v5 count:1];
  }
}

- (void)addLengthDelimited:(id)a3
{
  v5 = a3;
  mutableLengthDelimitedList = self->mutableLengthDelimitedList_;
  if (mutableLengthDelimitedList)
  {

    [(NSMutableArray *)mutableLengthDelimitedList addObject:?];
  }

  else
  {
    self->mutableLengthDelimitedList_ = [[NSMutableArray alloc] initWithObjects:&v5 count:1];
  }
}

- (void)addGroup:(id)a3
{
  v5 = a3;
  mutableGroupList = self->mutableGroupList_;
  if (mutableGroupList)
  {

    [(NSMutableArray *)mutableGroupList addObject:?];
  }

  else
  {
    self->mutableGroupList_ = [[NSMutableArray alloc] initWithObjects:&v5 count:1];
  }
}

@end