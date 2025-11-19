@interface CLMicroLocationLoi
- (CLMicroLocationLoi)initWithIdentifier:(id)a3 andType:(int64_t)a4;
- (void)dealloc;
@end

@implementation CLMicroLocationLoi

- (CLMicroLocationLoi)initWithIdentifier:(id)a3 andType:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CLMicroLocationLoi;
  v6 = [(CLMicroLocationLoi *)&v8 init];
  if (v6)
  {
    v6->_loiIdentifier = [a3 copy];
    v6->_type = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLMicroLocationLoi;
  [(CLMicroLocationLoi *)&v3 dealloc];
}

@end