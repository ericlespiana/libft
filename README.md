# My lib / libft

<h2 align=center>
  
  ![libft Logo](https://github.com/ericlespiana/erpiana-utils/blob/master/libftm.png)
</h2>

## Description
The Libft project is a C library that contains functions that simulate the functionalities of the ctype.h library and some others. It was developed as part of the school 42 curriculum to provide custom implementations of standard C language functions.

## Implemented Functions
- **isalpha:** Checks if a character is an alphabet letter.
- **isdigit:** Checks if a character is a numerical digit.
- **isalnum:** Checks if a character is alphanumeric.
- **isascii:** Checks if a character belongs to the ASCII table.
- **isprint:** Checks if a character is printable.
- **strlen:** Calculates the length of a string.
- **memset:** Fills a memory region with a specific byte.
- **bzero:** Sets the first bytes of a memory region to 0.
- **memcpy:** Copies a memory region from one location to another.
- **memmove:** Copies a memory region to another, even if the regions overlap.
- **strlcpy:** Copies a string to a limited buffer.
- **strlcat:** Appends a string to a limited buffer.
- **toupper:** Converts a character to uppercase.
- **tolower:** Converts a character to lowercase.
- **strchr:** Locates the first occurrence of a character in a string.
- **strrchr:** Locates the last occurrence of a character in a string.
- **strncmp:** Compares the first n characters of two strings.
- **memchr:** Locates the first occurrence of a byte in a memory region.
- **memcmp:** Compares two memory regions.
- **strnstr:** Locates the first occurrence of a substring in a string, up to a specified maximum size.
- **atoi:** Converts a string to an integer.
- **calloc:** Allocates and initializes a memory region.
- **strdup:** Duplicates a string.
- **ft_substr:** Creates a new substring from an existing string.
- **ft_strjoin:** Concatenates two strings into a new string.
- **ft_strtrim:** Removes specified characters from the beginning and end of a string.
- **ft_split:** Divides a string into substrings based on a delimiter character.
- **ft_itoa:** Converts an integer to a string.
- **ft_strmapi:** Applies a function to each character of a string.
- **ft_striteri:** Applies a function to each character of a string, passing its index as an argument.
- **ft_putchar_fd:** Writes a character to a file descriptor.
- **ft_putstr_fd:** Writes a string to a file descriptor.
- **ft_putendl_fd:** Writes a string followed by a newline to a file descriptor.
- **ft_putnbr_fd:** Writes a number to a file descriptor.

## How to Use
To use the Libft library in your own project, simply include the libft.h file in your code and compile it along with the library's source files.

Compilation example:
gcc your_file.c libft.a -o your_program
