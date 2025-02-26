package gugudan;

import java.util.ArrayList;
import java.util.Random;

// 데이터를 조작하는애 (CURD)
public class GugudanDAO {
	private int score;
	private int cnt;
	
	private ArrayList<GugudanVO> quiz;
	
	
	public ArrayList<GugudanVO> getQuiz() {
		return quiz;
	}
	
	public int getScore() {
		return score;
	}
	
	public int getCnt() {
		return cnt;
	}
	
	// 게임 생성 
	public void initGame() {
		Random rd = new Random();
		quiz = new ArrayList<GugudanVO>();
		for(int i = 0; i<5; i++) {
			quiz.add(new GugudanVO());
			quiz.get(i).setNum1(rd.nextInt(8)+2);
			quiz.get(i).setNum2(rd.nextInt(9)+1);
		}
		score = 0;
		cnt = 0;
	}
	// 정답인지 아닌지 판단애 
	public boolean checkAns(int ans) {
		boolean check = false;
		if(ans == quiz.get(cnt).getNum1()*quiz.get(cnt).getNum2()) {
			score+=20;
			check = true;
		}
		cnt++;
		return check;
	}
}
