@interface Complex
- (BOOL)isEqual:(id)equal;
- (Complex)initWithCoder:(id)coder;
- (Complex)initWithRealPart:(id)part imagPart:(id)imagPart;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Complex

- (Complex)initWithRealPart:(id)part imagPart:(id)imagPart
{
  partCopy = part;
  imagPartCopy = imagPart;
  v12.receiver = self;
  v12.super_class = Complex;
  v9 = [(Complex *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_real, part);
    objc_storeStrong(&v10->_imag, imagPart);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  real = [(Complex *)self real];
  imag = [(Complex *)self imag];
  v7 = [v4 initWithRealPart:real imagPart:imag];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_real forKey:@"realValue"];
  [coderCopy encodeObject:self->_imag forKey:@"imagValue"];
}

- (Complex)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"realValue"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imagValue"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v5 = equalCopy;
  v6 = v5;
  real = self->_real;
  if (real)
  {
    goto LABEL_5;
  }

  real = [v5 real];

  if (real)
  {
    real = self->_real;
LABEL_5:
    real2 = [v6 real];
    v10 = real == real2;

    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:
  imag = self->_imag;
  if (!imag)
  {
    imag = [v6 imag];

    if (!imag)
    {
      v14 = 1;
      goto LABEL_10;
    }

    imag = self->_imag;
  }

  imag2 = [v6 imag];
  v14 = imag == imag2;

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