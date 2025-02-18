#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tirja_string.h"

t_string *t_string_new(char *string) {
    t_string *t_string_new  = (t_string*)malloc(sizeof(t_string));
    
    t_string_new->string    = strdup(string);
    t_string_new->length    = strlen(string);
    t_string_new->capacity  = t_string_new->length;
    return t_string_new;
}

/*  
    below was found at: http://www.cse.yorku.ca/~oz/hash.html 
    known as djb2
*/
unsigned long t_string_get_hash(char *string) {
    unsigned long hash = 5381;
    int c;
    while ((c = *string++)) 
        hash = ((hash << 5) + hash) + c;
    return hash;
} 

void t_string_free(t_string *s) {
    free(s->string);
    free(s);
}

t_string *t_string_concat(t_string *lhs, t_string *rhs) {
    
    if (lhs->length + rhs->length >= lhs->capacity) {
        char *new = realloc(lhs->string, lhs->length + rhs->length + 1);
        if (new) {
            lhs->string = new;
            lhs->capacity = lhs->length + rhs->length; 
        }
        else 
            return NULL;
    }
    
    strncat(lhs->string, rhs->string, rhs->length);
    
    lhs->length += rhs->length;
    t_string_free(rhs);
    return lhs;
}

size_t t_string_length(t_string *s) {
    return s->length;
}

int t_string_compare(t_string *lhs, t_string *rhs) {
    if (t_string_get_hash(lhs->string) != t_string_get_hash(rhs->string)) 
        return -1; 
    return strcmp(lhs->string, rhs->string); 
}

t_string *t_string_slice(t_string *original, size_t start, size_t end) {
    size_t index;
    t_string *slice = t_string_new("");

    if (start >= original->length || end >= original->length) 
        return original;

    for (index = start; index < end + 1; index++) {
        strncat(slice->string, &(original->string[index]), 1);
        slice->length++;
        slice->capacity++;
    }
    
    return slice;
}

char t_string_at(t_string *ts, size_t index) {
    return ts->string[index];
}

void t_string_print(t_string *ts) {
    printf("%s\n", ts->string);
}

size_t t_string_find(t_string *original, char *find) {
    return strstr(original->string, find) - original->string;
}

int main(void) {
    t_string *hello = t_string_new("hello");
    t_string *world = t_string_new(" world");
    t_string *helloworld = t_string_new("hello world");
    t_string *ello = t_string_slice(hello, 1, 4);
    
    printf("are these strings the same?\n");
    t_string_compare(hello, world) == 0 ? printf("yes.\n") : printf("no.\n");
    t_string_concat(hello, world);
    printf("value is: %s\n", hello->string);

    printf("are these strings the same?\n");
    t_string_compare(hello, helloworld)== 0 ? printf("yes.\n") : printf("no.\n");
    printf("a slice of hello: %s\n", ello->string);

    printf("%c\n", t_string_at(helloworld, 4));

    printf("the substring ' wo' starts at index: %ld\n", t_string_find(helloworld, " wo"));

    /* Free the strings */
    t_string_free(helloworld);
    t_string_free(hello);
    t_string_free(ello);

    return 0;
}
