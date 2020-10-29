package com.biz.ems.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.biz.ems.model.EmsVO;



public interface EmsDao {
	@Select("SELECT * FROM tbl_ems ORDER BY s_date DESC, s_time DESC") // 최근에 보낸 메일이 가장 위로 올라오도록
	public List<EmsVO> selectAll();
	

	
	public int insert(EmsVO emsVO);

	@Select("SELECT * FROM tbl_ems WHERE id = #{id}")
	public EmsVO findById(Long id);

	@Delete("DELETE FROM tbl_ems WHERE id= #{id}")
	public int delete(Long id);
	

	public int update(EmsVO emsVO);
	
}
