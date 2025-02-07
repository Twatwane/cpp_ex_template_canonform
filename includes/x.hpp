/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   x.hpp                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ajosse <ajosse@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/23 01:02:36 by ajosse            #+#    #+#             */
/*   Updated: 2025/02/07 15:07:39 by ajosse           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef X_HPP
# define X_HPP

# include <iostream>

class X
{
	protected:

		//

	private:

		//

	public:

		//* DEFAULT CONSTRUCTOR
		X();

		//* COPY CONSTRUCTOR
		X( const X& other );

		//! DESTRUCTOR
		virtual ~X();

		/// SUPPORT "=" OPERATOR
		virtual X& operator=( const X& other );

		/// GETTERS

		/// SETTERS

		//, METHODS
		
};

#endif
