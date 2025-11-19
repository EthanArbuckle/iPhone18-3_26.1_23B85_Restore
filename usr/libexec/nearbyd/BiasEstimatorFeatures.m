@interface BiasEstimatorFeatures
- (BOOL)isEqual:(id)a3;
- (BiasEstimatorFeatures)initWithBiasEstimatorFeatures:(id)a3;
- (BiasEstimatorFeatures)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)populateOrderedInputFeature;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BiasEstimatorFeatures

- (BiasEstimatorFeatures)initWithBiasEstimatorFeatures:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v30 = +[NSAssertionHandler currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"UWBSignalFeatures.mm" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"features"}];
  }

  v31.receiver = self;
  v31.super_class = BiasEstimatorFeatures;
  v6 = [(BiasEstimatorFeatures *)&v31 init];
  if (v6)
  {
    v6->_antennaMask = [v5 antennaMask];
    [v5 uwbTime];
    v6->_uwbTime = v7;
    [v5 timestamp];
    v6->_timestamp = v8;
    [v5 tofPicSecond];
    v6->_tofPicSecond = v9;
    [v5 rssiDbm];
    v6->_rssiDbm = v10;
    [v5 soiRssiDbm];
    v6->_soiRssiDbm = v11;
    [v5 toaNoiseRms];
    v6->_toaNoiseRms = v12;
    [v5 toaPpwinRms];
    v6->_toaPpwinRms = v13;
    [v5 toaPpwinPeak];
    v6->_toaPpwinPeak = v14;
    [v5 rttInitiator];
    v6->_rttInitiator = v15;
    [v5 tatInitiator];
    v6->_tatInitiator = v16;
    [v5 rttResponder];
    v6->_rttResponder = v17;
    [v5 tatResponder];
    v6->_tatResponder = v18;
    v19 = [v5 cirPacket1];
    v20 = [v19 copy];
    cirPacket1 = v6->_cirPacket1;
    v6->_cirPacket1 = v20;

    [v5 leadingEdgePacket1];
    v6->_leadingEdgePacket1 = v22;
    [v5 firstPathIndexPacket1];
    v6->_firstPathIndexPacket1 = v23;
    v6->_rxAntennaPacket1 = [v5 rxAntennaPacket1];
    v24 = [v5 cirPacket2];
    v25 = [v24 copy];
    cirPacket2 = v6->_cirPacket2;
    v6->_cirPacket2 = v25;

    [v5 leadingEdgePacket2];
    v6->_leadingEdgePacket2 = v27;
    [v5 firstPathIndexPacket2];
    v6->_firstPathIndexPacket2 = v28;
    v6->_rxAntennaPacket2 = [v5 rxAntennaPacket2];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_antennaMask forKey:@"antennaMask"];
  [v4 encodeDouble:@"uwbTime" forKey:self->_uwbTime];
  [v4 encodeDouble:@"timestamp" forKey:self->_timestamp];
  [v4 encodeDouble:@"tofPicSecond" forKey:self->_tofPicSecond];
  [v4 encodeDouble:@"rssiDbm" forKey:self->_rssiDbm];
  [v4 encodeDouble:@"soiRssiDbm" forKey:self->_soiRssiDbm];
  [v4 encodeDouble:@"toaNoiseRms" forKey:self->_toaNoiseRms];
  [v4 encodeDouble:@"toaPpwinRms" forKey:self->_toaPpwinRms];
  [v4 encodeDouble:@"toaPpwinPeak" forKey:self->_toaPpwinPeak];
  [v4 encodeDouble:@"rttInitiator" forKey:self->_rttInitiator];
  [v4 encodeDouble:@"tatInitiator" forKey:self->_tatInitiator];
  [v4 encodeDouble:@"rttResponder" forKey:self->_rttResponder];
  [v4 encodeDouble:@"tatResponder" forKey:self->_tatResponder];
  [v4 encodeObject:self->_cirPacket1 forKey:@"cirPacket1"];
  [v4 encodeDouble:@"leadingEdgePacket1" forKey:self->_leadingEdgePacket1];
  [v4 encodeDouble:@"firstPathIndexPacket1" forKey:self->_firstPathIndexPacket1];
  [v4 encodeInt:self->_rxAntennaPacket1 forKey:@"rxAntennaPacket1"];
  [v4 encodeObject:self->_cirPacket2 forKey:@"cirPacket2"];
  [v4 encodeDouble:@"leadingEdgePacket2" forKey:self->_leadingEdgePacket2];
  [v4 encodeDouble:@"firstPathIndexPacket2" forKey:self->_firstPathIndexPacket2];
  [v4 encodeInt:self->_rxAntennaPacket2 forKey:@"rxAntennaPacket2"];
}

