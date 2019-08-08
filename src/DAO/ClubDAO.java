package dao;

import java.util.List;

import vo.ClubVO;
import vo.ScheduleVO;

public interface ClubDAO {
	public void write(ClubVO vo );
	public void writeSchedule(List<ScheduleVO> schedules);
	
}
