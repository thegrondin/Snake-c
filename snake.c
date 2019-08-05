#include <shared.h>
#include <stdio.h>

static struct block body[100] = {0};

struct snake initialize_snake(int x, int y) {
    struct snake s = {  3, {0} };
    for (int i = 0; i < 3; i ++) {
        struct position p = { x + i, y};
        
        int is_head = 0;
        if (i == 0) {
            is_head = 1;
        }
        struct block b = { is_head, p, 1, i+1 };
        s.body[i] = b;
        body[i] = b;
    }
    return s;
}

struct block move_snake(int x, int y) {
    
    for (int i = 0; i < 100; i++) {
        if (body[i].id) {
            if (i == 0) {
                
            }
        }
    }
}