package equ.cjc.main.studentrepository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import equ.cjc.main.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Integer>{

	public List<Student> findAllByBatchNumber(String batchNumber);

	
}
