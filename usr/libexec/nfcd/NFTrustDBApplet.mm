@interface NFTrustDBApplet
- (NFTrustDBApplet)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustDBApplet

- (NFTrustDBApplet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NFTrustDBApplet;
  v5 = [(NFTrustObject *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceAID"];
    [(NFTrustDBApplet *)v5 setValue:v6 forKey:@"instanceAID"];

    v7 = [NFNSCheckedDecoder coder:coderCopy decodeArrayOfClass:objc_opt_class() forKey:@"map"];
    [(NFTrustDBApplet *)v5 setValue:v7 forKey:@"map"];

    v8 = [(NFTrustDBApplet *)v5 map];
    v9 = [v8 count];

    if (v9 != 2)
    {
      v10 = +[NSMutableArray array];
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = v12;
        v14 = [(NFTrustDBApplet *)v5 map];
        v15 = [v14 count];

        if (v15 <= v11)
        {
          v16 = [KeyInSlot alloc];
          [v10 addObject:v16];
        }

        else
        {
          v16 = [(NFTrustDBApplet *)v5 map];
          v17 = [(KeyInSlot *)v16 objectAtIndex:v11];
          [v10 addObject:v17];
        }

        v12 = 0;
        v11 = 1;
      }

      while ((v13 & 1) != 0);
      [(NFTrustDBApplet *)v5 setMap:v10];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  instanceAID = [(NFTrustDBApplet *)self instanceAID];
  [coderCopy encodeObject:instanceAID forKey:@"instanceAID"];

  v6 = [(NFTrustDBApplet *)self map];
  [coderCopy encodeObject:v6 forKey:@"map"];
}

@end