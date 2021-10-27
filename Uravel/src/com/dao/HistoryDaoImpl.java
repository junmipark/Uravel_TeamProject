package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.HistoryDto;
import com.dto.TravelDto;

import static common.JDBCTemplateNOA.*;

public class HistoryDaoImpl implements HistoryDao {
	
	@Override
	public List<HistoryDto> selectAll(Connection con){ // history list
		PreparedStatement pstm = null;
		List<HistoryDto> res = new ArrayList<HistoryDto>();
		ResultSet rs = null;
		
		try {
			pstm = con.prepareStatement(selectAllSql);
			System.out.println("03.query 준비: "+selectAllSql);
			
			rs = pstm.executeQuery();
			System.out.println("04.query 실행 및 리턴");
			
			while(rs.next()) {
				// SELECT HISTORYNO, TRAVELNAME, URL_PIC1 FROM HISTORY ORDER BY HISTORYNO DESC
				HistoryDto tmp = new HistoryDto();
				tmp.setHistoryno(rs.getInt("historyno"));
				tmp.setTravelname(rs.getString("travelname"));
				tmp.setUrl_pic1(rs.getString("url_pic1"));
				
				res.add(tmp);
			}
			
		} catch (SQLException e) {
			System.out.println("3/4단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
		}
		
		return res;
		
	}
	
	@Override
	public HistoryDto selectOne(Connection con, int historyno) { // description
		PreparedStatement pstm = null;
		HistoryDto res = null;
		ResultSet rs = null;
		
		try {
			//SELECT TRAVELNAME, URL_PIC1, URL_PIC2, DESCRIPTION,SOURCE FROM HISTORY WHERE HISTORYNO=?
			pstm = con.prepareStatement(selectOneSql);
			pstm.setInt(1, historyno);
			System.out.println("03.query 준비: "+selectOneSql);
			System.out.println("historyno: "+historyno);
			
			rs = pstm.executeQuery();
			System.out.println("04.query 실행 및 리턴");
			
			while(rs.next()) {
				res = new HistoryDto();
				res.setHistoryno(rs.getInt("historyno"));
				res.setTravelname(rs.getString("travelname"));
				res.setUrl_pic1(rs.getString("url_pic1"));
				res.setUrl_pic2(rs.getString("url_pic2"));
				res.setDescription(rs.getString("description"));
				res.setSource(rs.getString("source"));
				
			}
			
		} catch (SQLException e) {
			System.out.println("3/4단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
		}
		
		return res;
	}
	
	@Override
	public boolean insert(Connection con, HistoryDto dto, TravelDto tdto) {
		
		PreparedStatement pstm2 = null;
		int res = 0;
		
		try {
			// INSERT INTO HISTORY(TRAVELNO,HISTORYNO,TRAVELNAME,URL_PIC1,URL_PIC2,DESCRIPTION,SOURCE) VALUES(?,HISTORYSEQ.NEXTVAL,?,?,?,?,?)
			
			int tmp = insertTravel(con, tdto);
			
			pstm2 = con.prepareStatement(insertHistorySql);
			pstm2.setInt(1, tmp);
			pstm2.setString(2, dto.getTravelname());
			pstm2.setString(3, dto.getUrl_pic1());
			pstm2.setString(4, dto.getUrl_pic2());
			pstm2.setString(5, dto.getDescription());
			pstm2.setString(6, dto.getSource());
			System.out.println("03.query 준비: "+insertHistorySql);
						
			res = pstm2.executeUpdate();
			System.out.println("04.query 실행 및 리턴");
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(pstm2);
		}
		
		return (res>0)? true:false;
	}
	
	@Override
	public int insertTravel(Connection con, TravelDto dto) {
		
		PreparedStatement pstm1 = null;
		ResultSet rs = null;
		int res = 0;
		
		try {
			//INSERT INTO TRAVEL(TRAVELNO,TRAVELNAME,LOCALCODE,THEMECODE,ADDRESS,DESCRIPTION,URL_PIC) VALUES(TRAVELSEQ.NEXTVAL,?,?,6,?,?,?)
			pstm1 = con.prepareStatement(insertTravelSql);
			System.out.println(dto.getTravelname());
			System.out.println(dto.getDescription());
			System.out.println(dto.getUrl_pic());
			
			System.out.println(dto.getLocalcode());
			System.out.println(dto.getAddress());
			
			pstm1.setString(1, dto.getTravelname());
			pstm1.setInt(2, dto.getLocalcode());
			
			pstm1.setString(3, dto.getAddress());
			pstm1.setString(4, dto.getDescription());
			pstm1.setString(5, dto.getUrl_pic());
			System.out.println("03.query 준비: "+insertTravelSql);
						
			res = pstm1.executeUpdate();
			rs = pstm1.getGeneratedKeys();
			
			if(rs.next()) {
				res = rs.getInt("TRAVELNO");
				System.out.println(res);
			}
			
			System.out.println("04.query 실행 및 리턴");
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm1);
		}
		
		return (res>0)? res:0;
	}
	
	@Override
	public boolean update(Connection con, HistoryDto dto) {
		PreparedStatement pstm = null;
		int res = 0;
		
		try {
			//UPDATE HISTORY SET TRAVELNAME=?, URL_PIC1=?, URL_PIC2=?, DESCRIPTION=?, SOURCE=? WHERE HISTORYNO=?
			pstm = con.prepareStatement(updateHistorySql);
			pstm.setString(1, dto.getTravelname());
			pstm.setString(2, dto.getUrl_pic1());
			pstm.setString(3, dto.getUrl_pic2());
			pstm.setString(4, dto.getDescription());
			pstm.setString(5, dto.getSource());
			pstm.setInt(6, dto.getHistoryno());
			System.out.println("03.query 준비: "+updateHistorySql);
			
			res = pstm.executeUpdate();
			System.out.println("04.query 실행 및 리턴");
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		} finally {
			close(pstm);
		}
		
		return (res>0)? true:false;
	}

	@Override
	public boolean delete(Connection con, int historyno) {
		PreparedStatement pstm = null;
int res=0;
		
		try {
			//DELETE FROM HISTORY WHERE HISTORYNO=?
			pstm = con.prepareStatement(deleteSql);
			pstm.setInt(1, historyno);
			System.out.println("03.query 준비: "+deleteSql);
			
			res = pstm.executeUpdate();
			System.out.println("04.query 실행 및 리턴");
			
		} catch (SQLException e) {
			System.out.println("3/4단계 오류");
			e.printStackTrace();
		} finally {
			close(pstm);
		}
		
		return (res>0)? true:false;
	}
	
	
	
	
}
