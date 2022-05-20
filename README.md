# 0x1D. C - Binary trees

``` c
          000 00  0 00
      00 0\/0\|0 ()|/ @, 00
      0\/(/0/0||/0 /_/)_0/_0
   0() 0\/0|()|/0\/ '%" 0 ()
  0_\_00_\ |0 |00/0__%_/_0 00
00   00 0 0| 0| /0 0 % ()0 /00
 ()0_---()0\0\|00-00--%---()~
     00     \|||
             |||
             |||
             |||
       , -=-~  .-^- _
              `
```

## Learning Objectives

### General

* What is a binary tree
* What is the difference between a binary tree and a Binary Search Tree
* What is the possible gain in terms of time complexity compared to linked lists
* What are the depth, the height, the size of a binary tree
* What are the different traversal methods to go through a binary tree
* What is a complete, a full, a perfect, a balanced binary tree

## Environment

<div>

<a  href="https://www.cprogramming.com/"  target="_blank"><img  height="48px"  src="https://raw.githubusercontent.com/ralexrivero/xelar_theme_profile/main/icons/language_c-programming.svg"  alt="C programming language"  ></a>
<a  href="https://ubuntu.com/"  target="_blank"><img  height="48px"  src="https://raw.githubusercontent.com/ralexrivero/xelar_theme_profile/main/icons/ubuntu-icon.svg"  alt="C programming language"></a>
<a  href="https://www.vim.org/"  target="_blank"><img  height="48px"  src="https://raw.githubusercontent.com/ralexrivero/xelar_theme_profile/main/icons/Vimlogo.svg"  alt="C programming language"></a>

</div>

* Language: C
* OS: Ubuntu 20.04 LTS
* Editor: VIM 8.1.2269
* Compiler: gcc 9.3.0
  * compilation flags: ```-Wall -Werror -Wextra -pedantic -std=gnu89```
* Style guidelines: [Betty style](https://github.com/holbertonschool/Betty/wiki)

> Basic binary tree

```c
/**
 * struct binary_tree_s - Binary tree node
 *
 * @n: Integer stored in the node
 * @parent: Pointer to the parent node
 * @left: Pointer to the left child node
 * @right: Pointer to the right child node
 */
struct binary_tree_s
{
    int n;
    struct binary_tree_s *parent;
    struct binary_tree_s *left;
    struct binary_tree_s *right;
};

typedef struct binary_tree_s binary_tree_t;
```

## Autor

```bash
Ronald Rivero
```

### Connect

<br>
<div>
<a href="https://twitter.com/ralex_uy" target="_blank">  <img align="left" alt="Ronald Rivero | Twitter" src="https://img.shields.io/twitter/follow/ralex_uy?style=social"/> </a>

<a href="https://www.linkedin.com/in/ronald-rivero/" target="_blank">  <img align="left" alt="Ronald Rivero | LinkedIn" src="https://img.shields.io/badge/LinkedIn-+24K-blue?style=social&logo=linkedin"/> </a>

<a href="https://github.com/ralexrivero/" target="_blank">  <img align="left" src="https://img.shields.io/github/followers/ralexrivero?style=social" alt="Ralex | Github"> </a>
</br>
</div>