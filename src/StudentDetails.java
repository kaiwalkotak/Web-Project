interface Exam {
 
 void total();
}
 
class Student {
 
 String name;
 int roll_no, Marks1, Marks2,Marks3,Marks4,Marks5,Marks6;
 Student(String n, int rn, int m1, int m2,int m3,int m4,int m5,int m6) {
  
  name = n;
  roll_no = rn;
  Marks1 = m1;
  Marks2 = m2;
  Marks3 = m3;
  Marks4 = m4;
  Marks5 = m5;
  Marks6 = m6;
  
 }
 
 void show() {
  
  System.out.println("Student Name : "+name);
  System.out.println("Roll no : "+roll_no);
  System.out.println("Marks1 : "+Marks1);
  System.out.println("Marks2 : "+Marks2);
  System.out.println("Marks3 : "+Marks3);
  System.out.println("Marks4 : "+Marks4);
  System.out.println("Marks5 : "+Marks5);
  System.out.println("Marks6 : "+Marks6);


 }
}
 
class Result extends Student implements Exam {
 
 float per;
 Result(String n,int rn,int m1,int m2,int m3,int m4,int m5,int m6) {
  
  super(n,rn,m1,m2,m3,m4,m5,m6);
 }
 
 public void total() {
  
	 int tot = Marks1 + Marks2 +Marks3 +Marks4+Marks5+Marks6;
  per = tot;
 }
 
 void display() {
  
  show();
  System.out.println("Total = "+per);
 } 
 
}
 
public class StudentDetails {
 
 public static void main (String[] args) {
  
  Result r = new Result("Achi",11,75,95,99,12,45, 0);
  r.total();
  r.display();
 }
}