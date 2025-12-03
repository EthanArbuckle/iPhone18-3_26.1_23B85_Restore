@interface APDBEventRow
- (NSArray)branch;
- (NSArray)environment;
- (id)initImpressionId:(id)id timestamp:(id)timestamp purpose:(id)purpose event:(id)event source:(id)source unknownSource:(id)unknownSource handleSet:(id)set eventOrder:(id)self0 trace:(id)self1 branch:(id)self2 environment:(id)self3 propertiesJSON:(id)self4 internalProperties:(id)self5 table:(id)self6;
- (id)readOnlyColumns;
- (void)setBranch:(id)branch;
- (void)setEnvironment:(id)environment;
@end

@implementation APDBEventRow

- (id)readOnlyColumns
{
  v3 = [NSSet setWithObjects:@"branch", @"environment", 0];
  v7.receiver = self;
  v7.super_class = APDBEventRow;
  readOnlyColumns = [(APDBEventRow *)&v7 readOnlyColumns];
  v5 = [v3 setByAddingObjectsFromSet:readOnlyColumns];

  return v5;
}

- (id)initImpressionId:(id)id timestamp:(id)timestamp purpose:(id)purpose event:(id)event source:(id)source unknownSource:(id)unknownSource handleSet:(id)set eventOrder:(id)self0 trace:(id)self1 branch:(id)self2 environment:(id)self3 propertiesJSON:(id)self4 internalProperties:(id)self5 table:(id)self6
{
  idCopy = id;
  timestampCopy = timestamp;
  purposeCopy = purpose;
  eventCopy = event;
  sourceCopy = source;
  unknownSourceCopy = unknownSource;
  v25 = purposeCopy;
  setCopy = set;
  v26 = timestampCopy;
  orderCopy = order;
  v27 = eventCopy;
  traceCopy = trace;
  branchCopy = branch;
  environmentCopy = environment;
  nCopy = n;
  propertiesCopy = properties;
  v41.receiver = self;
  v41.super_class = APDBEventRow;
  v33 = [(APDBEventRow *)&v41 initAsNewObjectWithTable:table];
  v34 = v33;
  if (v33)
  {
    [v33 setValue:idCopy forColumnName:@"impressionId"];
    [v34 setValue:v26 forColumnName:@"timestamp"];
    [v34 setValue:v25 forColumnName:@"purpose"];
    [v34 setValue:v27 forColumnName:@"event"];
    [v34 setValue:sourceCopy forColumnName:@"source"];
    [v34 setValue:unknownSourceCopy forColumnName:@"unknownSource"];
    [v34 setValue:setCopy forColumnName:@"handleSet"];
    [v34 setValue:orderCopy forColumnName:@"eventOrder"];
    [v34 setValue:traceCopy forColumnName:@"trace"];
    [v34 setBranch:branchCopy];
    [v34 setEnvironment:environmentCopy];
    [v34 setValue:nCopy forColumnName:@"propertiesJSON"];
    [v34 setInternalProperties:propertiesCopy];
  }

  return v34;
}

- (void)setBranch:(id)branch
{
  v4 = [branch componentsJoinedByString:@"|"];
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

- (void)setEnvironment:(id)environment
{
  v4 = [environment componentsJoinedByString:@"|"];
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