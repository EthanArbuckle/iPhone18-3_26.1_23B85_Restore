@interface Complex
- (BOOL)isEqual:(id)a3;
- (Complex)initWithCoder:(id)a3;
- (Complex)initWithRealPart:(id)a3 imagPart:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Complex

- (Complex)initWithRealPart:(id)a3 imagPart:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = Complex;
  v9 = [(Complex *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_real, a3);
    objc_storeStrong(&v10->_imag, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(Complex *)self real];
  v6 = [(Complex *)self imag];
  v7 = [v4 initWithRealPart:v5 imagPart:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_real forKey:@"realValue"];
  [v4 encodeObject:self->_imag forKey:@"imagValue"];
}

- (Complex)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"realValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imagValue"];
  v10.receiver = self;
  v10.super_class = Complex;
  v7 = [(Complex *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(Complex *)v7 setReal:v5];
    [(Complex *)v8 setImag:v6];
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = v5;
  real = self->_real;
  if (real)
  {
    goto LABEL_5;
  }

  v8 = [v5 real];

  if (v8)
  {
    real = self->_real;
LABEL_5:
    v9 = [v6 real];
    v10 = real == v9;

    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  imag = self->_imag;
  if (!imag)
  {
    v12 = [v6 imag];

    if (!v12)
    {
      v14 = 1;
      goto LABEL_10;
    }

    imag = self->_imag;
  }

  v13 = [v6 imag];
  v14 = imag == v13;

LABEL_10:
  v15 = v10 && v14;

LABEL_12:
  return v15;
}

- (id)description
{
  [(NSNumber *)self->_real doubleValue];
  v4 = v3;
  [(NSNumber *)self->_imag doubleValue];
  return [NSString stringWithFormat:@"RealVal=%d, ImagVal=%d", v4, v5];
}

@end