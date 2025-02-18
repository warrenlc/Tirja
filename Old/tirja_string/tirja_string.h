#include <stdlib.h>

#ifndef TIRJA_STRING_H
#define TIRJA_STRING_H

typedef struct {
    char            *string; /* The string to represent*/
    size_t          length;
    size_t          capacity;
}t_string;

t_string        *t_string_new(char *string);
unsigned long   t_string_get_hash(char *string);
void            t_string_free(t_string *s);
t_string        *t_string_concat(t_string *lhs, t_string *rhs);
size_t          t_string_length(t_string *s);
int             t_string_compare(t_string *lhs, t_string *rhs);
t_string        *t_string_slice(t_string *original, size_t start, size_t end);
char            t_string_at(t_string *ts, size_t index);
void            t_string_print(t_string *s);
size_t          t_string_find(t_string *original, char *find);


#endif /* TIRJA_STRING_H */
