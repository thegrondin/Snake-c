#include <stdio.h>

typedef struct position {
    int x;
    int y;
} Position;

typedef struct block {
    int is_head;
    Position b_position;
    int  is_initialized;
    int id;
} Block;

typedef struct snake {
    int size;
    Block body[100];
} Snake;

typedef struct food {
    Block food_block;
} Food;

typedef struct move {
    int x;
    int y;
} Move;

typedef struct scene_slot {
    int id;
    Block elements[100];
    int iter_end;
} Scene_Slot;

typedef struct array {
    int *array;
    size_t used;
    size_t size;
} Array;