package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.SubjectBean;
import com.dao.SubjectDao;

@Controller
public class SubjectController {
	
	@Autowired
	SubjectDao subjectDao;
	
	@GetMapping("/newsubject")
	public String newSubject(Model model) {
		
		model.addAttribute("subject",new SubjectBean());
		return "NewSubject";
		
	}

	@PostMapping("/savesubject")
	public String saveSubject(SubjectBean subject,Model model) {
		subjectDao.insertSubject(subject);
		return "redirect:/listsubject";
	}
	
	@GetMapping("/listsubject")
	public String listSubject(Model model) {
		
		List<SubjectBean> subjects=subjectDao.getAllSubject();
		model.addAttribute("subjects",subjects);
		return "ListSubject";
	}
	
	@GetMapping("/deletesubject")
	public String deleteSubject(@RequestParam("subjectId") int subjectId) {
		
		subjectDao.deleteSubject(subjectId);
		return "redirect:/listsubject";
	}
	
	@GetMapping("/editsubject/{subjectId}")
	public String editSubject(@PathVariable("subjectId") int subjectId,Model model) {
		
		SubjectBean subject=subjectDao.getDataBySubjectId(subjectId);
		model.addAttribute("subject",subject);
		return "EditSubject";
	}
	
	@PostMapping("/updatesubject")
	public String updateSubject(SubjectBean subject,Model model) {
		subjectDao.updateSubject(subject);
		return "redirect:/listsubject";
	}
}
