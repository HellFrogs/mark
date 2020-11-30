package com.dayrain.service;

import java.util.List;

import com.dayrain.Dao.StudentDao;
import com.dayrain.entity.Student;

public class StudentService {
	
	/**
	 * 获取学生列表
	 * @return 所有的学生信息
	 */
	public List<Student> getStudentList() {
		StudentDao studentDao = new StudentDao();
		List<Student> studentList = studentDao.getStudentList();
		return studentList;
	}
	
	/**
	 * 通过学号获取学生
	 * @param studentNo 学生
	 * @return
	 */
	public Student getStudentByNo(String studentNo) {
		StudentDao studentDao = new StudentDao();
		Student student = studentDao.getStudentByNo(studentNo);
		return student;
	}
	
	/*
	 *添加学生
	 */
	public Student addStudent(Student student) {
		StudentDao studentDao = new StudentDao();
		studentDao.addStudent(student);
		
		return this.getStudentByNo(student.getStudentNo());
	}
	
	/**
	 * 删除学生
	 * @return 
	 */
	public void deleteStudent(String studentNo) {
		StudentDao studentDao = new StudentDao();
		studentDao.deleteStudent(studentNo);
	}
	
	public void updateStudent(Student student) {
		StudentDao studentDao = new StudentDao();
		studentDao.updateStudent(student);
	}
	
	
}
