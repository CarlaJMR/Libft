/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjoao-me <cjoao-me@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/28 11:08:05 by cjoao-me          #+#    #+#             */
/*   Updated: 2022/11/23 17:21:36 by cjoao-me         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*nod;

	nod = malloc (sizeof(t_list));
	if (!nod)
		return (0);
	nod->next = 0;
	nod->content = content;
	return (nod);
}
