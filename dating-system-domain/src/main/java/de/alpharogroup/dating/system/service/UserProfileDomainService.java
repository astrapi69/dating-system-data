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
package de.alpharogroup.dating.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import de.alpharogroup.dating.system.daos.UserProfilesDao;
import de.alpharogroup.dating.system.domain.UserProfile;
import de.alpharogroup.dating.system.entities.UserProfiles;
import de.alpharogroup.dating.system.mapper.UserProfilesMapper;
import de.alpharogroup.dating.system.service.api.UserProfileService;
import de.alpharogroup.service.domain.AbstractDomainService;

@Transactional
@Service("userProfileDomainService")
public class UserProfileDomainService
	extends
		AbstractDomainService<Integer, UserProfile, UserProfiles, UserProfilesDao, UserProfilesMapper>
	implements
		UserProfileService
{
	/**
	 * Sets the specific {@link UserProfilesMapper}.
	 *
	 * @param mapper
	 *            the new {@link UserProfilesMapper}.
	 */
	@Autowired
	public void setUserProfilesMapper(UserProfilesMapper mapper)
	{
		setMapper(mapper);
	}

}
