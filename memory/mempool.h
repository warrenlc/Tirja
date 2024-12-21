#ifndef MEMPOOL_H
#define MEMPOOL_H
#include <stdlib.h>

typedef struct mempool {
    void **blocks;
    size_t block_size;
    size_t next_open_block;
    size_t free_blocks;
}mempool;

unsigned mempool_init(mempool *pool, size_t block_size, size_t num_blocks);
void mempool_free(mempool *pool);
void *mempool_block_alloc (mempool *pool);
void mempool_block_release (mempool *poo);
void mempool_print(mempool *pool, void (print_func)(void *));

#endif // MEMPOOL_H
