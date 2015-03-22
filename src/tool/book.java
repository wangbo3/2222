package tool;

public class book {
		private int id;
		private String title;
		private String body;
		private String brief;
		boolean isdel;
		public book(int id,String title,String body,String brief,boolean isdel){
			super();
			this.id  =id;
			this.brief=brief;
			this.title=title;
			this.body=body;
			this.isdel=isdel;
			
		}
		public book(){
			
		}
		public String getBrief() {
			return brief;
		}
		public void setBrief(String brief) {
			this.brief = brief;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getBody() {
			return body;
		}
		public void setBody(String body) {
			this.body = body;
		}
		public boolean  isIsdel() {
			return isdel;
		}
		public void setIsdel(boolean isdel) {
			this.isdel = isdel;
		}
		
}
