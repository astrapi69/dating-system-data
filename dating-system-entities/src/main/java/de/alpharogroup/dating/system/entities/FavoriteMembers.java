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

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import de.alpharogroup.db.entity.BaseEntity;
import de.alpharogroup.user.entities.Users;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Object mapping for hibernate-handled table: favorite_members author: auto-generated
 */
@Entity
@Table(name = "favorite_members")
@Getter
@Setter
@NoArgsConstructor
public class FavoriteMembers extends BaseEntity<Integer> implements Cloneable
{
	/**
	 * The Constant serialVersionUID.
	 */
	private static final long serialVersionUID = 1335157141885208007L;

	/** Field mapping */
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "owner_id", nullable = true, referencedColumnName = "id", foreignKey = @ForeignKey(name = "FK_FAVORITE_MEMBERS_OWNER_ID"))
	private Users owner;

	/** The reference to the user profile for this notice. */
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "favorite_id", nullable = true, referencedColumnName = "id", foreignKey = @ForeignKey(name = "FK_FAVORITE_MEMBERS_FAVORITE_ID"))
	private UserProfiles favorite;

}