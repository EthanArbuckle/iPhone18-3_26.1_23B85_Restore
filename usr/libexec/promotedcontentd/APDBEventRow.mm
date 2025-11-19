@interface APDBEventRow
- (NSArray)branch;
- (NSArray)environment;
- (id)initImpressionId:(id)a3 timestamp:(id)a4 purpose:(id)a5 event:(id)a6 source:(id)a7 unknownSource:(id)a8 handleSet:(id)a9 eventOrder:(id)a10 trace:(id)a11 branch:(id)a12 environment:(id)a13 propertiesJSON:(id)a14 internalProperties:(id)a15 table:(id)a16;
- (id)readOnlyColumns;
- (void)setBranch:(id)a3;
- (void)setEnvironment:(id)a3;
@end

@implementation APDBEventRow

- (id)readOnlyColumns
{
  v3 = [NSSet setWithObjects:@"branch", @"environment", 0];
  v7.receiver = self;
  v7.super_class = APDBEventRow;
  v4 = [(APDBEventRow *)&v7 readOnlyColumns];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)initImpressionId:(id)a3 timestamp:(id)a4 purpose:(id)a5 event:(id)a6 source:(id)a7 unknownSource:(id)a8 handleSet:(id)a9 eventOrder:(id)a10 trace:(id)a11 branch:(id)a12 environment:(id)a13 propertiesJSON:(id)a14 internalProperties:(id)a15 table:(id)a16
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v40 = a7;
  v39 = a8;
  v25 = v23;
  v38 = a9;
  v26 = v22;
  v37 = a10;
  v27 = v24;
  v28 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v32 = a15;
  v41.receiver = self;
  v41.super_class = APDBEventRow;
  v33 = [(APDBEventRow *)&v41 initAsNewObjectWithTable:a16];
  v34 = v33;
  if (v33)
  {
    [v33 setValue:v21 forColumnName:@"impressionId"];
    [v34 setValue:v26 forColumnName:@"timestamp"];
    [v34 setValue:v25 forColumnName:@"purpose"];
    [v34 setValue:v27 forColumnName:@"event"];
    [v34 setValue:v40 forColumnName:@"source"];
    [v34 setValue:v39 forColumnName:@"unknownSource"];
    [v34 setValue:v38 forColumnName:@"handleSet"];
    [v34 setValue:v37 forColumnName:@"eventOrder"];
    [v34 setValue:v28 forColumnName:@"trace"];
    [v34 setBranch:v29];
    [v34 setEnvironment:v30];
    [v34 setValue:v31 forColumnName:@"propertiesJSON"];
    [v34 setInternalProperties:v32];
  }

  return v34;
}

- (void)setBranch:(id)a3
{
  v4 = [a3 componentsJoinedByString:@"|"];
  [(APDBEventRow *)self setValue:v4 forColumnName:@"branchString"];
}

- (NSArray)branch
{
  v2 = [(APDBEventRow *)self valueForColumnName:@"branchString"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentsSeparatedByString:@"|"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEnvironment:(id)a3
{
  v4 = [a3 componentsJoinedByString:@"|"];
  [(APDBEventRow *)self setValue:v4 forColumnName:@"environmentString"];
}

- (NSArray)environment
{
  v2 = [(APDBEventRow *)self valueForColumnName:@"environmentString"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 componentsSeparatedByString:@"|"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end