- (BiasEstimatorFeatures)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntForKey:@"antennaMask"];
  [v4 decodeDoubleForKey:@"uwbTime"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"timestamp"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"tofPicSecond"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"soiRssiDbm"];
  v44 = v12;
  [v4 decodeDoubleForKey:@"rssiDbm"];
  v14 = v13;
  [v4 decodeDoubleForKey:@"toaNoiseRms"];
  v16 = v15;
  [v4 decodeDoubleForKey:@"toaPpwinRms"];
  v43 = v17;
  [v4 decodeDoubleForKey:@"toaPpwinPeak"];
  v42 = v18;
  [v4 decodeDoubleForKey:@"rttInitiator"];
  v41 = v19;
  [v4 decodeDoubleForKey:@"tatInitiator"];
  v40 = v20;
  [v4 decodeDoubleForKey:@"rttResponder"];
  v39 = v21;
  [v4 decodeDoubleForKey:@"tatResponder"];
  v38 = v22;
  v23 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"cirPacket1"];
  [v4 decodeDoubleForKey:@"leadingEdgePacket1"];
  v25 = v24;
  [v4 decodeDoubleForKey:@"firstPathIndexPacket1"];
  v37 = v26;
  v27 = [v4 decodeIntForKey:@"rxAntennaPacket1"];
  v28 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"cirPacket2"];
  [v4 decodeDoubleForKey:@"leadingEdgePacket2"];
  v30 = v29;
  [v4 decodeDoubleForKey:@"firstPathIndexPacket2"];
  v32 = v31;
  v33 = [v4 decodeIntForKey:@"rxAntennaPacket2"];
  v45.receiver = self;
  v45.super_class = BiasEstimatorFeatures;
  v34 = [(BiasEstimatorFeatures *)&v45 init];
  v35 = v34;
  if (v34)
  {
    [(BiasEstimatorFeatures *)v34 setAntennaMask:v5];
    [(BiasEstimatorFeatures *)v35 setUwbTime:v7];
    [(BiasEstimatorFeatures *)v35 setTimestamp:v9];
    [(BiasEstimatorFeatures *)v35 setTofPicSecond:v11];
    [(BiasEstimatorFeatures *)v35 setRssiDbm:v14];
    [(BiasEstimatorFeatures *)v35 setSoiRssiDbm:v44];
    [(BiasEstimatorFeatures *)v35 setToaNoiseRms:v16];
    [(BiasEstimatorFeatures *)v35 setToaPpwinRms:v43];
    [(BiasEstimatorFeatures *)v35 setToaPpwinPeak:v42];
    [(BiasEstimatorFeatures *)v35 setRttInitiator:v41];
    [(BiasEstimatorFeatures *)v35 setTatInitiator:v40];
    [(BiasEstimatorFeatures *)v35 setRttResponder:v39];
    [(BiasEstimatorFeatures *)v35 setTatResponder:v38];
    [(BiasEstimatorFeatures *)v35 setCirPacket1:v23];
    [(BiasEstimatorFeatures *)v35 setLeadingEdgePacket1:v25];
    [(BiasEstimatorFeatures *)v35 setFirstPathIndexPacket1:v37];
    [(BiasEstimatorFeatures *)v35 setRxAntennaPacket1:v27];
    [(BiasEstimatorFeatures *)v35 setCirPacket2:v28];
    [(BiasEstimatorFeatures *)v35 setLeadingEdgePacket2:v30];
    [(BiasEstimatorFeatures *)v35 setFirstPathIndexPacket2:v32];
    [(BiasEstimatorFeatures *)v35 setRxAntennaPacket2:v33];
  }

  return v35;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithBiasEstimatorFeatures:self];
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
      v55 = 1;
