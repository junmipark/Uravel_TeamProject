package com.travel.biz;

import java.util.List;

import com.travel.dao.TravelDwDao;
import com.travel.dto.TravelDetailDto;
import com.travel.dto.TravelListDto;

public class TravelBiz {
	
	TravelDwDao travelDao = new TravelDwDao();
	
	// 지역구명, 여행지 목록 호출
	public String selectLocalName(int localcode) {
		return travelDao.selectLocalName(localcode);
	}

	public List<TravelListDto> selectTravelList(int listcode) {
		return travelDao.selectTravelList(listcode);
	}

	public TravelDetailDto selectTravelDetail(int travelno) {
		return travelDao.selectTravelDetail(travelno);
	}

	public List<TravelListDto> selectThemeList(int themecode) {
		return travelDao.selectThemeName(themecode);
	}
}
