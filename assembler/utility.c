#include "has.h"

struct Vec {
    int size, rsved_size;
    void **data;
};

Vec *new_vector() {
    Vec *ret;

    ret = safe_malloc(sizeof(Vec));
    ret->size = 0;
    ret->rsved_size = 1;
    ret->data = NULL;
    return ret;
}

Vec *new_vector_from_scalar(void *scalar) {
    Vec *vec = new_vector();
    vector_push_back(vec, scalar);
    return vec;
}

int vector_size(Vec *vec) {
	return vec->size;
}

void vector_push_back(Vec *vec, void *item) {
    if (vec->data == NULL || vec->size == vec->rsved_size) {
        vec->rsved_size *= 2;
        void **ndata = (void **)safe_malloc(sizeof(void *) * vec->rsved_size);
        memcpy(ndata, vec->data, vec->size * sizeof(void *));
        vec->data = ndata;
    }

    vec->data[vec->size++] = item;
}

void *vector_get(Vec *vec, int i) {
    if (i >= vec->size) return NULL;
    return vec->data[i];
}

void *vector_set(Vec *vec, int i, void *item) {
    assert(vec != NULL && i < vector_size(vec));
    vec->data[i] = item;
    return item;
}

void vector_push_back_vector(Vec *vec, Vec *src) {
    for (int i = 0; i < vector_size(src); i++)
        vector_push_back(vec, vector_get(src, i));
}

Vec *clone_vector(Vec *src) {
    Vec *vec = new_vector();
    vector_push_back_vector(vec, src);
    return vec;
}


struct KeyValue {
    const char *key;
    void *value;
};

struct Map {
    Vec *data;
};

Map *new_map() {
    Map *map = safe_malloc(sizeof(Map));
    map->data = new_vector();
    return map;
}

int map_size(Map *map) {
	return vector_size(map->data);
}

KeyValue *map_insert(Map *map, const char *key, void *item) {
    KeyValue *kv = safe_malloc(sizeof(KeyValue));
    kv->key = key;
    kv->value = item;
    vector_push_back(map->data, kv);
    return kv;
}

KeyValue *map_lookup(Map *map, const char *key) {
    for (int i = 0; i < vector_size(map->data); i++) {
        KeyValue *kv = (KeyValue *)vector_get(map->data, i);
        if (strcmp(kv->key, key) == 0) return kv;
    }
    return NULL;
}

