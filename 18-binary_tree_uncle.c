#include "binary_trees.h"

/**
 * search_uncle - binary tree
 * @node: node
 * Return: uncle
 */
binary_tree_t *search_uncle(binary_tree_t *node)
{
	binary_tree_t *grandpa = NULL;

	if (!node || !(node->parent))
		return (NULL);
	grandpa = node->parent;
	/* check left or right uncle */
	if (grandpa->left && (grandpa->left != node))
		return (grandpa->left);
	else if (grandpa->right && (grandpa->right != node))
		return (grandpa->right);
	return (NULL);
}

/**
 * binary_tree_uncle - binary tree
 * @node: node
 * Return: uncle
 */
binary_tree_t *binary_tree_uncle(binary_tree_t *node)
{
	if (!node || !(node->parent))
		return (NULL);
	return (search_uncle(node->parent));
}
