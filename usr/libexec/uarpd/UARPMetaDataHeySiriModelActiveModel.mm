@interface UARPMetaDataHeySiriModelActiveModel
- (UARPMetaDataHeySiriModelActiveModel)init;
- (UARPMetaDataHeySiriModelActiveModel)initWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPMetaDataHeySiriModelActiveModel)initWithPropertyListValue:(id)a3 relativeURL:(id)a4;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataHeySiriModelActiveModel

- (UARPMetaDataHeySiriModelActiveModel)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataHeySiriModelActiveModel;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = 1619725833;
    v2->super._tlvLength = 1;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"HeySiri Model Active Model";
  }

  return v3;
}

- (UARPMetaDataHeySiriModelActiveModel)initWithPropertyListValue:(id)a3 relativeURL:(id)a4
{
  v5 = a3;
  v6 = [(UARPMetaDataHeySiriModelActiveModel *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataHeySiriModelActiveModel;
  v8 = [(UARPMetaData *)&v11 numberFromPlistValue:v5];
  v9 = v8;
  if (v8)
  {
    v7->_activeModel = [(UARPMetaDataHeySiriModelActiveModel *)v8 unsignedCharValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (UARPMetaDataHeySiriModelActiveModel)initWithLength:(unint64_t)a3 value:(void *)a4
{
  v6 = [(UARPMetaDataHeySiriModelActiveModel *)self init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  v11.receiver = v6;
  v11.super_class = UARPMetaDataHeySiriModelActiveModel;
  v8 = [(UARPMetaData *)&v11 numberWithLength:a3 value:a4];
  v9 = v8;
  if (v8)
  {
    v7->_activeModel = [(UARPMetaDataHeySiriModelActiveModel *)v8 unsignedCharValue];

LABEL_4:
    v9 = v7;
  }

  return v9;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataHeySiriModelActiveModel;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt8:[(UARPMetaDataHeySiriModelActiveModel *)self activeModel]];

  return v2;
}

- (id)description
{
  v3 = [(UARPMetaData *)self tlvName];
  v4 = [(UARPMetaDataHeySiriModelActiveModel *)self activeModel];
  v5 = @"YES";
  if (!v4)
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"<%@: %@>", v3, v5];

  return v6;
}

@end