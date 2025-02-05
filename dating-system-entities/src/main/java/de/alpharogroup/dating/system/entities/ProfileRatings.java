/**
 * The MIT License
 *
 * Copyright (C) 2015 Asterios Raptis
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *  *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *  *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
package de.alpharogroup.dating.system.entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Parameter;
import org.hibernate.annotations.TypeDef;
import org.hibernate.annotations.TypeDefs;

import de.alpharogroup.rating.system.entities.Ratings;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * The Class ProfileRatings extends the Ratings class that contains the general data for rating
 * entities.
 */
@Entity
@Table(name = "profile_ratings")
@TypeDefs({
		@TypeDef(name = "ratingVisibilityConverter", typeClass = de.alpharogroup.db.postgres.usertype.PGEnumUserType.class, parameters = {
				@Parameter(name = "enumClassName", value = "de.alpharogroup.rating.system.enums.RatingVisibility") }) })
@Getter
@Setter
@NoArgsConstructor
public class ProfileRatings extends Ratings
{

	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 5054268089145453933L;
	/** The rated profile. */
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "rated_profile")
	private UserProfiles ratedProfile;

}