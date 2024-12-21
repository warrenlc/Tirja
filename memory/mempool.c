#include <stdio.h>
#include <string.h>
#include "mempool.h"

/** Simple memory pool
 * 
 * This is adequate if you assume you will be only allocating ONCE at the beginning and
 * releasing ONCE at the end. Each pool will only hold data of one size. A use case
 * could be the nodes of an AST or values in a Symbol Table, for instance. 
 */


/**
 * Initialize the given memory pool. Returns 0 on success, terminates with failure
 * if malloc() fails.
 */
unsigned 
mempool_init (mempool *pool, size_t block_size, size_t num_blocks) 
{
    pool->blocks = malloc(block_size * num_blocks);
    if (pool->blocks == NULL) {
        fprintf (stderr, "Error: malloc() fail in mempool_init\n"
                "Requested size: %zu bytes\n", block_size * num_blocks);
        exit(EXIT_FAILURE);
    }

    memset (pool->blocks, 0, block_size * num_blocks);
    
    pool->block_size = block_size;
    pool->free_blocks = num_blocks;
    pool->next_open_block = 0;
    
    return 0;
}

/**
 * Free the memory pool. 
 */
void
mempool_free (mempool *pool) 
{
    free(pool->blocks);
    pool->blocks = NULL;
}


/**
 * 'Allocate' a block of memory from the pool for use by the caller.
 *  Returns a pointer to the block on success and fails is the memory pool is full.
 *  If the memory pool is full, this should be unrecoverable and means we need to allocate
 *  more memory for this pool from the beginning. 
 */
void *
mempool_block_alloc (mempool *pool) 
{
    if (0 == pool->free_blocks)
    {   
        fprintf(stderr, "Error: Memory pool exhausted in mempool_block_alloc.\n"
                        "  Block size: %zu bytes\n"
                        "  Total blocks allocated: %zu\n",
                        pool->block_size, pool->next_open_block);
        exit(EXIT_FAILURE);
    }
    
    void *block = (char *) pool->blocks + (pool->next_open_block * pool->block_size);
    pool->next_open_block++;
    pool->free_blocks--;

    return block;
}

/**
 * Print the contents of the memory pool. 
 */
void
mempool_print (mempool *pool, void (print_func)(void *)) 
{
    
    if (pool->blocks == NULL) {
        printf("Memory pool is empty\n");
        return;
    }
    printf("Memory Pool Info:\n");
    printf("  Block size: %zu bytes\n", pool->block_size);
    printf("  Total blocks: %zu\n", pool->free_blocks + pool->next_open_block);
    printf("  Free blocks: %zu\n", pool->free_blocks);
    printf("  Allocated blocks: %zu\n", pool->next_open_block);
    printf("  Blocks:\n");

    void *start = pool->blocks;
    void *end = (char *)pool->blocks + (pool->block_size * pool->next_open_block);

    while (start < end) {
        printf("| %p | -> ", start);
        print_func(start);
        start = (char *)start + pool->block_size;
    }
    
}




