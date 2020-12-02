package com.dayrain.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dayrain.Dao.ScoreDao;
import com.dayrain.entity.Course;
import com.dayrain.entity.Score;
import com.dayrain.entity.Teacher;
import com.dayrain.entity.dto.ScoreDto;
import com.dayrain.entity.dto.StudentScoreDto;

public class ScoreService {

	public List<ScoreDto> getScoreList() {
		ScoreDao scoreDao = new ScoreDao();
		return scoreDao.getScoreList();
	}
	
	public void updateScore(Score score) {
		ScoreDao scoreDao = new ScoreDao();
		scoreDao.updateScore(score);
	}
	
	public void deleteScore(int id) {
		ScoreDao scoreDao = new ScoreDao();
	    scoreDao.deleteScore(id);
	}
	
	public Score getScoreByStudentNoAndCourseNo(String studenNo, String courseNo) {
		ScoreDao scoreDao = new ScoreDao();
		return scoreDao.getScoreByStudentNoAndCourseNo(studenNo, courseNo);
	}

	public void addScore(Score scoreObj) {
	
		
		scoreObj.setCreateTime(new Date());
		scoreObj.setUpdateTime(new Date());
		ScoreDao scoreDao = new ScoreDao();
		Score scoreRes = scoreDao.getScoreByStudentNoAndCourseNo(scoreObj.getStudentNo(), scoreObj.getCourseNo());
		if(scoreRes == null) {
			scoreDao.addScore(scoreObj);
		}
		
		//选课人数+1
		CourseService courseService = new CourseService();
		courseService.plusStudentNum(scoreObj.getCourseNo());
		
	}

	public List<ScoreDto> getTopScoreList(int top) {
		ScoreDao scoreDao = new ScoreDao();
		return scoreDao.getTopScoreList(top);
	}

	public List<StudentScoreDto> getScoreListByStudentNo(String studentNo) {
		ScoreDao scoreDao = new ScoreDao();
		List<ScoreDto> scoreDtos = scoreDao.getScoreListByStudentNo(studentNo);
		List<StudentScoreDto> studentScores= new ArrayList<StudentScoreDto>();
		for(ScoreDto scoreDto : scoreDtos) {
			StudentScoreDto studentScoreDto= new StudentScoreDto();
			CourseService courseService = new CourseService();
			TeacherService teacherService = new TeacherService();
			Course course = courseService.getCourseByNo(scoreDto.getCourseNo());
			
			Teacher teacher= teacherService.getTeacherByCourseNo(course.getCourseNo());
			
			studentScoreDto.setCourseNo(scoreDto.getCourseNo());
			studentScoreDto.setCourseName(scoreDto.getCourseName());
			studentScoreDto.setId(scoreDto.getId());
			studentScoreDto.setScore(scoreDto.getScore());
			studentScoreDto.setStudentName(scoreDto.getStudentName());
			studentScoreDto.setStudentNo(studentNo);
			studentScoreDto.setTeacherName(teacher.getTeacherName());
			studentScoreDto.setRank(scoreDao.getBeforeScoreNum(scoreDto.getCourseNo(), scoreDto.getScore()) + 1);
			studentScoreDto.setStudentNum(course.getStudentNum());
			studentScoreDto.setCreateTime(scoreDto.getCreateTime());
			studentScoreDto.setUpdateTime(scoreDto.getUpdateTime());
			
			studentScores.add(studentScoreDto);
			
		}
		return studentScores;
	}
}
