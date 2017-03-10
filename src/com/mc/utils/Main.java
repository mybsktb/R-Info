package com.mc.utils;

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

/**
 * 在一个10*10的棋盘上，每个格子有一个分数值（非负整数）。
 * 一个棋子从棋盘上的某一个起始位置移动到某一个终止位置。棋子每次在棋盘上可以朝上下左右4个方向移动，
 * 一共最多可以移动n步。每移动到一个格子上，则获得格子上相应的分数。初始位置的分数会自动获得。
 * 请问，棋子如何移动，才能获得最多分数。
 */
public class Main {

	/** 请完成下面这个函数，实现题目要求的功能 **/
	/** 当然，你也可以不按照这个模板来作答，完全按照自己的想法来 ^-^ **/

	static int FindPath(int num, int i0, int j0, int in, int jn, int step, int[][] data) {
		return 0;
	}

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int res;

		int _num;
		_num = Integer.parseInt(in.nextLine().trim());

		int _i0;
		_i0 = Integer.parseInt(in.nextLine().trim());

		int _j0;
		_j0 = Integer.parseInt(in.nextLine().trim());

		int _in;
		_in = Integer.parseInt(in.nextLine().trim());

		int _jn;
		_jn = Integer.parseInt(in.nextLine().trim());

		int _step;
		_step = Integer.parseInt(in.nextLine().trim());

		int _data_rows = 0;
		int _data_cols = 0;
		_data_rows = Integer.parseInt(in.nextLine().trim());
		_data_cols = Integer.parseInt(in.nextLine().trim());

		int[][] _data = new int[_data_rows][_data_cols];
		for (int _data_i = 0; _data_i < _data_rows; _data_i++) {
			for (int _data_j = 0; _data_j < _data_cols; _data_j++) {
				_data[_data_i][_data_j] = in.nextInt();

			}
		}

		if (in.hasNextLine()) {
			in.nextLine();
		}
		res = FindPath(_num, _i0, _j0, _in, _jn, _step, _data);
		System.out.println(String.valueOf(res));

	}
}