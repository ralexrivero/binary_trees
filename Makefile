CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic
PRINT = binary_tree_print.c

common:
	$(CC) $(CFLAGS) $(PRINT) $(SRC)

0:
	$(CC) $(CFLAGS) $(PRINT) $(SRC) entry_point/0-main.c 0-binary_tree_node.c -o 0-node

other:
	1-main.c 1-binary_tree_insert_left.c 0-binary_tree_node.c -o 1-left
	2-main.c 2-binary_tree_insert_right.c 0-binary_tree_node.c -o 2-right
	3-main.c 3-binary_tree_delete.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 3-del
	4-binary_tree_is_leaf.c 4-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 4-leaf
	5-binary_tree_is_root.c 5-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 5-root
	6-main.c 6-binary_tree_preorder.c 0-binary_tree_node.c -o 6-pre
	7-main.c 7-binary_tree_inorder.c 0-binary_tree_node.c -o 7-in
	8-main.c 8-binary_tree_postorder.c 0-binary_tree_node.c -o 8-post
	9-binary_tree_height.c 9-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 9-height
	10-binary_tree_depth.c 10-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 10-depth
	11-binary_tree_size.c 11-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 11-size
	12-binary_tree_leaves.c 12-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 12-leaves
	13-binary_tree_nodes.c 13-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 13-nodes
	14-binary_tree_balance.c 14-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c 1-binary_tree_insert_left.c -o 14-balance
	15-binary_tree_is_full.c 15-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 15-full
	16-binary_tree_is_perfect.c 16-main.c 0-binary_tree_node.c 2-binary_tree_insert_right.c -o 16-perfect
	17-main.c 17-binary_tree_sibling.c 0-binary_tree_node.c -o 17-sibling
	18-main.c 18-binary_tree_uncle.c 0-binary_tree_node.c -o 18-uncle
	100-main.c 100-binary_trees_ancestor.c 0-binary_tree_node.c -o 100-ancestor
	101-main.c 101-binary_tree_levelorder.c 0-binary_tree_node.c 3-binary_tree_delete.c -o 101-lvl
	102-main.c 102-binary_tree_is_complete.c 0-binary_tree_node.c 3-binary_tree_delete.c -o 102-complete
	103-binary_tree_rotate_left.c 103-main.c 0-binary_tree_node.c -o 103-rotl
	104-binary_tree_rotate_right.c 104-main.c 0-binary_tree_node.c -o 104-rotr
	110-main.c 110-binary_tree_is_bst.c 0-binary_tree_node.c -o 110-is_bst
	111-bst_insert.c 111-main.c 0-binary_tree_node.c -o 111-bst_insert
	112-array_to_bst.c 112-main.c 111-bst_insert.c 0-binary_tree_node.c -o 112-bst_array
	113-bst_search.c 113-main.c 112-array_to_bst.c 111-bst_insert.c 0-binary_tree_node.c -o 113-bst_search
	113-bst_search.c 113-main.c 112-array_to_bst.c 111-bst_insert.c 0-binary_tree_node.c -o 113-bst_search
	114-bst_remove.c 114-main.c 112-array_to_bst.c 111-bst_insert.c 0-binary_tree_node.c 3-binary_tree_delete.c -o 114-bst_rm
	120-main.c 120-binary_tree_is_avl.c 0-binary_tree_node.c -o 120-is_avl
	121-avl_insert.c 121-main.c 14-binary_tree_balance.c 103-binary_tree_rotate_left.c 104-binary_tree_rotate_right.c 0-binary_tree_node.c -o 121-avl_insert
	122-array_to_avl.c 122-main.c 121-avl_insert.c 0-binary_tree_node.c 14-binary_tree_balance.c 103-binary_tree_rotate_left.c 104-binary_tree_rotate_right.c -o 122-avl_array
	123-avl_remove.c 123-main.c 103-binary_tree_rotate_left.c 104-binary_tree_rotate_right.c 122-array_to_avl.c 121-avl_insert.c 14-binary_tree_balance.c 3-binary_tree_delete.c 0-binary_tree_node.c -o 123-avl_rm
	124-main.c 124-sorted_array_to_avl.c 0-binary_tree_node.c -o 124-avl_sorted
	130-main.c 130-binary_tree_is_heap.c 0-binary_tree_node.c -o 130-is_heap
	131-main.c 131-heap_insert.c 0-binary_tree_node.c -o 131-heap_insert
	132-main.c 132-array_to_heap.c 131-heap_insert.c 0-binary_tree_node.c -o 132-heap_array
	133-main.c 133-heap_extract.c 132-array_to_heap.c 131-heap_insert.c 3-binary_tree_delete.c -o 133-heap_extract
	134-main.c 134-heap_to_sorted_array.c 133-heap_extract.c 132-array_to_heap.c 131-heap_insert.c -o 134-heap_sort

fclean:
	$(RM) 	0-node 1-left 2-right 3-del 4-leaf 5-root 6-pre 7-in 8-post 9-heigh 10-depth 11-size 12-leaves 13-nodes 14-balance 15-full 16-perfect 17-sibling 18-uncle 100-ancestor 101-lvl 102-complete 103-rotl 104-rotr 110-is_bst 111-bst_insert 112-bst_array 113-bst_search 114-bst_rm 120-is_avl 121-avl_insert 122-avl_array 123-avl_rm 124-avl_sorted 130-is_heap 131-heap_insert 132-heap_array 133-heap_extract 134-heap_sort
