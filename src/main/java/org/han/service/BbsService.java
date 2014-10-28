package org.han.service;

import javax.inject.Inject;

import org.han.mapper.BbsMapper;
import org.han.vo.BbsVO;
import org.springframework.stereotype.Service;


@Service
public class BbsService {
	
	@Inject
	BbsMapper mapper;
	
	public void bbsCreate(BbsVO vo){
		mapper.create(vo);
	}

}
