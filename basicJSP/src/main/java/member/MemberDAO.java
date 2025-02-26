package member;

import java.util.ArrayList;

public class MemberDAO {
	
	private ArrayList<Member> list;
	private int log = -1;
	public ArrayList<Member> getList() {
		return list;
	}
	public void setList(ArrayList<Member> list) {
		this.list = list;
	}
	public int getLog() {
		return log;
	}
	public void setLog(int log) {
		this.log = log;
	}
	
	public MemberDAO() {
		list = new ArrayList<Member>();
		list.add(new Member("admin","admin","admin",true));
		addDummyUser();
	}
	
	private void addDummyUser() {
		Member m2 = new Member("qwer","1111","홍길동",true);
		Member m3 = new Member("aaaa","2222","개똥이",true);
		Member m4 = new Member("abcd","3333","홍길순",false);
		Member m5 = new Member("test","4444","아이유",false);
		
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
		System.out.println("[데이터 로드 완료]");
	}
	
	public int getListSize() {
		return list.size();
	}
	
	public Member getOneMember(int idx) {
		return list.get(idx);
	}
	
	public String getListAsTableData() {
		String data = "";
		
		
		for(int i =1 ; i < list.size();i+=1) {
			Member m = list.get(i);
			data+= String.format("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
					m.getId(), m.getPw(), m.getName(), m.isGender()?"남성":"여성");
			
			data+="<td><button onClick='location.href=\""+"adminDeletePro.jsp?idx="+i+"\"' > 삭제 </button></td> </tr>";
			
		}
		
		return data;
	}
	
	public boolean isLogin(String id, String pw) {
		for(int i = 0; i<list.size();i++) {
			
			if(list.get(i).getId().equals(id)&&list.get(i).getPw().equals(pw)) {
				log = i;
				return true;
			}
		}
		return false;
	}
	
	public void logOut() {
		System.out.println("test");
		log = -1;
	}
	
	public boolean isJoin(String id, String pw, String name, boolean sex) {
		for(Member m : list) {
			if(m.getId().equals(id)) {
				return false;
			}
		}
		insertMember(id,pw,name,sex);
		return true;
	}
	
	private void insertMember(String id, String pw, String name, boolean sex) {
		list.add(new Member(id, pw, name, sex));
	}
	
	public boolean removeAMember(int idx) {
		if(idx < list.size()) {
			list.remove(idx);
			return true;
		}
		
		return false;
	}
	
	public boolean isCheckPw(String pw) {
		if(pw.equals(list.get(log).getPw())) {
			return true;
		}
		
		return false;
	}
	
	public void updateAMember(String name, String gender) {
		boolean gen = gender.equals("true")? true:false;
		list.get(log).setName(name);
		list.get(log).setGender(gen);
	}
}
