@interface NIAlgorithmConvergenceState
- (BOOL)isEqual:(id)a3;
- (NIAlgorithmConvergenceState)initWithAlgorithmConvergenceState:(id)a3;
- (NIAlgorithmConvergenceState)initWithCoder:(id)a3;
- (NIAlgorithmConvergenceState)initWithConvergenceStatus:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAlgorithmConvergenceState

- (NIAlgorithmConvergenceState)initWithConvergenceStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NIAlgorithmConvergenceState;
  result = [(NIAlgorithmConvergenceState *)&v5 init];
  if (result)
  {
    result->_convergence = a3;
    *&result->_insufficientSignalStrength = 0;
    result->_insufficientLighting = 0;
  }

  return result;
}

- (NIAlgorithmConvergenceState)initWithAlgorithmConvergenceState:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NIAlgorithmConvergenceState;
  v5 = [(NIAlgorithmConvergenceState *)&v7 init];
  if (v5)
  {
    v5->_convergence = [v4 convergence];
    v5->_insufficientSignalStrength = [v4 insufficientSignalStrength];
    v5->_insufficientHorizontalSweep = [v4 insufficientHorizontalSweep];
    v5->_insufficientVerticalSweep = [v4 insufficientVerticalSweep];
    v5->_insufficientMovement = [v4 insufficientMovement];
    v5->_insufficientLighting = [v4 insufficientLighting];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithAlgorithmConvergenceState:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_convergence forKey:@"convergence"];
  [v4 encodeBool:self->_insufficientSignalStrength forKey:@"insufficientSignalStrength"];
  [v4 encodeBool:self->_insufficientHorizontalSweep forKey:@"insufficientHorizontalSweep"];
  [v4 encodeBool:self->_insufficientVerticalSweep forKey:@"insufficientVerticalSweep"];
  [v4 encodeBool:self->_insufficientMovement forKey:@"insufficientMovement"];
  [v4 encodeBool:self->_insufficientLighting forKey:@"insufficientLighting"];
}

- (NIAlgorithmConvergenceState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"convergence"];
  v6 = [v4 decodeBoolForKey:@"insufficientSignalStrength"];
  v7 = [v4 decodeBoolForKey:@"insufficientHorizontalSweep"];
  v8 = [v4 decodeBoolForKey:@"insufficientVerticalSweep"];
  v9 = [v4 decodeBoolForKey:@"insufficientMovement"];
  v10 = [v4 decodeBoolForKey:@"insufficientLighting"];
  v14.receiver = self;
  v14.super_class = NIAlgorithmConvergenceState;
  v11 = [(NIAlgorithmConvergenceState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_convergence = v5;
    v11->_insufficientSignalStrength = v6;
    v11->_insufficientHorizontalSweep = v7;
    v11->_insufficientVerticalSweep = v8;
    v11->_insufficientMovement = v9;
    v11->_insufficientLighting = v10;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v15 = 1;
    }

    else
    {
      convergence = self->_convergence;
      v8 = [(NIAlgorithmConvergenceState *)v5 convergence];
      insufficientSignalStrength = self->_insufficientSignalStrength;
      v10 = [(NIAlgorithmConvergenceState *)v6 insufficientSignalStrength];
      insufficientHorizontalSweep = self->_insufficientHorizontalSweep;
      v12 = [(NIAlgorithmConvergenceState *)v6 insufficientHorizontalSweep];
      insufficientVerticalSweep = self->_insufficientVerticalSweep;
      v13 = [(NIAlgorithmConvergenceState *)v6 insufficientVerticalSweep];
      insufficientMovement = self->_insufficientMovement;
      v19 = [(NIAlgorithmConvergenceState *)v6 insufficientMovement];
      insufficientLighting = self->_insufficientLighting;
      v14 = [(NIAlgorithmConvergenceState *)v6 insufficientLighting];
      v15 = 0;
      if (convergence == v8 && insufficientSignalStrength == v10 && insufficientHorizontalSweep == v12 && insufficientVerticalSweep == v13)
      {
        v15 = insufficientMovement == v19 && (v14 & 1) == insufficientLighting;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithInteger:self->_convergence];
  v4 = [v3 hash] ^ self->_insufficientSignalStrength ^ self->_insufficientHorizontalSweep ^ self->_insufficientVerticalSweep ^ self->_insufficientMovement;
  insufficientLighting = self->_insufficientLighting;

  return v4 ^ insufficientLighting;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  convergence = self->_convergence;
  if (convergence >= 3)
  {
    __assert_rtn("NIAlgorithmConvergenceStatusToString", "NIAlgorithmConvergenceState.mm", 142, "false");
  }

  [v6 appendFormat:@", Convergence: %@", *(&off_1009A0578 + convergence)];
  if (self->_insufficientSignalStrength)
  {
    v8 = @"yes";
  }

  else
  {
    v8 = @"no";
  }

  [v6 appendFormat:@", insufficientSignalStrength: %@", v8];
  if (self->_insufficientHorizontalSweep)
  {
    v9 = @"yes";
  }

  else
  {
    v9 = @"no";
  }

  [v6 appendFormat:@", insufficientHorizontalSweep: %@", v9];
  if (self->_insufficientVerticalSweep)
  {
    v10 = @"yes";
  }

  else
  {
    v10 = @"no";
  }

  [v6 appendFormat:@", insufficientVerticalSweep: %@", v10];
  if (self->_insufficientMovement)
  {
    v11 = @"yes";
  }

  else
  {
    v11 = @"no";
  }

  [v6 appendFormat:@", insufficientMovement: %@", v11];
  if (self->_insufficientLighting)
  {
    v12 = @"yes";
  }

  else
  {
    v12 = @"no";
  }

  [v6 appendFormat:@", insufficientLighting: %@", v12];
  [v6 appendString:@">"];

  return v6;
}

@end