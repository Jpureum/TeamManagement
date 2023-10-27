package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.model.TeamDTO;
import com.model.TeamMapper;
import com.utility.Utility;

@Controller
public class TeamController {
	
	@Autowired
	private TeamMapper mapper;
	
	@GetMapping("/")
	public String home() {
		
		
		return "/home";
	}
	
	@GetMapping("/team/create")
	public String create() {
		
		
		return "/create";
	}
	
	@PostMapping("/team/create")
	public String create(TeamDTO dto) {
		int cnt = mapper.create(dto);
		
		if(cnt > 0) {
			return "redirect:/team/list";
		} else {
			return "error";
		}
	}
	
	@GetMapping("/team/list")
	public String list(HttpServletRequest request, Model model) {
		//검색 관련
		String col = Utility.chechNull(request.getParameter("col"));
		String word = Utility.chechNull(request.getParameter("word"));
		
		if(col.equals("total")) word = "";
		
		//페이징 관련
		int nowPage = 1; //처음 페이지
		if(request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		//한 페이지당 보여줄 레코드 수
		int eno = 5;
		//데이터베이스에서 시작 레코드
		int sno = (nowPage-1) * eno;
		
		//데이터베이스에서 목록 가져오기
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<TeamDTO> list = mapper.list(map);
		
		int total = mapper.total(map);
		
		String url = "list";
		
		String paging = Utility.paging(total, nowPage, eno, col, word, url);
		
		model.addAttribute("col", col);
		model.addAttribute("word", word);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		return "/list";
	}
	
	@GetMapping("/team/read")
	public String read(int teamno, Model model) {
		
		//조회
		TeamDTO dto = mapper.read(teamno);
		
		model.addAttribute("dto", dto);
		
		return "/read";
	}
	
	@GetMapping("/team/delete/{num}")
	public String delete(@PathVariable("num") int num) {
		boolean flag = false;

		try {

			flag = mapper.delete(num);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (flag) {
			return "redirect:/team/list";
		} else {
			return "error";
		}
	}
	
	@PostMapping("/team/update")
	public String update(TeamDTO dto) {
		
		int cnt = 0;
		cnt = mapper.update(dto);
		
		if(cnt==0) {
			return "error";
		}else {
		
			return "redirect:/team/list";
		}
	}
	
	@GetMapping("/team/update")
	public String update(int teamno,Model model) {
		
		
		model.addAttribute("dto", mapper.read(teamno));
		
		return "/update";
	}

}
