package com.model;

import java.util.List;
import java.util.Map;

public interface TeamMapper {

	List<TeamDTO> list(Map map);

	int total(Map map);

	int create(TeamDTO dto);

	TeamDTO read(int teamno);

	boolean delete(int num);

	int update(TeamDTO dto);

}
