/*
** EPITECH PROJECT, 2022
** B-PSU-210-MPL-2-1-42sh-romain.very
** File description:
** separators_errors
*/

#include "file.h"

int display_or_error(void)
{
    printf("Invalid null command.\n");
    return 1;
}

static int check_parsing_error(buff_t *buff, char *parsed)
{
    char **parsed_or = get_array_custom(parsed, "||");
    int j = 0;
    int i = 0;
    int nb = 0;

    for (; parsed_or[i]; i++) {
        for (j = 0; parsed_or[i][j]; j++) {
            if (parsed_or[i][j] == ' ' || parsed_or[i][j] == '\t')
                nb++;
        }
        if (nb == strlen(parsed_or[i])) {
            buff->value = 1;
            return 1;
        }
        nb = 0;
    }
    return 0;
}

int check_error(buff_t *buff, char **parsed, int nb)
{
    for (int i = 0; i < nb; i++) {
        if (check_parsing_error(buff, parsed[i]))
            return 1;
    }
    return 0;
}