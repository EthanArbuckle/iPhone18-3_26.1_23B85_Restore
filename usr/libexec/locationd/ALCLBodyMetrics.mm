@interface ALCLBodyMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)genderAsString:(int)string;
- (int)StringAsGender:(id)gender;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ALCLBodyMetrics

- (id)genderAsString:(int)string
{
  if (!string)
  {
    return @"kGenderMale";
  }

  if (string == 1)
  {
    return @"kGenderFemale";
  }

  return [NSString stringWithFormat:@"(unknown: %i)", *&string];
}

- (int)StringAsGender:(id)gender
{
  if ([gender isEqualToString:@"kGenderMale"])
  {
    return 0;
  }

  else
  {
    return [gender isEqualToString:@"kGenderFemale"];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCLBodyMetrics;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLBodyMetrics *)&v3 description], [(ALCLBodyMetrics *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  gender = self->_gender;
  if (gender)
  {
    if (gender == 1)
    {
      v5 = @"kGenderFemale";
    }

    else
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_gender];
    }
  }

  else
  {
    v5 = @"kGenderMale";
  }

  [v3 setObject:v5 forKey:@"gender"];
  *&v6 = self->_heightM;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"heightM"}];
  *&v7 = self->_weightKG;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v7), @"weightKG"}];
  *&v8 = self->_vo2max;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v8), @"vo2max"}];
  *&v9 = self->_age;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v9), @"age"}];
  *&v10 = self->_hrmin;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v10), @"hrmin"}];
  *&v11 = self->_hrmax;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v11), @"hrmax"}];
  *&v12 = self->_hronset;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v12), @"hronset"}];
  *&v13 = self->_pal;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v13), @"pal"}];
  return v3;
}

- (void)writeTo:(id)to
{
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();

  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  *(to + 3) = self->_gender;
  *(to + 4) = LODWORD(self->_heightM);
  *(to + 10) = LODWORD(self->_weightKG);
  *(to + 9) = LODWORD(self->_vo2max);
  *(to + 2) = LODWORD(self->_age);
  *(to + 6) = LODWORD(self->_hrmin);
  *(to + 5) = LODWORD(self->_hrmax);
  *(to + 7) = LODWORD(self->_hronset);
  *(to + 8) = LODWORD(self->_pal);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_gender;
  *(result + 4) = LODWORD(self->_heightM);
  *(result + 10) = LODWORD(self->_weightKG);
  *(result + 9) = LODWORD(self->_vo2max);
  *(result + 2) = LODWORD(self->_age);
  *(result + 6) = LODWORD(self->_hrmin);
  *(result + 5) = LODWORD(self->_hrmax);
  *(result + 7) = LODWORD(self->_hronset);
  *(result + 8) = LODWORD(self->_pal);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = self->_gender == *(equal + 3) && self->_heightM == *(equal + 4) && self->_weightKG == *(equal + 10) && self->_vo2max == *(equal + 9) && self->_age == *(equal + 2) && self->_hrmin == *(equal + 6) && self->_hrmax == *(equal + 5) && self->_hronset == *(equal + 7) && self->_pal == *(equal + 8);
  }

  return v5;
}

