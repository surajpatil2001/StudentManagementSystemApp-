package equ.cjc.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import equ.cjc.main.model.Student;
import equ.cjc.main.servicei.StudentServiceI;

@Controller
public class AdminController {

	@Autowired
	StudentServiceI ss;
	
	@RequestMapping("/")
	public String preLogin()
	{
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("username")String username,@RequestParam("password")String password,Model m)
	{
		if("Admin".equalsIgnoreCase(username)&& "Admin".equalsIgnoreCase(password))
		{
			List<Student>list=ss.getAllStudents();
			m.addAttribute("data",list);
			return "adminscreen";	
		}
		else
		{
			m.addAttribute("login_fail","Enter valid login details.");
			return "login";
		}
		
		
	}
	
	@RequestMapping("/enrollstudent")
	public String savaStudent(@ModelAttribute Student s,Model m)
	{
		ss.saveStudentDetails(s);
		List<Student>list1=ss.getAllStudents();
		m.addAttribute("data" ,list1);
		return "adminscreen";
	}

@RequestMapping("/view")
public String getBatchStudent(@ModelAttribute Student s,Model m)
{
	List<Student> s1=ss.getAllStudents();
	m.addAttribute("data",s1);
	return "view";
	
}

@RequestMapping("/search")
public String getBacthStudent(@RequestParam ("batchNumber")String batchNumber,Model m)
{
	List<Student>result=ss.searchStudentsByBatch(batchNumber);
	if(result.size()>0)
	{
		m.addAttribute("data", result);
	}
	else
	{
		List<Student> s=ss.getAllStudents();
		m.addAttribute("data",s);	
		m.addAttribute("message", "No records are available for the batch ' "+batchNumber+"'...!");
	}
	return "view";
}

@RequestMapping("/feespay")
public String selectData(@RequestParam int rollno,Model m)
{
Student s=ss.getSingleStudent(rollno);
m.addAttribute("st",s);
return "feespay";
}

@RequestMapping("/payfees")
public String payFees(@RequestParam int rollno,@RequestParam float ammount, Model m)
{
ss.updateStudentFees(rollno,ammount);
List<Student>s=ss.getAllStudents();
m.addAttribute("data", s);
return "adminscreen";
}

@RequestMapping("/remove")
public String removeData(@RequestParam ("rollno")int rn,Model m)
{
ss.deleteStudent(rn);
List<Student>list=ss.getAllStudents();
m.addAttribute("data", list);
return "view";
}

@RequestMapping("/shiftbatch")
public String selectBatch(@RequestParam int rollno,Model m)
{
Student s=ss.getSingleStudent(rollno);
m.addAttribute("data",s);
return "shiftbatch";
}

@RequestMapping("/updateData")
public String updateData(@ModelAttribute Student s,Model m)
{
	System.out.println("ddd");
	ss.updateData(s);
	List<Student> list=ss.getAllStudents();
	m.addAttribute("data",list);
	return "view";
}
}
