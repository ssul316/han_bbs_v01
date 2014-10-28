package org.han.web;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.han.service.BbsService;
import org.han.vo.BbsVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/**/*-context.xml" })
public class BbsServiceTest {
	
	static Logger logger = Logger.getLogger(BbsServiceTest.class);
	
	@Inject
	BbsVO vo;
	
	@Inject
	BbsService service;
	
	@Test
	public void Createtest() {
		vo.setTitle("¾ß!!");
		vo.setCont("Èûµé¾î...");
		vo.setUserid("han02");
		service.bbsCreate(vo);
	}

}
