#include "binary_trees.h"


/**
 * array_to_avl - builds a Binary Search Tree from an array
 * @array: input array
 * @size: number of elements in the array
 * Return: pointer to the root node of the created AVL, or NULL on failure
 */


avl_t *array_to_avl(int *array, size_t size)
{
	int i;
	avl_t *new = NULL;

	if (array == NULL || size == 0)
		return (NULL);

	for (i = 0; i < (int)size; i++)
		avl_insert(&new, array[i]);

	return (new);
}
