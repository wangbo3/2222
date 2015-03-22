package tool;

import org.omg.CORBA.PRIVATE_MEMBER;

public class word {
	private int id;
	private  String name;
	private  String age;
	private  boolean sex;
	private String word;
	public word(){}
	public word(int id ,String name,String age,boolean sex,String word){
		super();
		id = this.id;
		name =this.name;
		age = this.age;
		sex = this.sex;
		word = this.word;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public boolean isSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	
}
