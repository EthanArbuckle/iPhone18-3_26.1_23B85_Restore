@interface _DASKnapsackSolver
- (_DASKnapsackSolver)init;
- (id)solveKnapsackWithCapacity:(id)a3 forItemWeights:(id)a4 andItemValues:(id)a5;
- (void)reset;
@end

@implementation _DASKnapsackSolver

- (_DASKnapsackSolver)init
{
  v6.receiver = self;
  v6.super_class = _DASKnapsackSolver;
  v2 = [(_DASKnapsackSolver *)&v6 init];
  v3 = [_DASDaemonLogger logForCategory:@"DASKnapsackSolver"];
  v4 = *(v2 + 2);
  *(v2 + 2) = v3;

  v2[8] = 0;
  *(v2 + 3) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  return v2;
}

- (void)reset
{
  free(self->_index_vect);
  free(self->_weight_vect);
  free(self->_values_vect);
  J = self->_J;
  if (J)
  {
    if (self->_n_rows)
    {
      v4 = 0;
      do
      {
        free(self->_J[v4++]);
      }

      while (v4 < self->_n_rows);
      J = self->_J;
    }

    free(J);
  }

  self->_n_rows = 0;
  self->_n_cols = 0;
}

- (id)solveKnapsackWithCapacity:(id)a3 forItemWeights:(id)a4 andItemValues:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  if ([v10 count] >= 0xFF)
  {
    logger = v11->_logger;
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v13 = "Error: Exceeded the maximum number of solver inputs (UINT8_MAX - 1).";
LABEL_7:
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
    goto LABEL_27;
  }

  if ([v8 unsignedLongValue] >> 32)
  {
    logger = v11->_logger;
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v13 = "Error: Exceeded the maximum solver capacity UINT32_MAX.";
    goto LABEL_7;
  }

  v14 = [v8 unsignedIntValue];
  v15 = [v10 count];
  v16 = [v9 count];
  v17 = v14 + 1;
  v11->_n_cols = v17;
  v11->_n_rows = v15 + 1;
  if (v16 != v15 || v16 < 2 || v17 < 3 || (v15 + 1) <= 2u)
  {
    v27 = v11->_logger;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v28 = "Error: Invalid solver input.";
    goto LABEL_26;
  }

  v11->_values_vect = malloc_type_malloc(v15, 0x100004077774924uLL);
  v18 = malloc_type_malloc(4 * v15, 0x100004052888210uLL);
  v11->_weight_vect = v18;
  if (!v18 || !v11->_values_vect)
  {
    v27 = v11->_logger;
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v28 = "Error: Failed to allocate memory for I/O vectorization.";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
    goto LABEL_27;
  }

  v19 = 0;
  do
  {
    v20 = [v10 objectAtIndex:v19];
    if ([v20 longValue] >= 0x100)
    {
      v30 = v11->_logger;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Error: Item values must be positive and less than UINT8_MAX.", buf, 2u);
      }

      [(_DASKnapsackSolver *)v11 reset];
      v26 = [[NSSet alloc] initWithObjects:{&off_1001C9718, 0}];

      goto LABEL_28;
    }

    v11->_values_vect[v19] = [v20 unsignedCharValue];
    v21 = [v9 objectAtIndex:v19];
    v11->_weight_vect[v19] = [v21 unsignedIntValue];

    ++v19;
  }

  while (v15 != v19);
  v22 = 0;
  v23 = 0;
  v24 = -1;
  do
  {
    v25 = v11->_weight_vect[v23];
    v22 += v25;
    if (v25 < v24)
    {
      v24 = v11->_weight_vect[v23];
    }

    ++v23;
  }

  while (v15 != v23);
  if (v24 > v14)
  {
    v26 = objc_alloc_init(NSSet);
LABEL_63:
    [(_DASKnapsackSolver *)v11 reset];
    goto LABEL_28;
  }

  if (v22 <= v14)
  {
    v49 = [NSMutableArray arrayWithCapacity:v15];
    v54 = 0;
    do
    {
      v55 = [NSNumber numberWithInt:v54];
      [v49 addObject:v55];

      ++v54;
    }

    while (v15 != v54);
    v53 = [[NSSet alloc] initWithArray:v49];
LABEL_62:
    v26 = v53;

    goto LABEL_63;
  }

  v31 = malloc_type_calloc(v11->_n_rows, 8uLL, 0x10040436913F5uLL);
  v11->_J = v31;
  if (!v31)
  {
    v56 = v11->_logger;
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v57 = "Error: Failed to allocate memory for solver core.";
    goto LABEL_70;
  }

  *v11->_J = malloc_type_calloc(v11->_n_cols, 2uLL, 0x1000040BDFB0063uLL);
  if (!*v11->_J)
  {
    v56 = v11->_logger;
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v57 = "Error: Failed to allocate memory for solver core.";
    goto LABEL_70;
  }

  if (v11->_n_rows < 2u)
  {
LABEL_48:
    v40 = malloc_type_calloc(v15, 1uLL, 0x100004077774924uLL);
    v11->_index_vect = v40;
    if (v40)
    {
      n_rows = v11->_n_rows;
      LOBYTE(v42) = n_rows - 1;
      if (n_rows != 1)
      {
        J = v11->_J;
        v44 = v11->_n_cols - 1;
        v42 = v42;
        v45 = J[v42];
        v46 = (v11->_weight_vect - 1);
        v47 = J - 1;
        do
        {
          v48 = v45[v44];
          v45 = v47[v42];
          if (v48 > v45[v44])
          {
            v44 -= *(v46 + 4 * v42);
            v40[v42 - 1] = 1;
          }

          --v42;
        }

        while (v42);
      }

      v49 = objc_alloc_init(NSMutableSet);
      v50 = 0;
      v51 = 0;
      do
      {
        if (v11->_index_vect[v50])
        {
          v52 = [NSNumber numberWithUnsignedChar:v51];
          [v49 addObject:v52];
        }

        v50 = ++v51;
      }

      while (v15 > v51);
      v53 = [v49 copy];
      goto LABEL_62;
    }

    v56 = v11->_logger;
    if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v57 = "Error: Failed to allocate memory for I/O vectorization.";
LABEL_70:
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v57, buf, 2u);
    goto LABEL_27;
  }

  v32 = 1;
  while (1)
  {
    v11->_J[v32] = malloc_type_malloc(2 * v11->_n_cols, 0x1000040BDFB0063uLL);
    v33 = v11->_J;
    v34 = v33[v32];
    if (!v34)
    {
      break;
    }

    v35 = 0;
    v36 = (v32 - 1);
    v37 = v11->_weight_vect[v36];
    v38 = v33[v36];
    do
    {
      v39 = v38[v35];
      if (v35 >= v37 && v38[(v35 - v37)] + v11->_values_vect[v36] > v39)
      {
        LOWORD(v39) = v38[(v35 - v37)] + v11->_values_vect[v36];
      }

      v34[v35++] = v39;
    }

    while (v17 != v35);
    if (v11->_n_rows <= ++v32)
    {
      goto LABEL_48;
    }
  }

  v58 = v11->_logger;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Error: Failed to allocate memory for solver core.", buf, 2u);
  }

LABEL_27:
  [(_DASKnapsackSolver *)v11 reset];
  v26 = [[NSSet alloc] initWithObjects:{&off_1001C9718, 0}];
LABEL_28:
  objc_sync_exit(v11);

  return v26;
}

@end