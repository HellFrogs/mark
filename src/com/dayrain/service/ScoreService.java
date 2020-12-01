package com.dayrain.service;

import java.util.Date;
import java.util.List;

import com.dayrain.Dao.ScoreDao;
import com.dayrain.entity.Score;
import com.dayrain.entity.dto.ScoreDto;

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
		
	}
}
