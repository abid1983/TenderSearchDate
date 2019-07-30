package com.abid.helper;

import org.springframework.stereotype.Component;

import com.abid.entity.Tender;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class TenderHelper {

	public Tender create() {
		return new Tender();
	}
	
}
