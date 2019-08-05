#include <shared.h>
#include <string.h>
#include <b_renderer.h>

static int SIZE = 20;
//static char unicode_box = '\u2596';
static Scene_Slot slots[10] = {0};
static int current_slot_position = 0;
static char board[20][20];

void initialize_board() {
    
    memset(slots, 0, sizeof(slots));
    clear_board();
}

void clear_board() {
    for (int y = 0; y < SIZE; y ++ ) {
        for (int x = 0; x < SIZE; x ++) {
            board[y][x] = ' ';
        }
    }
}

void render_board() {
    
    clear_board();
    for (int i = 0; i < 9; i++) {
        Scene_Slot current_s = slots[i];
        if (current_s.id) {
             for (int y = 0; y < 99; y++) {
                
                if (current_s.elements[y].is_initialized == 1) {

                    board[current_s.elements[y].b_position.y][current_s.elements[y].b_position.x] = '$';
                }
            }
        }
    }
    
    char output[500] = "########################################\n";
    for (int k = 0; k < 19; k ++) {
        strcat(output, "#");
        for (int l = 0; l < 19; l++) {
            char res[2];
            res[0] = board[k][l];
            res[1] = '\0';
            strcat(output, res);
        }
        strcat(output, "#\n");
    }
    strcat(output, "########################################");

   printf(output);
}

void clear_slot(int id) {
    for (int i = 0; i < 9; i++) {
        if (slots[i].id == id) {
            slots[i].iter_end = 0;
            for (int y = i; y < 9 - i; y ++) {
                printf("%d", slots[y].id);
                //slots[y] = slots[y + 1];
            }
        }
    }
}

void add_blocks(Block blocks[1000], int id) {
    
}

void add_block(Block r_block, int id) {
    
    int exists = 0;
    int at_index = -1;
    for (int i = 0; i < 9; i++) {
        if (slots[i].id == id) {
            exists = 1;
            at_index = i;
        }
    }
    
    if (exists) {
        if (!slots[at_index].iter_end) {
            slots[at_index].iter_end = 0;
        }
        slots[at_index].elements[slots[at_index].iter_end + 1] = r_block;
        slots[at_index].iter_end++;
    }
    else {
        struct scene_slot slot = {  id, {0}, 0 };
        slot.elements[id] = r_block;
        slots[id] = slot;
        slots[id].iter_end++;
    }
}

