@interface EPSagaOperandDynamic
- (EPRoutingSlip)routingSlip;
- (EPSagaOperandDynamic)initWithCoder:(id)coder;
- (EPSagaOperandDynamic)initWithEntryName:(id)name operandName:(id)operandName;
- (NSObject)value;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EPSagaOperandDynamic

- (EPSagaOperandDynamic)initWithEntryName:(id)name operandName:(id)operandName
{
  nameCopy = name;
  operandNameCopy = operandName;
  v9 = [(EPSagaOperandDynamic *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entryName, name);
    objc_storeStrong(&v10->_operandName, operandName);
  }

  return v10;
}

- (NSObject)value
{
  routingSlip = [(EPSagaOperandDynamic *)self routingSlip];
  entryName = [(EPSagaOperandDynamic *)self entryName];
  v5 = [routingSlip objectForKeyedSubscript:entryName];
  operandName = [(EPSagaOperandDynamic *)self operandName];
  v7 = [v5 objectForKeyedSubscript:operandName];

  return v7;
}

- (EPSagaOperandDynamic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(EPSagaOperandDynamic *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryName"];
    entryName = v5->_entryName;
    v5->_entryName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operandName"];
    operandName = v5->_operandName;
    v5->_operandName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  entryName = self->_entryName;
  coderCopy = coder;
  [coderCopy encodeObject:entryName forKey:@"entryName"];
  [coderCopy encodeObject:self->_operandName forKey:@"operandName"];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  entryName = [(EPSagaOperandDynamic *)self entryName];
  operandName = [(EPSagaOperandDynamic *)self operandName];
  value = [(EPSagaOperandDynamic *)self value];
  v8 = [NSString stringWithFormat:@"%@: %@[%@] = %@", v4, entryName, operandName, value];

  return v8;
}

- (EPRoutingSlip)routingSlip
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlip);

  return WeakRetained;
}

@end