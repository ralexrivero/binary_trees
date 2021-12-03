CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic
PRINT = binary_tree_print.c

%:
	$(CC) $(CFLAGS) $(PRINT) $(SRC)

0: SRC=entry_point/$*-main.c $*-*.c -o 0-node

1: SRC=entry_point/$*-main.c $*-*.c 0-binary_tree_node.c -o 1-left

2: SRC=entry_point/$*-main.c $*-*.c 0-binary_tree_node.c -o 2-right

3 4 5 6 7 8 9 10 11 12 13: SRC=entry_point/$*-main.c $*-*.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o $@

14 15 16 17 18 100: SRC=entry_point/$*-main.c $*-*.c 0-binary_tree_node.c 2-binary_tree_insert_right.c 1-binary_tree_insert_left.c -o $@

101 102 103 104: SRC=entry_point/$*-main.c $*-*.c 0-binary_tree_node.c 2-binary_tree_insert_right.c 1-binary_tree_insert_left.c 3-binary_tree_delete.c -o $@

fclean:
	$(RM) 0-node 1-left 2-right 3-del 4-leaf 5-root 6-pre 7-in 8-post 9-heigh 10-depth 11-size 12-leaves 13-nodes 14-balance 15-full 16-perfect 17-sibling 18-uncle 100-ancestor 101-lvl 102-complete 103-rotl 104-rotr 110-is_bst 111-bst_insert 112-bst_array 113-bst_search 114-bst_rm 120-is_avl 121-avl_insert 122-avl_array 123-avl_rm 124-avl_sorted 130-is_heap 131-heap_insert 132-heap_array 133-heap_extract 134-heap_sort 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 100 101 102 103 104
