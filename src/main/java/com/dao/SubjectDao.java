package com.dao;

import java.nio.channels.SelectableChannel;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bean.SubjectBean;

@Repository
public class SubjectDao {
	
	@Autowired
	JdbcTemplate stmt;
	public int insertSubject(SubjectBean subject) {
		
		stmt.update("insert into subject (subjectName,isActive) values(?,?)",subject.getSubjectName(),subject.getIsActive());
		return 1;
		
	}
	public List<SubjectBean> getAllSubject() {
		
		List<SubjectBean> subjects=stmt.query("select * from subject where isActive=true", new BeanPropertyRowMapper<SubjectBean>(SubjectBean.class));
		
		return subjects;
	}
	public void deleteSubject(int subjectId) {
		stmt.update("delete from subject where subjectId="+subjectId);
		
	}
	
	public void updateSubject(int subjectId) {
		// TODO Auto-generated method stub
		
	}
	public SubjectBean getDataBySubjectId(int subjectId) {
		SubjectBean subject=null;
		try {
			
			subject=stmt.queryForObject("select * from subject where subjectId=?",new Object[] {subjectId},new BeanPropertyRowMapper<SubjectBean>(SubjectBean.class));
			return subject;
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	public void updateSubject(SubjectBean subject) {
		 stmt.update("update subject set subjectName=? ,isActive=? where subjectId=?",subject.getSubjectName(),subject.getIsActive(),subject.getSubjectId());
		
	}

}
