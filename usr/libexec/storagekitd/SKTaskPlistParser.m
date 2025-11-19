@interface SKTaskPlistParser
+ (NSData)plistEndTag;
+ (NSData)plistStartTag;
- (SKTaskPlistParser)initWithCallback:(id)a3;
- (_NSRange)startRange;
- (void)parseData:(id)a3;
@end

@implementation SKTaskPlistParser

+ (NSData)plistStartTag
{
  if (qword_100059338 != -1)
  {
    sub_10002E4AC();
  }

  v3 = qword_100059330;

  return v3;
}

+ (NSData)plistEndTag
{
  if (qword_100059348 != -1)
  {
    sub_10002E4C0();
  }

  v3 = qword_100059340;

  return v3;
}

- (SKTaskPlistParser)initWithCallback:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKTaskPlistParser;
  v5 = [(SKTaskPlistParser *)&v8 init];
  if (v5)
  {
    v6 = +[NSMutableData data];
    [(SKTaskPlistParser *)v5 setBuffer:v6];

    [(SKTaskPlistParser *)v5 setCallback:v4];
    [(SKTaskPlistParser *)v5 setStartRange:0x7FFFFFFFFFFFFFFFLL, 0];
  }

  return v5;
}

- (void)parseData:(id)a3
{
  v29 = a3;
  v4 = [(SKTaskPlistParser *)self buffer];
  [v4 appendData:v29];

  v5 = [(SKTaskPlistParser *)self buffer];
  v6 = [v5 length];

  if (v6)
  {
    do
    {
      if ([(SKTaskPlistParser *)self startRange]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = [(SKTaskPlistParser *)self buffer];
        v8 = [objc_opt_class() plistStartTag];
        v9 = [(SKTaskPlistParser *)self buffer];
        v10 = [v7 rangeOfData:v8 options:0 range:{0, objc_msgSend(v9, "length")}];
        [(SKTaskPlistParser *)self setStartRange:v10, v11];

        if ([(SKTaskPlistParser *)self startRange]== 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v12 = [(SKTaskPlistParser *)self buffer];
      v13 = [objc_opt_class() plistEndTag];
      v14 = [(SKTaskPlistParser *)self buffer];
      v15 = [v12 rangeOfData:v13 options:0 range:{0, objc_msgSend(v14, "length")}];
      v17 = v16;

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v18 = [(SKTaskPlistParser *)self buffer];
      v19 = &v15[v17];
      v20 = [v18 subdataWithRange:{-[SKTaskPlistParser startRange](self, "startRange"), &v15[v17] - -[SKTaskPlistParser startRange](self, "startRange")}];

      v21 = [NSPropertyListSerialization propertyListWithData:v20 options:0 format:0 error:0];
      if (v21)
      {
        v22 = [(SKTaskPlistParser *)self buffer];
        v23 = [(SKTaskPlistParser *)self buffer];
        v24 = [(SKTaskPlistParser *)self buffer];
        v25 = [v23 subdataWithRange:{v19 + 1, objc_msgSend(v24, "length") + ~v19}];
        [v22 setData:v25];

        [(SKTaskPlistParser *)self setStartRange:0x7FFFFFFFFFFFFFFFLL, 0];
        v26 = [(SKTaskPlistParser *)self callback];
        (v26)[2](v26, v21);
      }

      v27 = [(SKTaskPlistParser *)self buffer];
      v28 = [v27 length];
    }

    while (v28);
  }
}

- (_NSRange)startRange
{
  objc_copyStruct(v4, &self->_startRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end