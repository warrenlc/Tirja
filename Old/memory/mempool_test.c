#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <assert.h>
#include "mempool.h"

struct example 
{
    char id[16]; // 16 bytes
    uint8_t type;    // 1 byte
    uint8_t value;  // 1 byte
};

static void print_example(void *self) 
{
    struct example *data = (struct example *)self;
    printf("id: %10s | type: %3d | value: %4d |\n", data->id, data->type, data->value); 
}

int main (void) 
{
    mempool pool;
    mempool_init(&pool, sizeof(struct example), 6);

    printf("size of mempool: %lu\n", pool.block_size * 10);

    struct example *e = (struct example *) mempool_block_alloc(&pool);
    if (e == NULL)
        fprintf(stderr, "Error allocating memory\n");
    strcpy(e->id, "example0");
    e->type = 0;
    e->value = 10;

    printf("size of example: %lu\n", sizeof(struct example));
    printf("offsets: %zu, %zu, %zu\n", offsetof(struct example, id), offsetof(struct example, type), offsetof(struct example, value));

    printf ("diff: %d\n", 0xc2b2 - 0xc2a0);

    struct example *e1 = (struct example *) mempool_block_alloc(&pool);
    strcpy(e1->id, "example1");
    e1->type = 1;
    e1->value = 20;
    
    struct example *e2 = (struct example *) mempool_block_alloc(&pool);
    strcpy(e2->id, "example2");
    e2->type = 2;
    e2->value = 30;

    struct example *e3 = (struct example *) mempool_block_alloc(&pool);
        strcpy(e3->id, "example3");
        e3->type = 2;
        e3->value = 30;

    struct example *e4 = (struct example *) mempool_block_alloc(&pool);
        strcpy(e4->id, "example4");
        e4->type = 2;
        e4->value = 30;

    struct example *e5 = (struct example *) mempool_block_alloc(&pool);
        strcpy(e5->id, "example5");
        e5->type = 2;
        e5->value = 30;

    mempool_print(&pool, print_example);

    /* 
    struct example *e6 = (struct example *) mempool_block_alloc(&pool);
    if (e6 != NULL) {
        strcpy(e6->id, "example6");
        e6->type = 2;
        e6->value = 30;
    }
    else { mempool_free(&pool); return 1; }
    // else { printf("No more memory available\n"); mempool_free(&pool); return 1; }
    */

    mempool_free(&pool);
    mempool_print(&pool, print_example); 
    return 0;

}
