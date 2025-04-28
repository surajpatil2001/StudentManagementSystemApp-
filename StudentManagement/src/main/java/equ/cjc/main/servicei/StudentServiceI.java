package equ.cjc.main.servicei;

import java.util.List;
import equ.cjc.main.model.Student;

public interface StudentServiceI {
	
	public void saveStudentDetails(Student s);

	public List<Student> getAllStudents();

	public List<Student> searchStudentsByBatch(String batchNumber);

	public Student getSingleStudent(int rollno);

	public void updateStudentFees(int rollno, float ammount);

	public void deleteStudent(int rn);

	public Student editData(int rn);

	public void updateData(Student s);
		
	}

