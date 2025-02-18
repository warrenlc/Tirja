#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>

#define POOL_SIZE 128
#define FREE_LIST_SIZE ((POOL_SIZE + 7) / 8)

struct Example
{
    char name[16];
    uint8_t age;
};

struct Example_Memory_Pool
{
    struct Example pool[POOL_SIZE];
    uint8_t pool_free_list[FREE_LIST_SIZE];
};

struct Example_Memory_Pool pool;

void pool_init(void)
{
    memset(pool.pool, 0, POOL_SIZE);
    memset(pool.pool_free_list, 0, FREE_LIST_SIZE);
}

struct Example *pool_borrow(void)
{
    size_t available_to_borrow = POOL_SIZE; 

    for (size_t index = 0; index < FREE_LIST_SIZE; ++index) {
        uint8_t byte = pool.pool_free_list[index];

        if (byte != 0xFF) 
        { 
            size_t bit_position = 0;
            while (byte & (1 << bit_position)) {
                bit_position++;
            }
            pool.pool_free_list[index] |= (1 << bit_position);
            available_to_borrow = index * 8 + bit_position;
            break;
        }
    }

    if (available_to_borrow == POOL_SIZE)
        return NULL;
    
    return &(pool.pool[available_to_borrow]);
} 

void pool_return(struct Example *e)
{
    
    size_t index = e - pool.pool;
    size_t byte = index / 8;
    size_t bit = index % 8;
    memset(e, 0, sizeof(*e));
    pool.pool_free_list[byte] &= ~(1 << bit);
}

void free_list_print(void)
{
  for (size_t i = 0; i < FREE_LIST_SIZE; ++i) {
        printf("[ "); // Start of the byte
        for (int bit = 7; bit >= 0; --bit) { // Iterate over each bit in the byte
            printf("%d", (pool.pool_free_list[i] >> bit) & 1);
        }
        printf(" //bits ]\n"); // End of the byte
    }
}

int main (void)
{

    pool_init();

    struct Example *ex = pool_borrow();
    if (ex != NULL)
    {
        strncpy (ex->name, "joey", 5);
        ex->age = 20;
    }

    struct Example *ex1 = pool_borrow();
    if (ex1 != NULL)
    {
        strncpy (ex1->name, "michael", 8);
        ex1->age = 21;
    }
    for (int i = 2; i < 30; i++)
        pool_borrow();
    struct Example *nexttolastone = pool_borrow();
    struct Example *lastone = pool_borrow();

    assert(ex != NULL && ex1 != NULL);

    free_list_print(); 
    // printf("[ "); 
    // for (int i = 0; i < FREE_LIST_SIZE; i++)
    //     printf("%d ", pool.pool_free_list[i]);
    // printf("]\n");
    
    pool_return(ex1);
    printf("\nreturned ex1\n");
    free_list_print(); 
    // printf("[ "); 
    // for (int i = 0; i < FREE_LIST_SIZE; i++)
    //     printf("%#x ", pool.pool_free_list[i]);
    
    // printf("]\n");
    
    pool_return(lastone);
    
    printf("\nreturned lastone\n");
    free_list_print(); 
    // printf("[ "); 
    // for (int i = 0; i < FREE_LIST_SIZE; i++)
    //     printf("%#x ", pool.pool_free_list[i]);
    
    // printf("]\n");
    
    pool_return(nexttolastone);
    printf("\nreturned nextolastone\n");
    free_list_print(); 
    
    pool_return(ex);
    printf("\nreturned ex\n");
    free_list_print(); 
    // printf("[ "); 
    // for (int i = 0; i < FREE_LIST_SIZE; i++)
    //     printf("%#x ", pool.pool_free_list[i]);
    
    // printf("]\n");
    return 0;
    
}
