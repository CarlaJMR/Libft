/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjoao-me <cjoao-me@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/28 11:08:05 by cjoao-me          #+#    #+#             */
/*   Updated: 2022/11/23 17:28:36 by cjoao-me         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void*))
{
	t_list	*flist;
	t_list	*temp;

	flist = 0;
	while (lst && f)
	{
		temp = ft_lstnew(f(lst->content));
		if (!temp)
		{
			ft_lstclear(&flist, del);
			return (0);
		}
		ft_lstadd_back(&flist, temp);
		lst = lst->next;
	}
	return (flist);
}
