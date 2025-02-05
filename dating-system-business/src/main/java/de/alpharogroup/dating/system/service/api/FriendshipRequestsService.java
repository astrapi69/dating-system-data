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
package de.alpharogroup.dating.system.service.api;

import java.util.List;

import de.alpharogroup.dating.system.entities.FriendshipRequests;
import de.alpharogroup.dating.system.enums.FriendshipRequestsState;
import de.alpharogroup.db.service.api.BusinessService;
import de.alpharogroup.user.entities.Users;

/**
 * The Interface FriendshipRequestsService.
 */
public interface FriendshipRequestsService extends BusinessService<FriendshipRequests, Integer>
{

	/**
	 * Gets a FriendshipRequests object from the given parameters. If no result is found null will
	 * be returned.
	 * 
	 * @param requestor
	 *            the requestor
	 * @param requestedUser
	 *            the requested user
	 * @return the friendship requests
	 */
	FriendshipRequests find(Users requestor, Users requestedUser);

	/**
	 * Gets a FriendshipRequests object from the given parameters that can be null if they shell be
	 * ignored in the query. If no result is found null will be returned.
	 * 
	 * @param requestor
	 *            the requestor
	 * @param requestedUser
	 *            the requested user
	 * @param state
	 *            the state
	 * @return the friendship requests
	 */
	FriendshipRequests find(Users requestor, Users requestedUser, FriendshipRequestsState state);

	/**
	 * Gets a List from FriendshipRequests with the given parameters that can be null if they shell
	 * be ignored in the query.
	 * 
	 * @param requestor
	 *            the requestor
	 * @param requestedUser
	 *            the requested user
	 * @param state
	 *            the state
	 * @return the list
	 */
	List<FriendshipRequests> findAll(Users requestor, Users requestedUser,
		FriendshipRequestsState state);
}