- (unint64_t)hash
{
  gender = self->_gender;
  heightM = self->_heightM;
  v8 = -heightM;
  if (heightM >= 0.0)
  {
    v8 = self->_heightM;
  }

  *v3.i32 = floorf(v8 + 0.5);
  v9 = (v8 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v10, v4, v3).i32[0];
  v11 = 2654435761u * *v3.i32;
  v12 = v11 + v9;
  if (v9 <= 0.0)
  {
    v12 = 2654435761u * *v3.i32;
  }

  v13 = v11 - fabsf(v9);
  if (v9 >= 0.0)
  {
    v13 = v12;
  }

  weightKG = self->_weightKG;
  if (weightKG < 0.0)
  {
    weightKG = -weightKG;
  }

  *v4.i32 = floorf(weightKG + 0.5);
  v15 = (weightKG - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v16 = vbslq_s8(v10, v5, v4);
  v17 = 2654435761u * *v16.i32;
  v18 = v17 + v15;
  if (v15 <= 0.0)
  {
    v18 = 2654435761u * *v16.i32;
  }

  v19 = v17 - fabsf(v15);
  v20 = v15 < 0.0;
  vo2max = self->_vo2max;
  if (!v20)
  {
    v19 = v18;
  }

  if (vo2max < 0.0)
  {
    vo2max = -vo2max;
  }

  *v16.i32 = floorf(vo2max + 0.5);
  v22 = (vo2max - *v16.i32) * 1.8447e19;
  *v5.i32 = *v16.i32 - (truncf(*v16.i32 * 5.421e-20) * 1.8447e19);
  v23 = vbslq_s8(v10, v5, v16);
  v24 = 2654435761u * *v23.i32;
  v25 = v24 + v22;
  if (v22 <= 0.0)
  {
    v25 = 2654435761u * *v23.i32;
  }

  v26 = v24 - fabsf(v22);
  if (v22 >= 0.0)
  {
    v26 = v25;
  }

  age = self->_age;
  if (age < 0.0)
  {
    age = -age;
  }

  *v23.i32 = floorf(age + 0.5);
  v28 = (age - *v23.i32) * 1.8447e19;
  *v5.i32 = *v23.i32 - (truncf(*v23.i32 * 5.421e-20) * 1.8447e19);
  v29 = vbslq_s8(v10, v5, v23);
  v30 = 2654435761u * *v29.i32;
  v31 = v30 + v28;
  if (v28 <= 0.0)
  {
    v31 = 2654435761u * *v29.i32;
  }

  v32 = v30 - fabsf(v28);
  v20 = v28 < 0.0;
  hrmin = self->_hrmin;
  if (!v20)
  {
    v32 = v31;
  }

  if (hrmin < 0.0)
  {
    hrmin = -hrmin;
  }

  *v29.i32 = floorf(hrmin + 0.5);
  v34 = (hrmin - *v29.i32) * 1.8447e19;
  *v5.i32 = *v29.i32 - (truncf(*v29.i32 * 5.421e-20) * 1.8447e19);
  v35 = vbslq_s8(v10, v5, v29);
  v36 = 2654435761u * *v35.i32;
  v37 = v36 + v34;
  if (v34 <= 0.0)
  {
    v37 = 2654435761u * *v35.i32;
  }

  v38 = v36 - fabsf(v34);
  if (v34 >= 0.0)
  {
    v38 = v37;
  }

  hrmax = self->_hrmax;
  if (hrmax < 0.0)
  {
    hrmax = -hrmax;
  }

  *v35.i32 = floorf(hrmax + 0.5);
  v40 = (hrmax - *v35.i32) * 1.8447e19;
  *v5.i32 = *v35.i32 - (truncf(*v35.i32 * 5.421e-20) * 1.8447e19);
  v41 = vbslq_s8(v10, v5, v35);
  v42 = 2654435761u * *v41.i32;
  v43 = v42 + v40;
  if (v40 <= 0.0)
  {
    v43 = 2654435761u * *v41.i32;
  }

  v44 = v42 - fabsf(v40);
  v20 = v40 < 0.0;
  hronset = self->_hronset;
  if (!v20)
  {
    v44 = v43;
  }

  if (hronset < 0.0)
  {
    hronset = -hronset;
  }

  *v41.i32 = floorf(hronset + 0.5);
  v46 = (hronset - *v41.i32) * 1.8447e19;
  *v5.i32 = *v41.i32 - (truncf(*v41.i32 * 5.421e-20) * 1.8447e19);
  v47 = vbslq_s8(v10, v5, v41);
  v48 = 2654435761u * *v47.i32;
  v49 = v48 + v46;
  if (v46 <= 0.0)
  {
    v49 = 2654435761u * *v47.i32;
  }

  v50 = v48 - fabsf(v46);
  if (v46 >= 0.0)
  {
    v50 = v49;
  }

  pal = self->_pal;
  if (pal < 0.0)
  {
    pal = -pal;
  }

  *v2.i32 = floorf(pal + 0.5);
  v52 = (pal - *v2.i32) * 1.8447e19;
  *v47.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v10, v47, v2).i32[0];
  v53 = 2654435761u * *v2.i32;
  v54 = v53 + v52;
  if (v52 <= 0.0)
  {
    v54 = 2654435761u * *v2.i32;
  }

  v55 = v53 - fabsf(v52);
  if (v52 >= 0.0)
  {
    v55 = v54;
  }

  return v13 ^ (2654435761 * gender) ^ v19 ^ v26 ^ v32 ^ v38 ^ v44 ^ v50 ^ v55;
}

- (void)mergeFrom:(id)from
{
  self->_gender = *(from + 3);
  self->_heightM = *(from + 4);
  self->_weightKG = *(from + 10);
  self->_vo2max = *(from + 9);
  self->_age = *(from + 2);
  self->_hrmin = *(from + 6);
  self->_hrmax = *(from + 5);
  self->_hronset = *(from + 7);
  self->_pal = *(from + 8);
}

@end