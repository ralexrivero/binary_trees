#include "binary_trees.h"

/**
 * binary_tree_rotate_left -  a left rotation
 * @tree: Pointerroot
 *
 * Return: Pointer  root
 */
binary_tree_t *binary_tree_rotate_left(binary_tree_t *tree)
{
	binary_tree_t *chl, *parent = tree;

	if (!tree)
		return (NULL);

	chl = parent->right;
	if (!chl)
		return (tree);

	if (chl->left)
		chl->left->parent = parent;

	parent->right = chl->left;
	chl->left = parent;
	chl->parent = parent->parent;
	parent->parent = chl;

	if (chl->parent && chl->parent->left == parent)
		chl->parent->left = chl;
	else if (chl->parent)
		chl->parent->right = chl;

	return (chl);
}
