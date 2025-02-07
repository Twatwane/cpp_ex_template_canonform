/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   x.cpp                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ajosse <ajosse@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/23 01:14:25 by ajosse            #+#    #+#             */
/*   Updated: 2025/02/07 15:07:34 by ajosse           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/x.hpp"

//* DEFAULT CONSTRUCTOR
X::X()
{
	std::cout << "\033[1;32mX default constructor called\033[m" << std::endl;
	// init
}

//* COPY CONSTRUCTOR
X::X( const X& other )
{
	std::cout << "\033[1;32mX copy constructor called\033[m" << std::endl;
	*this = other;
}

//! DESTRUCTOR
X::~X()
{
	std::cout << "\033[1;31mX destructor called\033[m" << std::endl;
}

/// SUPPORT "=" OPERATOR
X& X::operator=( const X& other )
{
	std::cout << "\033[1;34mX '=' operator called\033[m" << std::endl;
	if (this != &other)
	{
		// copy
	}
	return *this;
}

/// GETTERS

/// SETTERS

//, METHODS

