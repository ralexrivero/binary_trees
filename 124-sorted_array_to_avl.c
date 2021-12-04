#include "binary_trees.h"

/**
 * sorted_array_to_avl_revursive - recursive array to avl
 *
 * @array: pointer to array
 * @first_index: sub array initial index
 * @final_index: sub array end index
 * Return: pointer to root
 */
avl_t *sorted_array_to_avl_revursive(int *array, int first_index,
int final_index)
{
	avl_t *root;
	int half;

	if (final_index < first_index)
		return (NULL);

	half = (final_index + first_index) / 2;
	/* creation of binary tree with root = half */
	root = binary_tree_node(NULL, array[half]);
	if (!root)
		return (NULL);
	/* sort each branch */
	root->left = sorted_array_to_avl_revursive(array, first_index, half - 1);
	root->right = sorted_array_to_avl_revursive(array, half + 1, final_index);
	if (root->left)
		root->left->parent = root;
	if (root->right)
		root->right->parent = root;
	return (root);
}

/**
 * sorted_array_to_avl - builds an AVL tree from an array
 *
 * @array: pointer to the first element of the array to be converted
 * @size: number of element in the array
 * Return: pointer to the root node of the created AVL tree
 * or NULL on failure
 */
avl_t *sorted_array_to_avl(int *array, size_t size)
{
	if (!array || size < 1)
		return (NULL);
	return (sorted_array_to_avl_revursive(array, 0, size - 1));
}
