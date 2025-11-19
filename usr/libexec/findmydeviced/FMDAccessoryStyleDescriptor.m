@interface FMDAccessoryStyleDescriptor
- (FMDAccessoryStyleDescriptor)initWithCoder:(id)a3;
- (FMDAccessoryStyleDescriptor)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDAccessoryStyleDescriptor

- (FMDAccessoryStyleDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FMDAccessoryStyleDescriptor;
  v5 = [(FMDAccessoryStyleDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"colorCode"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCode:v6];

    v7 = [v4 objectForKeyedSubscript:@"colorCodeLeft"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeLeft:v7];

    v8 = [v4 objectForKeyedSubscript:@"colorCodeRight"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeRight:v8];

    v9 = [v4 objectForKeyedSubscript:@"colorCodeCase"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeCase:v9];

    v10 = [v4 objectForKeyedSubscript:@"headbandType"];
    [(FMDAccessoryStyleDescriptor *)v5 setHeadbandType:v10];
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(FMDAccessoryStyleDescriptor *)self colorCode];
  [v3 fm_safelySetObject:v4 forKey:@"colorCode"];

  v5 = [(FMDAccessoryStyleDescriptor *)self colorCodeLeft];
  [v3 fm_safelySetObject:v5 forKey:@"colorCodeLeft"];

  v6 = [(FMDAccessoryStyleDescriptor *)self colorCodeRight];
  [v3 fm_safelySetObject:v6 forKey:@"colorCodeRight"];

  v7 = [(FMDAccessoryStyleDescriptor *)self colorCodeCase];
  [v3 fm_safelySetObject:v7 forKey:@"colorCodeCase"];

  v8 = [(FMDAccessoryStyleDescriptor *)self headbandType];
  [v3 fm_safelySetObject:v8 forKey:@"headbandType"];

  return v3;
}

- (FMDAccessoryStyleDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FMDAccessoryStyleDescriptor;
  v5 = [(FMDAccessoryStyleDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorCode"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCode:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorCodeLeft"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeLeft:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorCodeRight"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeRight:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorCodeCase"];
    [(FMDAccessoryStyleDescriptor *)v5 setColorCodeCase:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headbandType"];
    [(FMDAccessoryStyleDescriptor *)v5 setHeadbandType:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDAccessoryStyleDescriptor *)self colorCode];
  [v4 encodeObject:v5 forKey:@"colorCode"];

  v6 = [(FMDAccessoryStyleDescriptor *)self colorCodeLeft];
  [v4 encodeObject:v6 forKey:@"colorCodeLeft"];

  v7 = [(FMDAccessoryStyleDescriptor *)self colorCodeRight];
  [v4 encodeObject:v7 forKey:@"colorCodeRight"];

  v8 = [(FMDAccessoryStyleDescriptor *)self colorCodeCase];
  [v4 encodeObject:v8 forKey:@"colorCodeCase"];

  v9 = [(FMDAccessoryStyleDescriptor *)self headbandType];
  [v4 encodeObject:v9 forKey:@"headbandType"];
}

@end