/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequ.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: muelfaha <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/13 02:53:21 by muelfaha          #+#    #+#             */
/*   Updated: 2019/01/03 19:48:21 by muelfaha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_strequ(char const *s1, char const *s2)
{
	int		x;

	if (s1 && s2)
	{
		x = 0;
		while (s1[x] != '\0')
		{
			x++;
			if (s1[x] != s2[x])
				return (0);
		}
		return (1);
	}
	return (0);
}
