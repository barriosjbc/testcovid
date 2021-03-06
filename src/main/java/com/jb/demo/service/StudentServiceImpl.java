package com.jb.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jb.demo.dao.QuestionaryRepository;
import com.jb.demo.dao.ScoreRepository;
import com.jb.demo.dao.StudentRepository;
import com.jb.demo.entity.Student;
import com.jb.demo.entity.questions;

@Service

public class StudentServiceImpl implements StudentService {
	private StudentRepository studentRepository;
	
	
	@Autowired
	public  StudentServiceImpl(StudentRepository theStudentRepository) {
		studentRepository=theStudentRepository;
		
	}
	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Student findById(int theId) {
		Optional<Student> result = studentRepository.findById(theId);
		Student theStudent=null;
		if(result.isPresent()) {
			theStudent=result.get();
		}else {
			//we didnt find the employee
			return null;
		}
		
		return theStudent;
		
	}

}
