@interface CLMicroLocationLoi
- (CLMicroLocationLoi)initWithIdentifier:(id)identifier andType:(int64_t)type;
- (void)dealloc;
@end

@implementation CLMicroLocationLoi

- (CLMicroLocationLoi)initWithIdentifier:(id)identifier andType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = CLMicroLocationLoi;
  v6 = [(CLMicroLocationLoi *)&v8 init];
  if (v6)
  {
    v6->_loiIdentifier = [identifier copy];
    v6->_type = type;
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