LABEL_30:

      goto LABEL_31;
    }

    antennaMask = self->_antennaMask;
    v8 = [(BiasEstimatorFeatures *)v5 antennaMask];
    uwbTime = self->_uwbTime;
    [(BiasEstimatorFeatures *)v6 uwbTime];
    v11 = v10;
    timestamp = self->_timestamp;
    [(BiasEstimatorFeatures *)v6 timestamp];
    v14 = v13;
    rssiDbm = self->_rssiDbm;
    [(BiasEstimatorFeatures *)v6 rssiDbm];
    v17 = v16;
    soiRssiDbm = self->_soiRssiDbm;
    [(BiasEstimatorFeatures *)v6 soiRssiDbm];
    v20 = v19;
    tofPicSecond = self->_tofPicSecond;
    [(BiasEstimatorFeatures *)v6 tofPicSecond];
    v79 = v21;
    toaNoiseRms = self->_toaNoiseRms;
    [(BiasEstimatorFeatures *)v6 toaNoiseRms];
    v77 = v22;
    toaPpwinRms = self->_toaPpwinRms;
    [(BiasEstimatorFeatures *)v6 toaPpwinRms];
    v75 = v23;
    toaPpwinPeak = self->_toaPpwinPeak;
    [(BiasEstimatorFeatures *)v6 toaPpwinPeak];
    v73 = v24;
    rttInitiator = self->_rttInitiator;
    [(BiasEstimatorFeatures *)v6 rttInitiator];
    v71 = v25;
    tatInitiator = self->_tatInitiator;
    [(BiasEstimatorFeatures *)v6 tatInitiator];
    v69 = v26;
    rttResponder = self->_rttResponder;
    [(BiasEstimatorFeatures *)v6 rttResponder];
    v67 = v27;
    tatResponder = self->_tatResponder;
    [(BiasEstimatorFeatures *)v6 tatResponder];
    v65 = v28;
    cirPacket1 = self->_cirPacket1;
    if (!cirPacket1)
    {
      v30 = [(BiasEstimatorFeatures *)v6 cirPacket1];

      if (!v30)
      {
        v33 = 0;
LABEL_7:
        leadingEdgePacket1 = self->_leadingEdgePacket1;
        [(BiasEstimatorFeatures *)v6 leadingEdgePacket1];
        v63 = v34;
        firstPathIndexPacket1 = self->_firstPathIndexPacket1;
        [(BiasEstimatorFeatures *)v6 firstPathIndexPacket1];
        v61 = v35;
        rxAntennaPacket1 = self->_rxAntennaPacket1;
        v37 = [(BiasEstimatorFeatures *)v6 rxAntennaPacket1];
        cirPacket2 = self->_cirPacket2;
        v59 = v17;
        v60 = rssiDbm;
        v57 = v20;
        v58 = soiRssiDbm;
        if (!cirPacket2)
        {
          v39 = [(BiasEstimatorFeatures *)v6 cirPacket2];

          if (!v39)
          {
            v41 = v14;
            v42 = timestamp;
            v43 = v11;
            v44 = uwbTime;
            goto LABEL_11;
          }

          cirPacket2 = self->_cirPacket2;
        }

        v39 = [(BiasEstimatorFeatures *)v6 cirPacket2];
        v40 = [(NSArray *)cirPacket2 isEqualToArray:v39];
        v41 = v14;
        v42 = timestamp;
        v43 = v11;
        v44 = uwbTime;

        LOBYTE(v39) = v40 ^ 1;
LABEL_11:
        leadingEdgePacket2 = self->_leadingEdgePacket2;
        [(BiasEstimatorFeatures *)v6 leadingEdgePacket2];
        v47 = v46;
        firstPathIndexPacket2 = self->_firstPathIndexPacket2;
        [(BiasEstimatorFeatures *)v6 firstPathIndexPacket2];
        v50 = v49;
        rxAntennaPacket2 = self->_rxAntennaPacket2;
        v52 = [(BiasEstimatorFeatures *)v6 rxAntennaPacket2];
        v53 = v44 != v43;
        if (v42 != v41)
        {
          v53 = 1;
        }

        if (antennaMask != v8)
        {
          v53 = 1;
        }

        if (tofPicSecond != v79)
        {
          v53 = 1;
        }

        if (v60 != v59)
        {
          v53 = 1;
        }

        if (v58 != v57)
        {
          v53 = 1;
        }

        if (toaNoiseRms != v77)
        {
          v53 = 1;
        }

        v54 = (leadingEdgePacket2 == v47) & ~(v53 | (toaPpwinRms != v75 || toaPpwinPeak != v73 || rttInitiator != v71 || tatInitiator != v69 || rttResponder != v67 || tatResponder != v65) | v33 | (leadingEdgePacket1 != v63 || firstPathIndexPacket1 != v61 || rxAntennaPacket1 != v37) | v39);
        if (firstPathIndexPacket2 != v50)
        {
          v54 = 0;
        }

        v55 = rxAntennaPacket2 == v52 && v54;
        goto LABEL_30;
      }

      cirPacket1 = self->_cirPacket1;
    }

    v31 = [(BiasEstimatorFeatures *)v6 cirPacket1];
    v32 = [(NSArray *)cirPacket1 isEqualToArray:v31];

    v33 = v32 ^ 1;
    goto LABEL_7;
  }

  v55 = 0;
