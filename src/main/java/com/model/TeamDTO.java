package com.model;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class TeamDTO {

	private int teamno;		
	private String tname;
	private String skills;
	private String phone;
	private String address;
	private String zipcode;
	private String gender;
	private String rdate;
}