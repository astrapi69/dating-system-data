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
package de.alpharogroup.dating.system.daos;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.AssertJUnit;
import org.testng.annotations.Test;

import de.alpharogroup.dating.system.entities.ProfileRatings;
import de.alpharogroup.dating.system.service.api.ProfileRatingsService;

@ContextConfiguration(locations = "classpath:test-applicationContext.xml")
public class ProfileRatingsDaoTest extends AbstractTestNGSpringContextTests
{

	@Autowired
	private ProfileRatingsService profileRatingsService;

	@Test(enabled = false)
	public void getAllProfileRatings()
	{
		initProfileRatings();
		final List<ProfileRatings> list = profileRatingsService.findAll();
		AssertJUnit.assertEquals(2, list.size());
	}

	protected void initProfileRatings()
	{
		ProfileRatings profileRatings = new ProfileRatings();
		// TODO init model class
		profileRatingsService.merge(profileRatings);

		profileRatings = new ProfileRatings();
		// TODO init model class
		profileRatingsService.merge(profileRatings);

	}

}