LABEL_31:

  return v55;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"AntennaMask: %d", self->_antennaMask];
  [v6 appendFormat:@", current Timestamp: %f", *&self->_timestamp];
  [v6 appendFormat:@", uwbTime: %f", *&self->_uwbTime];
  [v6 appendFormat:@", tofPicSecond: %f", *&self->_tofPicSecond];
  [v6 appendFormat:@", rssiDbm: %.3f", *&self->_rssiDbm];
  [v6 appendFormat:@", soiRssiDbm: %.3f", *&self->_soiRssiDbm];
  [v6 appendFormat:@", toaNoiseRms: %d", self->_toaNoiseRms];
  [v6 appendFormat:@", toaPpwinRms: %d", self->_toaPpwinRms];
  [v6 appendFormat:@", toaPpwinPeak: %d", self->_toaPpwinPeak];
  [v6 appendFormat:@", rttInitiator: %d", self->_rttInitiator];
  [v6 appendFormat:@", tatInitiator: %d", self->_tatInitiator];
  [v6 appendFormat:@", rttResponder: %d", self->_rttResponder];
  [v6 appendFormat:@", tatResponder: %d", self->_tatResponder];
  cirPacket1 = self->_cirPacket1;
  if (cirPacket1)
  {
    v8 = [(NSArray *)cirPacket1 description];
    [v6 appendFormat:@", cirPacket1: %@", v8];
  }

  [v6 appendFormat:@", leadingEdgePacket1: %d", self->_leadingEdgePacket1];
  [v6 appendFormat:@", firstPathIndexPacket1: %d", self->_firstPathIndexPacket1];
  [v6 appendFormat:@", rxAntennaPacket1: %d", self->_rxAntennaPacket1];
  cirPacket2 = self->_cirPacket2;
  if (cirPacket2)
  {
    v10 = [(NSArray *)cirPacket2 description];
    [v6 appendFormat:@", cirPacket1: %@", v10];
  }

  [v6 appendFormat:@", leadingEdgePacket2: %d", self->_leadingEdgePacket2];
  [v6 appendFormat:@", firstPathIndexPacket2: %d", self->_firstPathIndexPacket2];
  [v6 appendFormat:@", rxAntennaPacket2: %d>", self->_rxAntennaPacket2];

  return v6;
}

