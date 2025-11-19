@interface NDTSQStatement
- (BOOL)isEqual:(id)a3;
- (NDTSQStatement)initWithQueue:(id)a3 text:(id)a4;
- (double)fetchDouble;
- (id)description;
- (id)fetchBlob;
- (id)fetchString;
- (int)bindBlob:(id)a3;
- (int)bindDouble:(double)a3;
- (int)bindInteger:(int64_t)a3;
- (int)bindString:(id)a3;
- (int)bindUint64:(unint64_t)a3;
- (int)step;
- (int64_t)fetchInteger;
- (unint64_t)fetchUint64;
- (unint64_t)hash;
- (void)dealloc;
- (void)setParsed:(sqlite3_stmt *)a3;
@end

@implementation NDTSQStatement

- (NDTSQStatement)initWithQueue:(id)a3 text:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NDTSQStatement;
  v9 = [(NDTSQStatement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_q, a3);
    v11 = [v8 copy];
    text = v10->_text;
    v10->_text = v11;
  }

  return v10;
}

- (void)dealloc
{
  parsed = self->_parsed;
  if (parsed)
  {
    q = self->_q;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100038E20;
    block[3] = &unk_1000B56E8;
    block[4] = parsed;
    dispatch_async(q, block);
  }

  v5.receiver = self;
  v5.super_class = NDTSQStatement;
  [(NDTSQStatement *)&v5 dealloc];
}

- (int)bindInteger:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindInteger: index out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  return sqlite3_bind_int64(v5, v6, a3) == 0;
}

- (int)bindUint64:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindUint64: index out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  return sqlite3_bind_int64(v5, v6, a3) == 0;
}

- (int)bindString:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v9 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindString: index out of bounds" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  v7 = sqlite3_bind_text(v5, v6, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) == 0;

  return v7;
}

- (int)bindDouble:(double)a3
{
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindDouble: index out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  return sqlite3_bind_double(v5, v6, a3) == 0;
}

- (int)bindBlob:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v9 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindBlob: index out of bounds" userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  v7 = sqlite3_bind_blob(v5, v6, [v4 bytes], objc_msgSend(v4, "length"), 0xFFFFFFFFFFFFFFFFLL) == 0;

  return v7;
}

- (int)step
{
  dispatch_assert_queue_V2(self->_q);
  [(NDTSQStatement *)self resetFetchCursor];
  v3 = [(NDTSQStatement *)self parsed];

  return sqlite3_step(v3);
}

- (int64_t)fetchInteger
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchInteger: column out of bounds" userInfo:0];
    objc_exception_throw(v6);
  }

  v3 = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;

  return sqlite3_column_int64(v3, fetchPosition);
}

- (unint64_t)fetchUint64
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchUint64: column out of bounds" userInfo:0];
    objc_exception_throw(v6);
  }

  v3 = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;

  return sqlite3_column_int64(v3, fetchPosition);
}

- (id)fetchString
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v7 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchString: column out of bounds" userInfo:0];
    objc_exception_throw(v7);
  }

  v3 = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;
  v5 = sqlite3_column_text(v3, fetchPosition);
  if (v5)
  {
    v5 = [NSString stringWithUTF8String:v5];
  }

  return v5;
}

- (double)fetchDouble
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchDouble: column out of bounds" userInfo:0];
    objc_exception_throw(v6);
  }

  v3 = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;

  return sqlite3_column_double(v3, fetchPosition);
}

- (id)fetchBlob
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchBlob: column out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  v3 = sqlite3_column_bytes([(NDTSQStatement *)self parsed], self->fetchPosition);
  v4 = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;
  v6 = sqlite3_column_blob(v4, fetchPosition);
  if (v6)
  {
    v6 = [NSData dataWithBytes:v6 length:v3];
  }

  return v6;
}

- (void)setParsed:(sqlite3_stmt *)a3
{
  dispatch_assert_queue_V2(self->_q);
  if (a3)
  {
    self->columnCount = sqlite3_column_count(a3);
    self->bindCount = sqlite3_bind_parameter_count(a3);
  }

  self->_parsed = a3;
}

- (id)description
{
  v3 = [(NDTSQStatement *)self text];
  v4 = [NSString stringWithFormat:@"NDTQSStatement:%p:%@, parsed=%p", self, v3, [(NDTSQStatement *)self parsed]];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(NDTSQStatement *)self text];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 text];
    v6 = [(NDTSQStatement *)self text];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end