package com.fastcampus.ch2.entity;

import lombok.Data;

@Data
public class Board {
	private int idx; 		// ��ȣ
	private String title; 	// ����
	private String content; // ����
	private String writer; 	// �ۼ���
	private String indate; 	// �ۼ���
	private int count; 		// ��ȸ��
	
}
