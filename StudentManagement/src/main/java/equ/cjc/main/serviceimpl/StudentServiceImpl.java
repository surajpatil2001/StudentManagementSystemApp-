package equ.cjc.main.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import equ.cjc.main.model.Student;
import equ.cjc.main.servicei.StudentServiceI;
import equ.cjc.main.studentrepository.StudentRepository;
@Service
public class StudentServiceImpl implements StudentServiceI {

	@Autowired
	StudentRepository sr;
	
	@Override
	public void saveStudentDetails(Student s) {
	sr.save(s);	
	}

	
	@Override
	public List<Student>getAllStudents()
	{
		return (List<Student>) sr.findAll();	
	}


	@Override
	public List<Student> searchStudentsByBatch(String batchNumber) {
		
		List<Student>batchStudents=sr.findAllByBatchNumber(batchNumber);
		return batchStudents;
	}


	@Override
	public Student getSingleStudent(int rollno) {
		Optional<Student>stu=sr.findById(rollno);
		return stu.get();
	}


	@Override
	public void updateStudentFees(int rollno, float ammount) {
	Optional<Student>stu=sr.findById(rollno);
	Student st=stu.get();
	st.setFeesPaid(st.getFeesPaid()+ammount);
		sr.save(st);
	}


	@Override
	public void deleteStudent(int rn) {
		sr.deleteById(rn);
		
	}


	@Override
	public Student editData(int rn) {
		return ((StudentServiceI) sr).editData(rn);
	}


	@Override
	public void updateData(Student s) {
		
		Student stu  =  sr.findById(s.getRollno()).get();
		if(s.getBatchNumber()!=null) {
			stu.setBatchNumber(s.getBatchNumber());
		}
		
		if(s.getBatchMode()!=null) {
			stu.setBatchMode(s.getBatchMode());
		}
		
		if(s.getStudentName()!=null) {
			stu.setStudentName(s.getStudentName());
		}
		
		if(s.getStudentCourse()!=null) {
			stu.setStudentCourse(s.getStudentCourse());
		}
         sr.save(stu);
	}
}
