/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   manage_percent.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gavizet <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/22 13:03:49 by gavizet           #+#    #+#             */
/*   Updated: 2016/12/22 21:54:01 by gavizet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int		apply_flag_percent(t_format *fmt, char **str)
{
	int		ret_val;

	ret_val = 0;
	if (fmt->flags.minus == 1 && fmt->flags.zero == 1)
		fmt->flags.zero = 0;
	fmt->precision = -1;
	fmt->width--;
	if (fmt->flags.minus == 0)
		ret_val += aff_blank(fmt);
	ret_val += write(1, *str, 1);
	if (fmt->flags.minus == 1)
		ret_val += aff_blank(fmt);
	return (ret_val);
}
