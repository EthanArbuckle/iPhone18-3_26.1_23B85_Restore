@interface SKTaskPlistParser
+ (NSData)plistEndTag;
+ (NSData)plistStartTag;
- (SKTaskPlistParser)initWithCallback:(id)callback;
- (_NSRange)startRange;
- (void)parseData:(id)data;
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

- (SKTaskPlistParser)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v8.receiver = self;
  v8.super_class = SKTaskPlistParser;
  v5 = [(SKTaskPlistParser *)&v8 init];
  if (v5)
  {
    v6 = +[NSMutableData data];
    [(SKTaskPlistParser *)v5 setBuffer:v6];

    [(SKTaskPlistParser *)v5 setCallback:callbackCopy];
    [(SKTaskPlistParser *)v5 setStartRange:0x7FFFFFFFFFFFFFFFLL, 0];
  }

  return v5;
}

- (void)parseData:(id)data
{
  dataCopy = data;
  buffer = [(SKTaskPlistParser *)self buffer];
  [buffer appendData:dataCopy];

  buffer2 = [(SKTaskPlistParser *)self buffer];
  v6 = [buffer2 length];

  if (v6)
  {
    do
    {
      if ([(SKTaskPlistParser *)self startRange]== 0x7FFFFFFFFFFFFFFFLL)
      {
        buffer3 = [(SKTaskPlistParser *)self buffer];
        plistStartTag = [objc_opt_class() plistStartTag];
        buffer4 = [(SKTaskPlistParser *)self buffer];
        v10 = [buffer3 rangeOfData:plistStartTag options:0 range:{0, objc_msgSend(buffer4, "length")}];
        [(SKTaskPlistParser *)self setStartRange:v10, v11];

        if ([(SKTaskPlistParser *)self startRange]== 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      buffer5 = [(SKTaskPlistParser *)self buffer];
      plistEndTag = [objc_opt_class() plistEndTag];
      buffer6 = [(SKTaskPlistParser *)self buffer];
      v15 = [buffer5 rangeOfData:plistEndTag options:0 range:{0, objc_msgSend(buffer6, "length")}];
      v17 = v16;

      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      buffer7 = [(SKTaskPlistParser *)self buffer];
      v19 = &v15[v17];
      v20 = [buffer7 subdataWithRange:{-[SKTaskPlistParser startRange](self, "startRange"), &v15[v17] - -[SKTaskPlistParser startRange](self, "startRange")}];

      v21 = [NSPropertyListSerialization propertyListWithData:v20 options:0 format:0 error:0];
      if (v21)
      {
        buffer8 = [(SKTaskPlistParser *)self buffer];
        buffer9 = [(SKTaskPlistParser *)self buffer];
        buffer10 = [(SKTaskPlistParser *)self buffer];
        v25 = [buffer9 subdataWithRange:{v19 + 1, objc_msgSend(buffer10, "length") + ~v19}];
        [buffer8 setData:v25];

        [(SKTaskPlistParser *)self setStartRange:0x7FFFFFFFFFFFFFFFLL, 0];
        callback = [(SKTaskPlistParser *)self callback];
        (callback)[2](callback, v21);
      }

      buffer11 = [(SKTaskPlistParser *)self buffer];
      v28 = [buffer11 length];
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