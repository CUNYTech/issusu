package com.fastsusu.service;

import com.fastsusu.model.ChargeRequest;
import com.stripe.exception.APIConnectionException;
import com.stripe.exception.APIException;
import com.stripe.exception.AuthenticationException;
import com.stripe.exception.CardException;
import com.stripe.exception.InvalidRequestException;
import com.stripe.model.Charge;

public interface StripeService {

	Charge charge(ChargeRequest chargeRequest) throws AuthenticationException, InvalidRequestException,
			APIConnectionException, CardException, APIException;
}
