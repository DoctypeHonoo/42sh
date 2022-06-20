/*
** EPITECH PROJECT, 2022
** B-PSU-210-MPL-2-1-42sh-romain.very
** File description:
** exec_repeat
*/

#include "file.h"

int repeat_error(buff_t *buff)
{
    if (check_nb_args(buff->tab, 2) == 0) {
        printf("repeat: Too few arguments.\n");
        buff->value = 1;
        return 1;
    }
    return 0;
}

char **remake_tab(buff_t *buff)
{
    char **new_tab = NULL;
    int i = 2;
    int j = 0;

    for (; buff->tab[i]; i++);
    new_tab = malloc(sizeof(char *) * (i + 1));
    for (int i = 2; buff->tab[i]; i++, j++)
        new_tab[j] = buff->tab[i];
    new_tab[j] = NULL;
    return new_tab;
}

int exec_repeat(buff_t *buff)
{
    int repeat = 0;
    if (repeat_error(buff))
        return 1;
    for (int i = 0; buff->tab[1][i]; i++) {
        if (buff->tab[1][i] < '0' || buff->tab[1][i] > '9') {
            printf("repeat: Badly formed number.\n");
            buff->value = 1;
            return 1;
        }
    }
    repeat = atoi(buff->tab[1]);
    buff->tab = remake_tab(buff);
    for (int i = 0; i != repeat; i++)
        exec_pipes(buff, buff->cmd.fd);
}
