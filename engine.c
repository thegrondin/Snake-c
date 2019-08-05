#include <shared.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <b_renderer.h>
#include <engine.h>
#include <snake.h>


Snake game_snake;
Food game_food;
Position test_block_position;
Block test_block;

void initialize(int size) {
    initialize_board();
    
   
    test_block_position.x = 10;
    test_block_position.y = 10;
    

    test_block.is_head = 1;
    test_block.b_position = test_block_position;
    test_block.id = 23;
    test_block.is_initialized = 1;
    
    Position test_block2_position;
    test_block2_position.x = 7;
    test_block2_position.y = 7;
    
    Block test2_block;
    test2_block.is_head = 1;
    test2_block.b_position = test_block2_position;
    test2_block.id = 33;
    test2_block.is_initialized = 1;
    
    game_snake = initialize_snake(12, 9);
    
    for (int i = 0; i < 3; i ++) {
        
        add_block(game_snake.body[i], 1);
    }
    
    //game_snake = initialize_snake();
    
    //add_block(test_block, 1);
    
    add_block(test2_block, 2);
    
    render_board();

}

void loop() {
    
    while (1) {
        //system("@cls||clear");
        
        //test_block.b_position.x++;
        
        //clear_slot(1);
        //add_block(test_block, 1);
        //render_board();
        
        sleep(1);
    }
    
    return 0;
}