- (id)populateOrderedInputFeature
{
  v3 = [NSMutableString alloc];
  rssiDbm = self->_rssiDbm;
  v5 = [v3 initWithFormat:@"%d, %f, %f, %d, %.3f, %.3f", self->_antennaMask, *&self->_timestamp, *&self->_uwbTime, self->_tofPicSecond, *&rssiDbm, *&self->_soiRssiDbm];
  [v5 appendFormat:@", %d, %d, %d", self->_toaNoiseRms, self->_toaPpwinRms, self->_toaPpwinPeak];
  [v5 appendFormat:@", %llu, %llu, %llu, %llu", self->_rttInitiator, self->_tatInitiator, self->_rttResponder, self->_tatResponder];
  for (i = 0; [(NSArray *)self->_cirPacket1 count]> i; ++i)
  {
    v7 = [(NSArray *)self->_cirPacket1 objectAtIndex:i];
    v8 = [v7 real];

    v9 = [(NSArray *)self->_cirPacket1 objectAtIndex:i];
    v10 = [v9 imag];

    [v5 appendFormat:@", %d, %d", objc_msgSend(v8, "intValue"), objc_msgSend(v10, "intValue")];
  }

  [v5 appendFormat:@", %d, %d, %d", self->_leadingEdgePacket1, self->_firstPathIndexPacket1, self->_rxAntennaPacket1];
  for (j = 0; [(NSArray *)self->_cirPacket2 count]> j; ++j)
  {
    v12 = [(NSArray *)self->_cirPacket2 objectAtIndex:j];
    v13 = [v12 real];

    v14 = [(NSArray *)self->_cirPacket2 objectAtIndex:j];
    v15 = [v14 imag];

    [v5 appendFormat:@", %d, %d", objc_msgSend(v13, "intValue"), objc_msgSend(v15, "intValue")];
  }

  [v5 appendFormat:@", %d, %d, %d", self->_leadingEdgePacket2, self->_firstPathIndexPacket2, self->_rxAntennaPacket2];

  return v5;
}

- (unint64_t)hash
{
  v43 = [NSNumber numberWithInt:self->_antennaMask];
  v33 = [v43 hash];
  v42 = [NSNumber numberWithDouble:self->_uwbTime];
  v31 = [v42 hash];
  v41 = [NSNumber numberWithDouble:self->_timestamp];
  v30 = [v41 hash];
  v40 = [NSNumber numberWithDouble:self->_tofPicSecond];
  v28 = [v40 hash];
  v39 = [NSNumber numberWithDouble:self->_rssiDbm];
  v27 = [v39 hash];
  v38 = [NSNumber numberWithDouble:self->_soiRssiDbm];
  v25 = [v38 hash];
  v37 = [NSNumber numberWithDouble:self->_toaNoiseRms];
  v24 = [v37 hash];
  v36 = [NSNumber numberWithDouble:self->_toaPpwinRms];
  v23 = [v36 hash];
  v35 = [NSNumber numberWithDouble:self->_toaPpwinPeak];
  v21 = [v35 hash];
  v34 = [NSNumber numberWithDouble:self->_rttInitiator];
  v20 = [v34 hash];
  v32 = [NSNumber numberWithDouble:self->_tatInitiator];
  v18 = [v32 hash];
  v29 = [NSNumber numberWithDouble:self->_rttResponder];
  v17 = [v29 hash];
  v26 = [NSNumber numberWithDouble:self->_tatResponder];
  v16 = [v26 hash];
  v15 = [(NSArray *)self->_cirPacket1 hash];
  v22 = [NSNumber numberWithDouble:self->_leadingEdgePacket1];
  v14 = [v22 hash];
  v19 = [NSNumber numberWithDouble:self->_firstPathIndexPacket1];
  v3 = [v19 hash];
  v4 = [NSNumber numberWithInt:self->_rxAntennaPacket1];
  v5 = [v4 hash];
  v6 = [(NSArray *)self->_cirPacket2 hash];
  v7 = [NSNumber numberWithDouble:self->_leadingEdgePacket2];
  v8 = [v7 hash];
  v9 = [NSNumber numberWithDouble:self->_firstPathIndexPacket2];
  v10 = [v9 hash];
  v11 = [NSNumber numberWithInt:self->_rxAntennaPacket2];
  v12 = v5 ^ v6 ^ v8 ^ v10 ^ [v11 hash];

  return v31 ^ v33 ^ v30 ^ v28 ^ v27 ^ v25 ^ v24 ^ v23 ^ v21 ^ v20 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v12;
}

@end