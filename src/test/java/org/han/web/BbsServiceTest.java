package org.han.web;

import java.util.List;

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
		vo.setTitle("명진아");
		vo.setCont("졸업시험 패스해서 좋냐?");
		vo.setUserid("han00");
		service.bbsCreate(vo);
	}
	
	@Test
	public void readTest(){
		vo = service.read("448");
		logger.info(vo);
	}
	
	@Test
	public void updateTest(){
		vo.setTitle("왜!!!");
		vo.setBno(451);
		service.update(vo);
	}
	
	@Test
	public void deleteTest(){
		service.delete("451");
	}
	
	@Test
	public void listTest(){
		List<BbsVO> list = service.list("1");
		logger.info(list);
		
	}
}