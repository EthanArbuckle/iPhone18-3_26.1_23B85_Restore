@interface SKTaskRawParser
- (SKTaskRawParser)initWithCallback:(id)a3;
- (void)parseData:(id)a3;
@end

@implementation SKTaskRawParser

- (SKTaskRawParser)initWithCallback:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKTaskRawParser;
  v5 = [(SKTaskRawParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKTaskRawParser *)v5 setCallback:v4];
  }

  return v6;
}

- (void)parseData:(id)a3
{
  v4 = a3;
  v5 = [(SKTaskRawParser *)self callback];
  v5[2](v5, v4);
}

@end