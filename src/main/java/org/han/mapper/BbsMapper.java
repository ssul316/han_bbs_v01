package org.han.mapper;

import org.apache.ibatis.annotations.Insert;
import org.han.vo.BbsVO;

public interface BbsMapper {
	
	@Insert("insert into tbl_bbs (bno, title, userid, cont)"+
			" values(seq_bbs.nextval, #{title}, #{userid}, #{cont})")
	

	public void create(BbsVO vo);

}
