@interface NRGPBAppViewListImageRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRGPBAppViewListImageRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBAppViewListImageRequest;
  v3 = [(NRGPBAppViewListImageRequest *)&v7 description];
  v4 = [(NRGPBAppViewListImageRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  *&v4 = self->_scale;
  v5 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v5 forKey:@"scale"];

  *&v6 = self->_width;
  v7 = [NSNumber numberWithFloat:v6];
  [v3 setObject:v7 forKey:@"width"];

  *&v8 = self->_height;
  v9 = [NSNumber numberWithFloat:v8];
  [v3 setObject:v9 forKey:@"height"];

  return v3;
}

- (void)writeTo:(id)a3
{
  scale = self->_scale;
  v7 = a3;
  PBDataWriterWriteFloatField();
  width = self->_width;
  PBDataWriterWriteFloatField();
  height = self->_height;
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 3) = LODWORD(self->_scale);
  *(a3 + 4) = LODWORD(self->_width);
  *(a3 + 2) = LODWORD(self->_height);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = LODWORD(self->_scale);
  *(result + 4) = LODWORD(self->_width);
  *(result + 2) = LODWORD(self->_height);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_scale == v4[3] && self->_width == v4[4] && self->_height == v4[2];

  return v5;
}

- (unint64_t)hash
{
  scale = self->_scale;
  v7 = -scale;
  if (scale >= 0.0)
  {
    v7 = self->_scale;
  }

  *v3.i32 = floorf(v7 + 0.5);
  v8 = (v7 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = 2654435761u * *vbslq_s8(v9, v4, v3).i32;
  v11 = v10 + v8;
  v12 = fabsf(v8);
  if (v8 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v8 >= 0.0)
  {
    v13 = v11;
  }

  width = self->_width;
  if (width < 0.0)
  {
    width = -width;
  }

  *v4.i32 = floorf(width + 0.5);
  v15 = width - *v4.i32;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v16 = vbslq_s8(v9, v5, v4);
  v17 = v15 * 1.8447e19;
  v18 = 2654435761u * *v16.i32;
  v19 = v18 + v17;
  if (v17 <= 0.0)
  {
    v19 = 2654435761u * *v16.i32;
  }

  v20 = v18 - fabsf(v17);
  if (v17 >= 0.0)
  {
    v20 = v19;
  }

  height = self->_height;
  if (height < 0.0)
  {
    height = -height;
  }

  *v2.i32 = floorf(height + 0.5);
  v22 = (height - *v2.i32) * 1.8447e19;
  *v16.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v23 = 2654435761u * *vbslq_s8(v9, v16, v2).i32;
  v24 = v23 + v22;
  v25 = fabsf(v22);
  if (v22 <= 0.0)
  {
    v24 = v23;
  }

  v26 = v23 - v25;
  if (v22 >= 0.0)
  {
    v26 = v24;
  }

  return v20 ^ v13 ^ v26;
}

- (void)mergeFrom:(id)a3
{
  self->_scale = *(a3 + 3);
  self->_width = *(a3 + 4);
  self->_height = *(a3 + 2);
}

@end