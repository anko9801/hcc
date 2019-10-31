#include <assert.h>
#include <ctype.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Vec Vec;
Vec *new_vector();
Vec *new_vector_from_scalar(void *scalar);
int vector_size(Vec *vec);
void vector_push_back(Vec *vec, void *item);

typedef struct KeyValue KeyValue;
typedef struct Map Map;
