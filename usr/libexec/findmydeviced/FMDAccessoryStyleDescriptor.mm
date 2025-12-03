@interface FMDAccessoryStyleDescriptor
- (FMDAccessoryStyleDescriptor)initWithCoder:(id)coder;
- (FMDAccessoryStyleDescriptor)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDAccessoryStyleDescriptor

- (FMDAccessoryStyleDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FMDAccessoryStyleDescriptor;
  v5 = [(FMDAccessoryStyleDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"colorCode"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCode:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"colorCodeLeft"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeLeft:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"colorCodeRight"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeRight:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"colorCodeCase"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeCase:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"headbandType"];
    [(FMDAccessoryStyleDescriptor *)v5 setHeadbandType:v10];
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  colorCode = [(FMDAccessoryStyleDescriptor *)self colorCode];
  [v3 fm_safelySetObject:colorCode forKey:@"colorCode"];

  colorCodeLeft = [(FMDAccessoryStyleDescriptor *)self colorCodeLeft];
  [v3 fm_safelySetObject:colorCodeLeft forKey:@"colorCodeLeft"];

  colorCodeRight = [(FMDAccessoryStyleDescriptor *)self colorCodeRight];
  [v3 fm_safelySetObject:colorCodeRight forKey:@"colorCodeRight"];

  colorCodeCase = [(FMDAccessoryStyleDescriptor *)self colorCodeCase];
  [v3 fm_safelySetObject:colorCodeCase forKey:@"colorCodeCase"];

  headbandType = [(FMDAccessoryStyleDescriptor *)self headbandType];
  [v3 fm_safelySetObject:headbandType forKey:@"headbandType"];

  return v3;
}

- (FMDAccessoryStyleDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = FMDAccessoryStyleDescriptor;
  v5 = [(FMDAccessoryStyleDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorCode"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCode:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorCodeLeft"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeLeft:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorCodeRight"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeRight:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorCodeCase"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeCase:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headbandType"];
    [(FMDAccessoryStyleDescriptor *)v5 setHeadbandType:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  colorCode = [(FMDAccessoryStyleDescriptor *)self colorCode];
  [coderCopy encodeObject:colorCode forKey:@"colorCode"];

  colorCodeLeft = [(FMDAccessoryStyleDescriptor *)self colorCodeLeft];
  [coderCopy encodeObject:colorCodeLeft forKey:@"colorCodeLeft"];

  colorCodeRight = [(FMDAccessoryStyleDescriptor *)self colorCodeRight];
  [coderCopy encodeObject:colorCodeRight forKey:@"colorCodeRight"];

  colorCodeCase = [(FMDAccessoryStyleDescriptor *)self colorCodeCase];
  [coderCopy encodeObject:colorCodeCase forKey:@"colorCodeCase"];

  headbandType = [(FMDAccessoryStyleDescriptor *)self headbandType];
  [coderCopy encodeObject:headbandType forKey:@"headbandType"];
}

@end