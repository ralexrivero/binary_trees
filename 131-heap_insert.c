#include "binary_trees.h"
size_t bts(const binary_tree_t *tree);
heap_t *heap_nf(heap_t *root, size_t number);
heap_t *heap_r(heap_t *new, heap_t *parent);

/**
 * heap_insert - heap inserter
 *
 * @tree: double pointer to root
 * @value: the value to store
 * Return: pointer to the created node
 */
heap_t *heap_insert(heap_t **tree, int value)
{
	size_t size;
	int doswap = 1;
	heap_t *new, *parent;

	if (tree == NULL)
		return (NULL);

	if (*tree == NULL)
	{
		new = binary_tree_node(NULL, value);
		*tree = new;
		return (new);
	}

	size = bts(*tree);
	parent = heap_nf(*tree, (size - 1) / 2);
	new = binary_tree_node(parent, value);
	if (size % 2 == 1)
		parent->left = new;
	else
		parent->right = new;
	if (new == NULL)
		return (NULL);

	while (doswap == 1 && parent != NULL)
	{
		if (parent->n >= new->n)
			doswap = 0;
		else
		{
			new = heap_r(new, parent);
			parent = new->parent;
		}
	}

	return (new);
}

/**
 * bts - measure the tree
 *
 * @tree: pointer to root
 * Return: size, otherwise 0
 */

size_t bts(const binary_tree_t *tree)
{
	if (tree == NULL)
		return (0);
	return (1 + bts(tree->left) + bts(tree->right));
}

/**
 * heap_nf - heap node finder
 *
 * @root: pointer to the root
 * @number: index of the node to find
 * Return: pointer to the node
 */
heap_t *heap_nf(heap_t *root, size_t number)
{
	size_t parentn, dir;

	if (number == 0)
		return (root);

	parentn = (number - 1) / 2;
	dir = (number - 1) % 2;

	if (dir == 0)
		return (heap_nf(root, parentn)->left);
	return (heap_nf(root, parentn)->right);
}

/**
 * heap_r - heap rebalancer
 * @new: pointer to the new node
 * @parent: pointer to the new parent
 * Return: parent
 */
heap_t *heap_r(heap_t *new, heap_t *parent)
{
	int tmp;

	tmp = new->n;
	new->n = parent->n;
	parent->n = tmp;
	return (parent);
}
