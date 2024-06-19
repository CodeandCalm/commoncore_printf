/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftprintf.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tstacul <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/24 13:51:29 by tstacul           #+#    #+#             */
/*   Updated: 2024/05/06 19:08:57 by tstacul          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#ifndef LIBFTPRINTF_H
# define LIBFTPRINTF_H

# include <unistd.h>
# include <stdarg.h>
# include <stddef.h>
# include <stdlib.h>

void			ft_putchar_len(char character, int *length);
void			ft_string(char *args, int *length);
void			ft_number(int number, int *length);
void			ft_hexadecimal(unsigned int x, int *length, char x_or_x);
void			ft_unsigned_int(unsigned int u, int *length);
void			ft_pointer(size_t pointer, int *length);
int				ft_printf(const char *string, ...);

#endif
