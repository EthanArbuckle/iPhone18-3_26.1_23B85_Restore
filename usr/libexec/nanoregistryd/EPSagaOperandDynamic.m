@interface EPSagaOperandDynamic
- (EPRoutingSlip)routingSlip;
- (EPSagaOperandDynamic)initWithCoder:(id)a3;
- (EPSagaOperandDynamic)initWithEntryName:(id)a3 operandName:(id)a4;
- (NSObject)value;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EPSagaOperandDynamic

- (EPSagaOperandDynamic)initWithEntryName:(id)a3 operandName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EPSagaOperandDynamic *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryName, a3);
    objc_storeStrong(&v10->_operandName, a4);
  }

  return v10;
}

- (NSObject)value
{
  v3 = [(EPSagaOperandDynamic *)self routingSlip];
  v4 = [(EPSagaOperandDynamic *)self entryName];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [(EPSagaOperandDynamic *)self operandName];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (EPSagaOperandDynamic)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaOperandDynamic *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryName"];
    entryName = v5->_entryName;
    v5->_entryName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operandName"];
    operandName = v5->_operandName;
    v5->_operandName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  entryName = self->_entryName;
  v5 = a3;
  [v5 encodeObject:entryName forKey:@"entryName"];
  [v5 encodeObject:self->_operandName forKey:@"operandName"];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(EPSagaOperandDynamic *)self entryName];
  v6 = [(EPSagaOperandDynamic *)self operandName];
  v7 = [(EPSagaOperandDynamic *)self value];
  v8 = [NSString stringWithFormat:@"%@: %@[%@] = %@", v4, v5, v6, v7];

  return v8;
}

- (EPRoutingSlip)routingSlip
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);

  return WeakRetained;
}

@end